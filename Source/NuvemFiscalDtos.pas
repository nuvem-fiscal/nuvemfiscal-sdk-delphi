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
    Flogradouro: string;
    FlogradouroHasValue: Boolean;
    Fnumero: string;
    FnumeroHasValue: Boolean;
    Fcomplemento: string;
    FcomplementoHasValue: Boolean;
    Fbairro: string;
    FbairroHasValue: Boolean;
    Fcodigo_municipio: string;
    Fcodigo_municipioHasValue: Boolean;
    Fcidade: string;
    FcidadeHasValue: Boolean;
    Fuf: string;
    FufHasValue: Boolean;
    Fcodigo_pais: string;
    Fcodigo_paisHasValue: Boolean;
    Fpais: string;
    FpaisHasValue: Boolean;
    Fcep: string;
    FcepHasValue: Boolean;
    procedure Setlogradouro(const Value: string);
    procedure Setnumero(const Value: string);
    procedure Setcomplemento(const Value: string);
    procedure Setbairro(const Value: string);
    procedure Setcodigo_municipio(const Value: string);
    procedure Setcidade(const Value: string);
    procedure Setuf(const Value: string);
    procedure Setcodigo_pais(const Value: string);
    procedure Setpais(const Value: string);
    procedure Setcep(const Value: string);
  public
    property logradouro: string read Flogradouro write Setlogradouro;
    property logradouroHasValue: Boolean read FlogradouroHasValue write FlogradouroHasValue;
    property numero: string read Fnumero write Setnumero;
    property numeroHasValue: Boolean read FnumeroHasValue write FnumeroHasValue;
    property complemento: string read Fcomplemento write Setcomplemento;
    property complementoHasValue: Boolean read FcomplementoHasValue write FcomplementoHasValue;
    property bairro: string read Fbairro write Setbairro;
    property bairroHasValue: Boolean read FbairroHasValue write FbairroHasValue;
    property codigo_municipio: string read Fcodigo_municipio write Setcodigo_municipio;
    property codigo_municipioHasValue: Boolean read Fcodigo_municipioHasValue write Fcodigo_municipioHasValue;
    property cidade: string read Fcidade write Setcidade;
    property cidadeHasValue: Boolean read FcidadeHasValue write FcidadeHasValue;
    property uf: string read Fuf write Setuf;
    property ufHasValue: Boolean read FufHasValue write FufHasValue;
    property codigo_pais: string read Fcodigo_pais write Setcodigo_pais;
    property codigo_paisHasValue: Boolean read Fcodigo_paisHasValue write Fcodigo_paisHasValue;
    property pais: string read Fpais write Setpais;
    property paisHasValue: Boolean read FpaisHasValue write FpaisHasValue;
    property cep: string read Fcep write Setcep;
    property cepHasValue: Boolean read FcepHasValue write FcepHasValue;
  end;
  
  TEmpresaConfigNfe = class
  private
    Fambiente: string;
    FambienteHasValue: Boolean;
    procedure Setambiente(const Value: string);
  public
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
  end;
  
  TEmpresaConfigNfceSefaz = class
  private
    Fid_csc: Integer;
    Fid_cscHasValue: Boolean;
    Fcsc: string;
    FcscHasValue: Boolean;
    procedure Setid_csc(const Value: Integer);
    procedure Setcsc(const Value: string);
  public
    property id_csc: Integer read Fid_csc write Setid_csc;
    property id_cscHasValue: Boolean read Fid_cscHasValue write Fid_cscHasValue;
    property csc: string read Fcsc write Setcsc;
    property cscHasValue: Boolean read FcscHasValue write FcscHasValue;
  end;
  
  TEmpresaConfigNfce = class
  private
    Fsefaz: TEmpresaConfigNfceSefaz;
    Fambiente: string;
    FambienteHasValue: Boolean;
    procedure Setsefaz(const Value: TEmpresaConfigNfceSefaz);
    procedure Setambiente(const Value: string);
  public
    destructor Destroy; override;
    property sefaz: TEmpresaConfigNfceSefaz read Fsefaz write Setsefaz;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
  end;
  
  TEmpresaConfigMdfe = class
  private
    Fambiente: string;
    FambienteHasValue: Boolean;
    procedure Setambiente(const Value: string);
  public
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
  end;
  
  TEmpresaConfigCte = class
  private
    Fambiente: string;
    FambienteHasValue: Boolean;
    procedure Setambiente(const Value: string);
  public
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
  end;
  
  TEmpresaConfigCteOs = class
  private
    Fambiente: string;
    FambienteHasValue: Boolean;
    procedure Setambiente(const Value: string);
  public
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
  end;
  
  TEmpresaConfigRps = class
  private
    Flote: Integer;
    FloteHasValue: Boolean;
    Fserie: string;
    FserieHasValue: Boolean;
    Fnumero: Integer;
    FnumeroHasValue: Boolean;
    procedure Setlote(const Value: Integer);
    procedure Setserie(const Value: string);
    procedure Setnumero(const Value: Integer);
  public
    property lote: Integer read Flote write Setlote;
    property loteHasValue: Boolean read FloteHasValue write FloteHasValue;
    property serie: string read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property numero: Integer read Fnumero write Setnumero;
    property numeroHasValue: Boolean read FnumeroHasValue write FnumeroHasValue;
  end;
  
  TEmpresaConfigPrefeitura = class
  private
    Flogin: string;
    FloginHasValue: Boolean;
    Fsenha: string;
    FsenhaHasValue: Boolean;
    Ftoken: string;
    FtokenHasValue: Boolean;
    procedure Setlogin(const Value: string);
    procedure Setsenha(const Value: string);
    procedure Settoken(const Value: string);
  public
    property login: string read Flogin write Setlogin;
    property loginHasValue: Boolean read FloginHasValue write FloginHasValue;
    property senha: string read Fsenha write Setsenha;
    property senhaHasValue: Boolean read FsenhaHasValue write FsenhaHasValue;
    property token: string read Ftoken write Settoken;
    property tokenHasValue: Boolean read FtokenHasValue write FtokenHasValue;
  end;
  
  TEmpresaConfigNfse = class
  private
    Frps: TEmpresaConfigRps;
    Fprefeitura: TEmpresaConfigPrefeitura;
    Fambiente: string;
    FambienteHasValue: Boolean;
    procedure Setrps(const Value: TEmpresaConfigRps);
    procedure Setprefeitura(const Value: TEmpresaConfigPrefeitura);
    procedure Setambiente(const Value: string);
  public
    destructor Destroy; override;
    property rps: TEmpresaConfigRps read Frps write Setrps;
    property prefeitura: TEmpresaConfigPrefeitura read Fprefeitura write Setprefeitura;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
  end;
  
  TEmpresa = class
  private
    Fcpf_cnpj: string;
    Fcpf_cnpjHasValue: Boolean;
    Fcreated_at: TDateTime;
    Fcreated_atHasValue: Boolean;
    Fupdated_at: TDateTime;
    Fupdated_atHasValue: Boolean;
    Finscricao_estadual: string;
    Finscricao_estadualHasValue: Boolean;
    Finscricao_municipal: string;
    Finscricao_municipalHasValue: Boolean;
    Fnome_razao_social: string;
    Fnome_razao_socialHasValue: Boolean;
    Fnome_fantasia: string;
    Fnome_fantasiaHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    Femail: string;
    FemailHasValue: Boolean;
    Fendereco: TEmpresaEndereco;
    Foptante_simples_nacional: Boolean;
    Foptante_simples_nacionalHasValue: Boolean;
    Fregime_tributacao: Integer;
    Fregime_tributacaoHasValue: Boolean;
    Fregime_especial_tributacao: Integer;
    Fregime_especial_tributacaoHasValue: Boolean;
    Fincentivo_fiscal: Boolean;
    Fincentivo_fiscalHasValue: Boolean;
    Fincentivador_cultural: Boolean;
    Fincentivador_culturalHasValue: Boolean;
    Fnfe: TEmpresaConfigNfe;
    Fnfce: TEmpresaConfigNfce;
    Fmdfe: TEmpresaConfigMdfe;
    Fcte: TEmpresaConfigCte;
    Fcte_os: TEmpresaConfigCteOs;
    Fnfse: TEmpresaConfigNfse;
    procedure Setcpf_cnpj(const Value: string);
    procedure Setcreated_at(const Value: TDateTime);
    procedure Setupdated_at(const Value: TDateTime);
    procedure Setinscricao_estadual(const Value: string);
    procedure Setinscricao_municipal(const Value: string);
    procedure Setnome_razao_social(const Value: string);
    procedure Setnome_fantasia(const Value: string);
    procedure Setfone(const Value: string);
    procedure Setemail(const Value: string);
    procedure Setendereco(const Value: TEmpresaEndereco);
    procedure Setoptante_simples_nacional(const Value: Boolean);
    procedure Setregime_tributacao(const Value: Integer);
    procedure Setregime_especial_tributacao(const Value: Integer);
    procedure Setincentivo_fiscal(const Value: Boolean);
    procedure Setincentivador_cultural(const Value: Boolean);
    procedure Setnfe(const Value: TEmpresaConfigNfe);
    procedure Setnfce(const Value: TEmpresaConfigNfce);
    procedure Setmdfe(const Value: TEmpresaConfigMdfe);
    procedure Setcte(const Value: TEmpresaConfigCte);
    procedure Setcte_os(const Value: TEmpresaConfigCteOs);
    procedure Setnfse(const Value: TEmpresaConfigNfse);
  public
    destructor Destroy; override;
    property cpf_cnpj: string read Fcpf_cnpj write Setcpf_cnpj;
    property cpf_cnpjHasValue: Boolean read Fcpf_cnpjHasValue write Fcpf_cnpjHasValue;
    property created_at: TDateTime read Fcreated_at write Setcreated_at;
    property created_atHasValue: Boolean read Fcreated_atHasValue write Fcreated_atHasValue;
    property updated_at: TDateTime read Fupdated_at write Setupdated_at;
    property updated_atHasValue: Boolean read Fupdated_atHasValue write Fupdated_atHasValue;
    property inscricao_estadual: string read Finscricao_estadual write Setinscricao_estadual;
    property inscricao_estadualHasValue: Boolean read Finscricao_estadualHasValue write Finscricao_estadualHasValue;
    property inscricao_municipal: string read Finscricao_municipal write Setinscricao_municipal;
    property inscricao_municipalHasValue: Boolean read Finscricao_municipalHasValue write Finscricao_municipalHasValue;
    property nome_razao_social: string read Fnome_razao_social write Setnome_razao_social;
    property nome_razao_socialHasValue: Boolean read Fnome_razao_socialHasValue write Fnome_razao_socialHasValue;
    property nome_fantasia: string read Fnome_fantasia write Setnome_fantasia;
    property nome_fantasiaHasValue: Boolean read Fnome_fantasiaHasValue write Fnome_fantasiaHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
    property endereco: TEmpresaEndereco read Fendereco write Setendereco;
    property optante_simples_nacional: Boolean read Foptante_simples_nacional write Setoptante_simples_nacional;
    property optante_simples_nacionalHasValue: Boolean read Foptante_simples_nacionalHasValue write Foptante_simples_nacionalHasValue;
    property regime_tributacao: Integer read Fregime_tributacao write Setregime_tributacao;
    property regime_tributacaoHasValue: Boolean read Fregime_tributacaoHasValue write Fregime_tributacaoHasValue;
    property regime_especial_tributacao: Integer read Fregime_especial_tributacao write Setregime_especial_tributacao;
    property regime_especial_tributacaoHasValue: Boolean read Fregime_especial_tributacaoHasValue write Fregime_especial_tributacaoHasValue;
    property incentivo_fiscal: Boolean read Fincentivo_fiscal write Setincentivo_fiscal;
    property incentivo_fiscalHasValue: Boolean read Fincentivo_fiscalHasValue write Fincentivo_fiscalHasValue;
    property incentivador_cultural: Boolean read Fincentivador_cultural write Setincentivador_cultural;
    property incentivador_culturalHasValue: Boolean read Fincentivador_culturalHasValue write Fincentivador_culturalHasValue;
    property nfe: TEmpresaConfigNfe read Fnfe write Setnfe;
    property nfce: TEmpresaConfigNfce read Fnfce write Setnfce;
    property mdfe: TEmpresaConfigMdfe read Fmdfe write Setmdfe;
    property cte: TEmpresaConfigCte read Fcte write Setcte;
    property cte_os: TEmpresaConfigCteOs read Fcte_os write Setcte_os;
    property nfse: TEmpresaConfigNfse read Fnfse write Setnfse;
  end;
  
  TEmpresaList = class(TObjectList<TEmpresa>)
  end;
  
  TEmpresaListagem = class
  private
    F_count: Integer;
    F_countHasValue: Boolean;
    Fdata: TEmpresaList;
    procedure Set_count(const Value: Integer);
    procedure Setdata(const Value: TEmpresaList);
  public
    destructor Destroy; override;
    property _count: Integer read F_count write Set_count;
    property _countHasValue: Boolean read F_countHasValue write F_countHasValue;
    property data: TEmpresaList read Fdata write Setdata;
  end;
  
  TEmpresaPedidoCadastroCertificado = class
  private
    Fcertificado: TBytes;
    FcertificadoHasValue: Boolean;
    Fpassword: string;
    FpasswordHasValue: Boolean;
    procedure Setcertificado(const Value: TBytes);
    procedure Setpassword(const Value: string);
  public
    property certificado: TBytes read Fcertificado write Setcertificado;
    property certificadoHasValue: Boolean read FcertificadoHasValue write FcertificadoHasValue;
    property password: string read Fpassword write Setpassword;
    property passwordHasValue: Boolean read FpasswordHasValue write FpasswordHasValue;
  end;
  
  TEmpresaCertificado = class
  private
    Fserial_number: string;
    Fserial_numberHasValue: Boolean;
    Fissuer_name: string;
    Fissuer_nameHasValue: Boolean;
    Fnot_valid_before: TDateTime;
    Fnot_valid_beforeHasValue: Boolean;
    Fnot_valid_after: TDateTime;
    Fnot_valid_afterHasValue: Boolean;
    Fthumbprint: string;
    FthumbprintHasValue: Boolean;
    Fsubject_name: string;
    Fsubject_nameHasValue: Boolean;
    Fcpf_cnpj: string;
    Fcpf_cnpjHasValue: Boolean;
    Fnome_razao_social: string;
    Fnome_razao_socialHasValue: Boolean;
    procedure Setserial_number(const Value: string);
    procedure Setissuer_name(const Value: string);
    procedure Setnot_valid_before(const Value: TDateTime);
    procedure Setnot_valid_after(const Value: TDateTime);
    procedure Setthumbprint(const Value: string);
    procedure Setsubject_name(const Value: string);
    procedure Setcpf_cnpj(const Value: string);
    procedure Setnome_razao_social(const Value: string);
  public
    property serial_number: string read Fserial_number write Setserial_number;
    property serial_numberHasValue: Boolean read Fserial_numberHasValue write Fserial_numberHasValue;
    property issuer_name: string read Fissuer_name write Setissuer_name;
    property issuer_nameHasValue: Boolean read Fissuer_nameHasValue write Fissuer_nameHasValue;
    property not_valid_before: TDateTime read Fnot_valid_before write Setnot_valid_before;
    property not_valid_beforeHasValue: Boolean read Fnot_valid_beforeHasValue write Fnot_valid_beforeHasValue;
    property not_valid_after: TDateTime read Fnot_valid_after write Setnot_valid_after;
    property not_valid_afterHasValue: Boolean read Fnot_valid_afterHasValue write Fnot_valid_afterHasValue;
    property thumbprint: string read Fthumbprint write Setthumbprint;
    property thumbprintHasValue: Boolean read FthumbprintHasValue write FthumbprintHasValue;
    property subject_name: string read Fsubject_name write Setsubject_name;
    property subject_nameHasValue: Boolean read Fsubject_nameHasValue write Fsubject_nameHasValue;
    property cpf_cnpj: string read Fcpf_cnpj write Setcpf_cnpj;
    property cpf_cnpjHasValue: Boolean read Fcpf_cnpjHasValue write Fcpf_cnpjHasValue;
    property nome_razao_social: string read Fnome_razao_social write Setnome_razao_social;
    property nome_razao_socialHasValue: Boolean read Fnome_razao_socialHasValue write Fnome_razao_socialHasValue;
  end;
  
  TRpsIdentificacaoPrestador = class
  private
    Fcpf_cnpj: string;
    Fcpf_cnpjHasValue: Boolean;
    procedure Setcpf_cnpj(const Value: string);
  public
    property cpf_cnpj: string read Fcpf_cnpj write Setcpf_cnpj;
    property cpf_cnpjHasValue: Boolean read Fcpf_cnpjHasValue write Fcpf_cnpjHasValue;
  end;
  
  TRpsDadosTomador = class
  private
    Fcpf_cnpj: string;
    Fcpf_cnpjHasValue: Boolean;
    Finscricao_municipal: string;
    Finscricao_municipalHasValue: Boolean;
    Fnome_razao_social: string;
    Fnome_razao_socialHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    Femail: string;
    FemailHasValue: Boolean;
    Fendereco: TEmpresaEndereco;
    procedure Setcpf_cnpj(const Value: string);
    procedure Setinscricao_municipal(const Value: string);
    procedure Setnome_razao_social(const Value: string);
    procedure Setfone(const Value: string);
    procedure Setemail(const Value: string);
    procedure Setendereco(const Value: TEmpresaEndereco);
  public
    destructor Destroy; override;
    property cpf_cnpj: string read Fcpf_cnpj write Setcpf_cnpj;
    property cpf_cnpjHasValue: Boolean read Fcpf_cnpjHasValue write Fcpf_cnpjHasValue;
    property inscricao_municipal: string read Finscricao_municipal write Setinscricao_municipal;
    property inscricao_municipalHasValue: Boolean read Finscricao_municipalHasValue write Finscricao_municipalHasValue;
    property nome_razao_social: string read Fnome_razao_social write Setnome_razao_social;
    property nome_razao_socialHasValue: Boolean read Fnome_razao_socialHasValue write Fnome_razao_socialHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
    property endereco: TEmpresaEndereco read Fendereco write Setendereco;
  end;
  
  TRpsDadosIntermediario = class
  private
    Fcpf_cnpj: string;
    Fcpf_cnpjHasValue: Boolean;
    Fnome_razao_social: string;
    Fnome_razao_socialHasValue: Boolean;
    Finscricao_municipal: string;
    Finscricao_municipalHasValue: Boolean;
    procedure Setcpf_cnpj(const Value: string);
    procedure Setnome_razao_social(const Value: string);
    procedure Setinscricao_municipal(const Value: string);
  public
    property cpf_cnpj: string read Fcpf_cnpj write Setcpf_cnpj;
    property cpf_cnpjHasValue: Boolean read Fcpf_cnpjHasValue write Fcpf_cnpjHasValue;
    property nome_razao_social: string read Fnome_razao_social write Setnome_razao_social;
    property nome_razao_socialHasValue: Boolean read Fnome_razao_socialHasValue write Fnome_razao_socialHasValue;
    property inscricao_municipal: string read Finscricao_municipal write Setinscricao_municipal;
    property inscricao_municipalHasValue: Boolean read Finscricao_municipalHasValue write Finscricao_municipalHasValue;
  end;
  
  TRpsDadosConstrucaoCivil = class
  private
    Fcodigo_obra: string;
    Fcodigo_obraHasValue: Boolean;
    Fart: string;
    FartHasValue: Boolean;
    procedure Setcodigo_obra(const Value: string);
    procedure Setart(const Value: string);
  public
    property codigo_obra: string read Fcodigo_obra write Setcodigo_obra;
    property codigo_obraHasValue: Boolean read Fcodigo_obraHasValue write Fcodigo_obraHasValue;
    property art: string read Fart write Setart;
    property artHasValue: Boolean read FartHasValue write FartHasValue;
  end;
  
  TRpsServicoValores = class
  private
    Fvalor_unitario: Double;
    Fvalor_unitarioHasValue: Boolean;
    Fvalor_servicos: Double;
    Fvalor_servicosHasValue: Boolean;
    Fvalor_deducoes: Double;
    Fvalor_deducoesHasValue: Boolean;
    Fvalor_pis: Double;
    Fvalor_pisHasValue: Boolean;
    Fvalor_cofins: Double;
    Fvalor_cofinsHasValue: Boolean;
    Fvalor_inss: Double;
    Fvalor_inssHasValue: Boolean;
    Fvalor_ir: Double;
    Fvalor_irHasValue: Boolean;
    Fvalor_csll: Double;
    Fvalor_csllHasValue: Boolean;
    Fvalor_outras_retencoes: Double;
    Fvalor_outras_retencoesHasValue: Boolean;
    Fvalor_iss: Double;
    Fvalor_issHasValue: Boolean;
    Fvalor_iss_retido: Double;
    Fvalor_iss_retidoHasValue: Boolean;
    Fvalor_liquido: Double;
    Fvalor_liquidoHasValue: Boolean;
    Faliquota_iss: Double;
    Faliquota_issHasValue: Boolean;
    Faliquota_pis: Double;
    Faliquota_pisHasValue: Boolean;
    Faliquota_cofins: Double;
    Faliquota_cofinsHasValue: Boolean;
    Faliquota_inss: Double;
    Faliquota_inssHasValue: Boolean;
    Faliquota_ir: Double;
    Faliquota_irHasValue: Boolean;
    Faliquota_csll: Double;
    Faliquota_csllHasValue: Boolean;
    Fdesconto_incondicionado: Double;
    Fdesconto_incondicionadoHasValue: Boolean;
    Fdesconto_condicionado: Double;
    Fdesconto_condicionadoHasValue: Boolean;
    procedure Setvalor_unitario(const Value: Double);
    procedure Setvalor_servicos(const Value: Double);
    procedure Setvalor_deducoes(const Value: Double);
    procedure Setvalor_pis(const Value: Double);
    procedure Setvalor_cofins(const Value: Double);
    procedure Setvalor_inss(const Value: Double);
    procedure Setvalor_ir(const Value: Double);
    procedure Setvalor_csll(const Value: Double);
    procedure Setvalor_outras_retencoes(const Value: Double);
    procedure Setvalor_iss(const Value: Double);
    procedure Setvalor_iss_retido(const Value: Double);
    procedure Setvalor_liquido(const Value: Double);
    procedure Setaliquota_iss(const Value: Double);
    procedure Setaliquota_pis(const Value: Double);
    procedure Setaliquota_cofins(const Value: Double);
    procedure Setaliquota_inss(const Value: Double);
    procedure Setaliquota_ir(const Value: Double);
    procedure Setaliquota_csll(const Value: Double);
    procedure Setdesconto_incondicionado(const Value: Double);
    procedure Setdesconto_condicionado(const Value: Double);
  public
    property valor_unitario: Double read Fvalor_unitario write Setvalor_unitario;
    property valor_unitarioHasValue: Boolean read Fvalor_unitarioHasValue write Fvalor_unitarioHasValue;
    property valor_servicos: Double read Fvalor_servicos write Setvalor_servicos;
    property valor_servicosHasValue: Boolean read Fvalor_servicosHasValue write Fvalor_servicosHasValue;
    property valor_deducoes: Double read Fvalor_deducoes write Setvalor_deducoes;
    property valor_deducoesHasValue: Boolean read Fvalor_deducoesHasValue write Fvalor_deducoesHasValue;
    property valor_pis: Double read Fvalor_pis write Setvalor_pis;
    property valor_pisHasValue: Boolean read Fvalor_pisHasValue write Fvalor_pisHasValue;
    property valor_cofins: Double read Fvalor_cofins write Setvalor_cofins;
    property valor_cofinsHasValue: Boolean read Fvalor_cofinsHasValue write Fvalor_cofinsHasValue;
    property valor_inss: Double read Fvalor_inss write Setvalor_inss;
    property valor_inssHasValue: Boolean read Fvalor_inssHasValue write Fvalor_inssHasValue;
    property valor_ir: Double read Fvalor_ir write Setvalor_ir;
    property valor_irHasValue: Boolean read Fvalor_irHasValue write Fvalor_irHasValue;
    property valor_csll: Double read Fvalor_csll write Setvalor_csll;
    property valor_csllHasValue: Boolean read Fvalor_csllHasValue write Fvalor_csllHasValue;
    property valor_outras_retencoes: Double read Fvalor_outras_retencoes write Setvalor_outras_retencoes;
    property valor_outras_retencoesHasValue: Boolean read Fvalor_outras_retencoesHasValue write Fvalor_outras_retencoesHasValue;
    property valor_iss: Double read Fvalor_iss write Setvalor_iss;
    property valor_issHasValue: Boolean read Fvalor_issHasValue write Fvalor_issHasValue;
    property valor_iss_retido: Double read Fvalor_iss_retido write Setvalor_iss_retido;
    property valor_iss_retidoHasValue: Boolean read Fvalor_iss_retidoHasValue write Fvalor_iss_retidoHasValue;
    property valor_liquido: Double read Fvalor_liquido write Setvalor_liquido;
    property valor_liquidoHasValue: Boolean read Fvalor_liquidoHasValue write Fvalor_liquidoHasValue;
    property aliquota_iss: Double read Faliquota_iss write Setaliquota_iss;
    property aliquota_issHasValue: Boolean read Faliquota_issHasValue write Faliquota_issHasValue;
    property aliquota_pis: Double read Faliquota_pis write Setaliquota_pis;
    property aliquota_pisHasValue: Boolean read Faliquota_pisHasValue write Faliquota_pisHasValue;
    property aliquota_cofins: Double read Faliquota_cofins write Setaliquota_cofins;
    property aliquota_cofinsHasValue: Boolean read Faliquota_cofinsHasValue write Faliquota_cofinsHasValue;
    property aliquota_inss: Double read Faliquota_inss write Setaliquota_inss;
    property aliquota_inssHasValue: Boolean read Faliquota_inssHasValue write Faliquota_inssHasValue;
    property aliquota_ir: Double read Faliquota_ir write Setaliquota_ir;
    property aliquota_irHasValue: Boolean read Faliquota_irHasValue write Faliquota_irHasValue;
    property aliquota_csll: Double read Faliquota_csll write Setaliquota_csll;
    property aliquota_csllHasValue: Boolean read Faliquota_csllHasValue write Faliquota_csllHasValue;
    property desconto_incondicionado: Double read Fdesconto_incondicionado write Setdesconto_incondicionado;
    property desconto_incondicionadoHasValue: Boolean read Fdesconto_incondicionadoHasValue write Fdesconto_incondicionadoHasValue;
    property desconto_condicionado: Double read Fdesconto_condicionado write Setdesconto_condicionado;
    property desconto_condicionadoHasValue: Boolean read Fdesconto_condicionadoHasValue write Fdesconto_condicionadoHasValue;
  end;
  
  TRpsDadosServico = class
  private
    Fiss_retido: Boolean;
    Fiss_retidoHasValue: Boolean;
    Fresponsavel_retencao: Integer;
    Fresponsavel_retencaoHasValue: Boolean;
    Fitem_lista_servico: string;
    Fitem_lista_servicoHasValue: Boolean;
    Fcodigo_cnae: string;
    Fcodigo_cnaeHasValue: Boolean;
    Fcodigo_tributacao_municipio: string;
    Fcodigo_tributacao_municipioHasValue: Boolean;
    Fdiscriminacao: string;
    FdiscriminacaoHasValue: Boolean;
    Fcodigo_municipio: string;
    Fcodigo_municipioHasValue: Boolean;
    Fcodigo_pais: string;
    Fcodigo_paisHasValue: Boolean;
    Ftipo_tributacao: Integer;
    Ftipo_tributacaoHasValue: Boolean;
    Fexigibilidade_iss: Integer;
    Fexigibilidade_issHasValue: Boolean;
    Fcodigo_municipio_incidencia: string;
    Fcodigo_municipio_incidenciaHasValue: Boolean;
    Fnumero_processo: string;
    Fnumero_processoHasValue: Boolean;
    Funidade: string;
    FunidadeHasValue: Boolean;
    Fquantidade: Double;
    FquantidadeHasValue: Boolean;
    Fvalores: TRpsServicoValores;
    procedure Setiss_retido(const Value: Boolean);
    procedure Setresponsavel_retencao(const Value: Integer);
    procedure Setitem_lista_servico(const Value: string);
    procedure Setcodigo_cnae(const Value: string);
    procedure Setcodigo_tributacao_municipio(const Value: string);
    procedure Setdiscriminacao(const Value: string);
    procedure Setcodigo_municipio(const Value: string);
    procedure Setcodigo_pais(const Value: string);
    procedure Settipo_tributacao(const Value: Integer);
    procedure Setexigibilidade_iss(const Value: Integer);
    procedure Setcodigo_municipio_incidencia(const Value: string);
    procedure Setnumero_processo(const Value: string);
    procedure Setunidade(const Value: string);
    procedure Setquantidade(const Value: Double);
    procedure Setvalores(const Value: TRpsServicoValores);
  public
    destructor Destroy; override;
    property iss_retido: Boolean read Fiss_retido write Setiss_retido;
    property iss_retidoHasValue: Boolean read Fiss_retidoHasValue write Fiss_retidoHasValue;
    property responsavel_retencao: Integer read Fresponsavel_retencao write Setresponsavel_retencao;
    property responsavel_retencaoHasValue: Boolean read Fresponsavel_retencaoHasValue write Fresponsavel_retencaoHasValue;
    property item_lista_servico: string read Fitem_lista_servico write Setitem_lista_servico;
    property item_lista_servicoHasValue: Boolean read Fitem_lista_servicoHasValue write Fitem_lista_servicoHasValue;
    property codigo_cnae: string read Fcodigo_cnae write Setcodigo_cnae;
    property codigo_cnaeHasValue: Boolean read Fcodigo_cnaeHasValue write Fcodigo_cnaeHasValue;
    property codigo_tributacao_municipio: string read Fcodigo_tributacao_municipio write Setcodigo_tributacao_municipio;
    property codigo_tributacao_municipioHasValue: Boolean read Fcodigo_tributacao_municipioHasValue write Fcodigo_tributacao_municipioHasValue;
    property discriminacao: string read Fdiscriminacao write Setdiscriminacao;
    property discriminacaoHasValue: Boolean read FdiscriminacaoHasValue write FdiscriminacaoHasValue;
    property codigo_municipio: string read Fcodigo_municipio write Setcodigo_municipio;
    property codigo_municipioHasValue: Boolean read Fcodigo_municipioHasValue write Fcodigo_municipioHasValue;
    property codigo_pais: string read Fcodigo_pais write Setcodigo_pais;
    property codigo_paisHasValue: Boolean read Fcodigo_paisHasValue write Fcodigo_paisHasValue;
    property tipo_tributacao: Integer read Ftipo_tributacao write Settipo_tributacao;
    property tipo_tributacaoHasValue: Boolean read Ftipo_tributacaoHasValue write Ftipo_tributacaoHasValue;
    property exigibilidade_iss: Integer read Fexigibilidade_iss write Setexigibilidade_iss;
    property exigibilidade_issHasValue: Boolean read Fexigibilidade_issHasValue write Fexigibilidade_issHasValue;
    property codigo_municipio_incidencia: string read Fcodigo_municipio_incidencia write Setcodigo_municipio_incidencia;
    property codigo_municipio_incidenciaHasValue: Boolean read Fcodigo_municipio_incidenciaHasValue write Fcodigo_municipio_incidenciaHasValue;
    property numero_processo: string read Fnumero_processo write Setnumero_processo;
    property numero_processoHasValue: Boolean read Fnumero_processoHasValue write Fnumero_processoHasValue;
    property unidade: string read Funidade write Setunidade;
    property unidadeHasValue: Boolean read FunidadeHasValue write FunidadeHasValue;
    property quantidade: Double read Fquantidade write Setquantidade;
    property quantidadeHasValue: Boolean read FquantidadeHasValue write FquantidadeHasValue;
    property valores: TRpsServicoValores read Fvalores write Setvalores;
  end;
  
  TRpsDadosServicoList = class(TObjectList<TRpsDadosServico>)
  end;
  
  TRpsPedidoEmissao = class
  private
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    Fdata_emissao: TDateTime;
    Fdata_emissaoHasValue: Boolean;
    Fcompetencia: TDate;
    FcompetenciaHasValue: Boolean;
    Fnatureza_tributacao: Integer;
    Fnatureza_tributacaoHasValue: Boolean;
    Fprestador: TRpsIdentificacaoPrestador;
    Ftomador: TRpsDadosTomador;
    Fintermediario: TRpsDadosIntermediario;
    Fconstrucao_civil: TRpsDadosConstrucaoCivil;
    Fservicos: TRpsDadosServicoList;
    procedure Setreferencia(const Value: string);
    procedure Setdata_emissao(const Value: TDateTime);
    procedure Setcompetencia(const Value: TDate);
    procedure Setnatureza_tributacao(const Value: Integer);
    procedure Setprestador(const Value: TRpsIdentificacaoPrestador);
    procedure Settomador(const Value: TRpsDadosTomador);
    procedure Setintermediario(const Value: TRpsDadosIntermediario);
    procedure Setconstrucao_civil(const Value: TRpsDadosConstrucaoCivil);
    procedure Setservicos(const Value: TRpsDadosServicoList);
  public
    destructor Destroy; override;
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
    property data_emissao: TDateTime read Fdata_emissao write Setdata_emissao;
    property data_emissaoHasValue: Boolean read Fdata_emissaoHasValue write Fdata_emissaoHasValue;
    property competencia: TDate read Fcompetencia write Setcompetencia;
    property competenciaHasValue: Boolean read FcompetenciaHasValue write FcompetenciaHasValue;
    property natureza_tributacao: Integer read Fnatureza_tributacao write Setnatureza_tributacao;
    property natureza_tributacaoHasValue: Boolean read Fnatureza_tributacaoHasValue write Fnatureza_tributacaoHasValue;
    property prestador: TRpsIdentificacaoPrestador read Fprestador write Setprestador;
    property tomador: TRpsDadosTomador read Ftomador write Settomador;
    property intermediario: TRpsDadosIntermediario read Fintermediario write Setintermediario;
    property construcao_civil: TRpsDadosConstrucaoCivil read Fconstrucao_civil write Setconstrucao_civil;
    property servicos: TRpsDadosServicoList read Fservicos write Setservicos;
  end;
  
  TRpsPedidoEmissaoList = class(TObjectList<TRpsPedidoEmissao>)
  end;
  
  TRpsPedidoEmissaoLote = class
  private
    Fambiente: string;
    FambienteHasValue: Boolean;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    Flista_rps: TRpsPedidoEmissaoList;
    procedure Setambiente(const Value: string);
    procedure Setreferencia(const Value: string);
    procedure Setlista_rps(const Value: TRpsPedidoEmissaoList);
  public
    destructor Destroy; override;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
    property lista_rps: TRpsPedidoEmissaoList read Flista_rps write Setlista_rps;
  end;
  
  TRpsIdentificacao = class
  private
    Fnumero: string;
    FnumeroHasValue: Boolean;
    Fserie: string;
    FserieHasValue: Boolean;
    Ftipo: string;
    FtipoHasValue: Boolean;
    procedure Setnumero(const Value: string);
    procedure Setserie(const Value: string);
    procedure Settipo(const Value: string);
  public
    property numero: string read Fnumero write Setnumero;
    property numeroHasValue: Boolean read FnumeroHasValue write FnumeroHasValue;
    property serie: string read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property tipo: string read Ftipo write Settipo;
    property tipoHasValue: Boolean read FtipoHasValue write FtipoHasValue;
  end;
  
  TRpsDados = class
  private
    Fidentificacao_rps: TRpsIdentificacao;
    Fdata_emissao: TDateTime;
    Fdata_emissaoHasValue: Boolean;
    procedure Setidentificacao_rps(const Value: TRpsIdentificacao);
    procedure Setdata_emissao(const Value: TDateTime);
  public
    destructor Destroy; override;
    property identificacao_rps: TRpsIdentificacao read Fidentificacao_rps write Setidentificacao_rps;
    property data_emissao: TDateTime read Fdata_emissao write Setdata_emissao;
    property data_emissaoHasValue: Boolean read Fdata_emissaoHasValue write Fdata_emissaoHasValue;
  end;
  
  TRpsDadosPrestador = class
  private
    Fcpf_cnpj: string;
    Fcpf_cnpjHasValue: Boolean;
    Finscricao_municipal: string;
    Finscricao_municipalHasValue: Boolean;
    Fnome_razao_social: string;
    Fnome_razao_socialHasValue: Boolean;
    Fnome_fantasia: string;
    Fnome_fantasiaHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    Femail: string;
    FemailHasValue: Boolean;
    Fendereco: TEmpresaEndereco;
    Foptante_simples_nacional: Boolean;
    Foptante_simples_nacionalHasValue: Boolean;
    Fregime_tributacao: Integer;
    Fregime_tributacaoHasValue: Boolean;
    Fregime_especial_tributacao: Integer;
    Fregime_especial_tributacaoHasValue: Boolean;
    Fincentivo_fiscal: Boolean;
    Fincentivo_fiscalHasValue: Boolean;
    Fincentivador_cultural: Boolean;
    Fincentivador_culturalHasValue: Boolean;
    procedure Setcpf_cnpj(const Value: string);
    procedure Setinscricao_municipal(const Value: string);
    procedure Setnome_razao_social(const Value: string);
    procedure Setnome_fantasia(const Value: string);
    procedure Setfone(const Value: string);
    procedure Setemail(const Value: string);
    procedure Setendereco(const Value: TEmpresaEndereco);
    procedure Setoptante_simples_nacional(const Value: Boolean);
    procedure Setregime_tributacao(const Value: Integer);
    procedure Setregime_especial_tributacao(const Value: Integer);
    procedure Setincentivo_fiscal(const Value: Boolean);
    procedure Setincentivador_cultural(const Value: Boolean);
  public
    destructor Destroy; override;
    property cpf_cnpj: string read Fcpf_cnpj write Setcpf_cnpj;
    property cpf_cnpjHasValue: Boolean read Fcpf_cnpjHasValue write Fcpf_cnpjHasValue;
    property inscricao_municipal: string read Finscricao_municipal write Setinscricao_municipal;
    property inscricao_municipalHasValue: Boolean read Finscricao_municipalHasValue write Finscricao_municipalHasValue;
    property nome_razao_social: string read Fnome_razao_social write Setnome_razao_social;
    property nome_razao_socialHasValue: Boolean read Fnome_razao_socialHasValue write Fnome_razao_socialHasValue;
    property nome_fantasia: string read Fnome_fantasia write Setnome_fantasia;
    property nome_fantasiaHasValue: Boolean read Fnome_fantasiaHasValue write Fnome_fantasiaHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
    property endereco: TEmpresaEndereco read Fendereco write Setendereco;
    property optante_simples_nacional: Boolean read Foptante_simples_nacional write Setoptante_simples_nacional;
    property optante_simples_nacionalHasValue: Boolean read Foptante_simples_nacionalHasValue write Foptante_simples_nacionalHasValue;
    property regime_tributacao: Integer read Fregime_tributacao write Setregime_tributacao;
    property regime_tributacaoHasValue: Boolean read Fregime_tributacaoHasValue write Fregime_tributacaoHasValue;
    property regime_especial_tributacao: Integer read Fregime_especial_tributacao write Setregime_especial_tributacao;
    property regime_especial_tributacaoHasValue: Boolean read Fregime_especial_tributacaoHasValue write Fregime_especial_tributacaoHasValue;
    property incentivo_fiscal: Boolean read Fincentivo_fiscal write Setincentivo_fiscal;
    property incentivo_fiscalHasValue: Boolean read Fincentivo_fiscalHasValue write Fincentivo_fiscalHasValue;
    property incentivador_cultural: Boolean read Fincentivador_cultural write Setincentivador_cultural;
    property incentivador_culturalHasValue: Boolean read Fincentivador_culturalHasValue write Fincentivador_culturalHasValue;
  end;
  
  TRps = class
  private
    Frps: TRpsDados;
    Fcompetencia: TDate;
    FcompetenciaHasValue: Boolean;
    Fnatureza_tributacao: Integer;
    Fnatureza_tributacaoHasValue: Boolean;
    Fprestador: TRpsDadosPrestador;
    Ftomador: TRpsDadosTomador;
    Fintermediario: TRpsDadosIntermediario;
    Fconstrucao_civil: TRpsDadosConstrucaoCivil;
    Fservicos: TRpsDadosServicoList;
    procedure Setrps(const Value: TRpsDados);
    procedure Setcompetencia(const Value: TDate);
    procedure Setnatureza_tributacao(const Value: Integer);
    procedure Setprestador(const Value: TRpsDadosPrestador);
    procedure Settomador(const Value: TRpsDadosTomador);
    procedure Setintermediario(const Value: TRpsDadosIntermediario);
    procedure Setconstrucao_civil(const Value: TRpsDadosConstrucaoCivil);
    procedure Setservicos(const Value: TRpsDadosServicoList);
  public
    destructor Destroy; override;
    property rps: TRpsDados read Frps write Setrps;
    property competencia: TDate read Fcompetencia write Setcompetencia;
    property competenciaHasValue: Boolean read FcompetenciaHasValue write FcompetenciaHasValue;
    property natureza_tributacao: Integer read Fnatureza_tributacao write Setnatureza_tributacao;
    property natureza_tributacaoHasValue: Boolean read Fnatureza_tributacaoHasValue write Fnatureza_tributacaoHasValue;
    property prestador: TRpsDadosPrestador read Fprestador write Setprestador;
    property tomador: TRpsDadosTomador read Ftomador write Settomador;
    property intermediario: TRpsDadosIntermediario read Fintermediario write Setintermediario;
    property construcao_civil: TRpsDadosConstrucaoCivil read Fconstrucao_civil write Setconstrucao_civil;
    property servicos: TRpsDadosServicoList read Fservicos write Setservicos;
  end;
  
  TNfseMensagemRetorno = class
  private
    Fcodigo: string;
    FcodigoHasValue: Boolean;
    Fdescricao: string;
    FdescricaoHasValue: Boolean;
    Fcorrecao: string;
    FcorrecaoHasValue: Boolean;
    procedure Setcodigo(const Value: string);
    procedure Setdescricao(const Value: string);
    procedure Setcorrecao(const Value: string);
  public
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    property descricao: string read Fdescricao write Setdescricao;
    property descricaoHasValue: Boolean read FdescricaoHasValue write FdescricaoHasValue;
    property correcao: string read Fcorrecao write Setcorrecao;
    property correcaoHasValue: Boolean read FcorrecaoHasValue write FcorrecaoHasValue;
  end;
  
  TNfseMensagemRetornoList = class(TObjectList<TNfseMensagemRetorno>)
  end;
  
  TNfseCancelamento = class
  private
    Fid: string;
    FidHasValue: Boolean;
    Fstatus: string;
    FstatusHasValue: Boolean;
    Fdata_hora: TDateTime;
    Fdata_horaHasValue: Boolean;
    Fmensagens: TNfseMensagemRetornoList;
    procedure Setid(const Value: string);
    procedure Setstatus(const Value: string);
    procedure Setdata_hora(const Value: TDateTime);
    procedure Setmensagens(const Value: TNfseMensagemRetornoList);
  public
    destructor Destroy; override;
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property data_hora: TDateTime read Fdata_hora write Setdata_hora;
    property data_horaHasValue: Boolean read Fdata_horaHasValue write Fdata_horaHasValue;
    property mensagens: TNfseMensagemRetornoList read Fmensagens write Setmensagens;
  end;
  
  TNfse = class
  private
    Fid: string;
    FidHasValue: Boolean;
    Fcreated_at: TDateTime;
    Fcreated_atHasValue: Boolean;
    Fstatus: string;
    FstatusHasValue: Boolean;
    Fnumero: string;
    FnumeroHasValue: Boolean;
    Fcodigo_verificacao: string;
    Fcodigo_verificacaoHasValue: Boolean;
    Flink_url: string;
    Flink_urlHasValue: Boolean;
    Fdata_emissao: TDateTime;
    Fdata_emissaoHasValue: Boolean;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    Fdeclaracao_prestacao_servico: TRps;
    Fcancelamento: TNfseCancelamento;
    Fmensagens: TNfseMensagemRetornoList;
    procedure Setid(const Value: string);
    procedure Setcreated_at(const Value: TDateTime);
    procedure Setstatus(const Value: string);
    procedure Setnumero(const Value: string);
    procedure Setcodigo_verificacao(const Value: string);
    procedure Setlink_url(const Value: string);
    procedure Setdata_emissao(const Value: TDateTime);
    procedure Setambiente(const Value: string);
    procedure Setreferencia(const Value: string);
    procedure Setdeclaracao_prestacao_servico(const Value: TRps);
    procedure Setcancelamento(const Value: TNfseCancelamento);
    procedure Setmensagens(const Value: TNfseMensagemRetornoList);
  public
    destructor Destroy; override;
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property created_at: TDateTime read Fcreated_at write Setcreated_at;
    property created_atHasValue: Boolean read Fcreated_atHasValue write Fcreated_atHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property numero: string read Fnumero write Setnumero;
    property numeroHasValue: Boolean read FnumeroHasValue write FnumeroHasValue;
    property codigo_verificacao: string read Fcodigo_verificacao write Setcodigo_verificacao;
    property codigo_verificacaoHasValue: Boolean read Fcodigo_verificacaoHasValue write Fcodigo_verificacaoHasValue;
    property link_url: string read Flink_url write Setlink_url;
    property link_urlHasValue: Boolean read Flink_urlHasValue write Flink_urlHasValue;
    property data_emissao: TDateTime read Fdata_emissao write Setdata_emissao;
    property data_emissaoHasValue: Boolean read Fdata_emissaoHasValue write Fdata_emissaoHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
    property declaracao_prestacao_servico: TRps read Fdeclaracao_prestacao_servico write Setdeclaracao_prestacao_servico;
    property cancelamento: TNfseCancelamento read Fcancelamento write Setcancelamento;
    property mensagens: TNfseMensagemRetornoList read Fmensagens write Setmensagens;
  end;
  
  TNfseList = class(TObjectList<TNfse>)
  end;
  
  TRpsLote = class
  private
    Fid: string;
    FidHasValue: Boolean;
    Fcreated_at: TDateTime;
    Fcreated_atHasValue: Boolean;
    Fstatus: string;
    FstatusHasValue: Boolean;
    Fnumero: string;
    FnumeroHasValue: Boolean;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    Fnotas: TNfseList;
    procedure Setid(const Value: string);
    procedure Setcreated_at(const Value: TDateTime);
    procedure Setstatus(const Value: string);
    procedure Setnumero(const Value: string);
    procedure Setambiente(const Value: string);
    procedure Setreferencia(const Value: string);
    procedure Setnotas(const Value: TNfseList);
  public
    destructor Destroy; override;
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property created_at: TDateTime read Fcreated_at write Setcreated_at;
    property created_atHasValue: Boolean read Fcreated_atHasValue write Fcreated_atHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property numero: string read Fnumero write Setnumero;
    property numeroHasValue: Boolean read FnumeroHasValue write FnumeroHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
    property notas: TNfseList read Fnotas write Setnotas;
  end;
  
  TRpsLoteList = class(TObjectList<TRpsLote>)
  end;
  
  TRpsLoteListagem = class
  private
    F_count: Integer;
    F_countHasValue: Boolean;
    Fdata: TRpsLoteList;
    procedure Set_count(const Value: Integer);
    procedure Setdata(const Value: TRpsLoteList);
  public
    destructor Destroy; override;
    property _count: Integer read F_count write Set_count;
    property _countHasValue: Boolean read F_countHasValue write F_countHasValue;
    property data: TRpsLoteList read Fdata write Setdata;
  end;
  
  TNfsePedidoEmissao = class
  private
    Fambiente: string;
    FambienteHasValue: Boolean;
    Frps: TRpsPedidoEmissao;
    procedure Setambiente(const Value: string);
    procedure Setrps(const Value: TRpsPedidoEmissao);
  public
    destructor Destroy; override;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property rps: TRpsPedidoEmissao read Frps write Setrps;
  end;
  
  TNfseListagem = class
  private
    F_count: Integer;
    F_countHasValue: Boolean;
    Fdata: TNfseList;
    procedure Set_count(const Value: Integer);
    procedure Setdata(const Value: TNfseList);
  public
    destructor Destroy; override;
    property _count: Integer read F_count write Set_count;
    property _countHasValue: Boolean read F_countHasValue write F_countHasValue;
    property data: TNfseList read Fdata write Setdata;
  end;
  
  TDfeSefazStatus = class
  private
    Fautorizador: string;
    FautorizadorHasValue: Boolean;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Fdata_hora_consulta: TDateTime;
    Fdata_hora_consultaHasValue: Boolean;
    Fcodigo_status: Integer;
    Fcodigo_statusHasValue: Boolean;
    Fmotivo_status: string;
    Fmotivo_statusHasValue: Boolean;
    Ftempo_medio_resposta: Integer;
    Ftempo_medio_respostaHasValue: Boolean;
    Fdata_hora_retorno: TDateTime;
    Fdata_hora_retornoHasValue: Boolean;
    procedure Setautorizador(const Value: string);
    procedure Setambiente(const Value: string);
    procedure Setdata_hora_consulta(const Value: TDateTime);
    procedure Setcodigo_status(const Value: Integer);
    procedure Setmotivo_status(const Value: string);
    procedure Settempo_medio_resposta(const Value: Integer);
    procedure Setdata_hora_retorno(const Value: TDateTime);
  public
    property autorizador: string read Fautorizador write Setautorizador;
    property autorizadorHasValue: Boolean read FautorizadorHasValue write FautorizadorHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property data_hora_consulta: TDateTime read Fdata_hora_consulta write Setdata_hora_consulta;
    property data_hora_consultaHasValue: Boolean read Fdata_hora_consultaHasValue write Fdata_hora_consultaHasValue;
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    property tempo_medio_resposta: Integer read Ftempo_medio_resposta write Settempo_medio_resposta;
    property tempo_medio_respostaHasValue: Boolean read Ftempo_medio_respostaHasValue write Ftempo_medio_respostaHasValue;
    property data_hora_retorno: TDateTime read Fdata_hora_retorno write Setdata_hora_retorno;
    property data_hora_retornoHasValue: Boolean read Fdata_hora_retornoHasValue write Fdata_hora_retornoHasValue;
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
    Ftoma: Integer;
    FtomaHasValue: Boolean;
    procedure Settoma(const Value: Integer);
  public
    property toma: Integer read Ftoma write Settoma;
    property tomaHasValue: Boolean read FtomaHasValue write FtomaHasValue;
  end;
  
  TCteSefazEndereco = class
  private
    FxLgr: string;
    FxLgrHasValue: Boolean;
    Fnro: string;
    FnroHasValue: Boolean;
    FxCpl: string;
    FxCplHasValue: Boolean;
    FxBairro: string;
    FxBairroHasValue: Boolean;
    FcMun: Integer;
    FcMunHasValue: Boolean;
    FxMun: string;
    FxMunHasValue: Boolean;
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FcPais: Integer;
    FcPaisHasValue: Boolean;
    FxPais: string;
    FxPaisHasValue: Boolean;
    procedure SetxLgr(const Value: string);
    procedure Setnro(const Value: string);
    procedure SetxCpl(const Value: string);
    procedure SetxBairro(const Value: string);
    procedure SetcMun(const Value: Integer);
    procedure SetxMun(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetUF(const Value: string);
    procedure SetcPais(const Value: Integer);
    procedure SetxPais(const Value: string);
  public
    property xLgr: string read FxLgr write SetxLgr;
    property xLgrHasValue: Boolean read FxLgrHasValue write FxLgrHasValue;
    property nro: string read Fnro write Setnro;
    property nroHasValue: Boolean read FnroHasValue write FnroHasValue;
    property xCpl: string read FxCpl write SetxCpl;
    property xCplHasValue: Boolean read FxCplHasValue write FxCplHasValue;
    property xBairro: string read FxBairro write SetxBairro;
    property xBairroHasValue: Boolean read FxBairroHasValue write FxBairroHasValue;
    property cMun: Integer read FcMun write SetcMun;
    property cMunHasValue: Boolean read FcMunHasValue write FcMunHasValue;
    property xMun: string read FxMun write SetxMun;
    property xMunHasValue: Boolean read FxMunHasValue write FxMunHasValue;
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property cPais: Integer read FcPais write SetcPais;
    property cPaisHasValue: Boolean read FcPaisHasValue write FcPaisHasValue;
    property xPais: string read FxPais write SetxPais;
    property xPaisHasValue: Boolean read FxPaisHasValue write FxPaisHasValue;
  end;
  
  TCteSefazToma4 = class
  private
    Ftoma: Integer;
    FtomaHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FxNome: string;
    FxNomeHasValue: Boolean;
    FxFant: string;
    FxFantHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    FenderToma: TCteSefazEndereco;
    Femail: string;
    FemailHasValue: Boolean;
    procedure Settoma(const Value: Integer);
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetxNome(const Value: string);
    procedure SetxFant(const Value: string);
    procedure Setfone(const Value: string);
    procedure SetenderToma(const Value: TCteSefazEndereco);
    procedure Setemail(const Value: string);
  public
    destructor Destroy; override;
    property toma: Integer read Ftoma write Settoma;
    property tomaHasValue: Boolean read FtomaHasValue write FtomaHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property xFant: string read FxFant write SetxFant;
    property xFantHasValue: Boolean read FxFantHasValue write FxFantHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    property enderToma: TCteSefazEndereco read FenderToma write SetenderToma;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
  end;
  
  TCteSefazIde = class
  private
    FcUF: Integer;
    FcUFHasValue: Boolean;
    FcCT: Integer;
    FcCTHasValue: Boolean;
    FCFOP: Integer;
    FCFOPHasValue: Boolean;
    FnatOp: string;
    FnatOpHasValue: Boolean;
    Fmod: Integer;
    FmodHasValue: Boolean;
    Fserie: Integer;
    FserieHasValue: Boolean;
    FnCT: Integer;
    FnCTHasValue: Boolean;
    FdhEmi: TDateTime;
    FdhEmiHasValue: Boolean;
    FtpImp: Integer;
    FtpImpHasValue: Boolean;
    FtpEmis: Integer;
    FtpEmisHasValue: Boolean;
    FcDV: Integer;
    FcDVHasValue: Boolean;
    FtpAmb: Integer;
    FtpAmbHasValue: Boolean;
    FtpCTe: Integer;
    FtpCTeHasValue: Boolean;
    FprocEmi: Integer;
    FprocEmiHasValue: Boolean;
    FverProc: string;
    FverProcHasValue: Boolean;
    FindGlobalizado: Integer;
    FindGlobalizadoHasValue: Boolean;
    FcMunEnv: Integer;
    FcMunEnvHasValue: Boolean;
    FxMunEnv: string;
    FxMunEnvHasValue: Boolean;
    FUFEnv: string;
    FUFEnvHasValue: Boolean;
    Fmodal: string;
    FmodalHasValue: Boolean;
    FtpServ: Integer;
    FtpServHasValue: Boolean;
    FcMunIni: Integer;
    FcMunIniHasValue: Boolean;
    FxMunIni: string;
    FxMunIniHasValue: Boolean;
    FUFIni: string;
    FUFIniHasValue: Boolean;
    FcMunFim: Integer;
    FcMunFimHasValue: Boolean;
    FxMunFim: string;
    FxMunFimHasValue: Boolean;
    FUFFim: string;
    FUFFimHasValue: Boolean;
    Fretira: Integer;
    FretiraHasValue: Boolean;
    FxDetRetira: string;
    FxDetRetiraHasValue: Boolean;
    FindIEToma: Integer;
    FindIETomaHasValue: Boolean;
    Ftoma3: TCteSefazToma3;
    Ftoma4: TCteSefazToma4;
    FdhCont: TDateTime;
    FdhContHasValue: Boolean;
    FxJust: string;
    FxJustHasValue: Boolean;
    procedure SetcUF(const Value: Integer);
    procedure SetcCT(const Value: Integer);
    procedure SetCFOP(const Value: Integer);
    procedure SetnatOp(const Value: string);
    procedure Setmod(const Value: Integer);
    procedure Setserie(const Value: Integer);
    procedure SetnCT(const Value: Integer);
    procedure SetdhEmi(const Value: TDateTime);
    procedure SettpImp(const Value: Integer);
    procedure SettpEmis(const Value: Integer);
    procedure SetcDV(const Value: Integer);
    procedure SettpAmb(const Value: Integer);
    procedure SettpCTe(const Value: Integer);
    procedure SetprocEmi(const Value: Integer);
    procedure SetverProc(const Value: string);
    procedure SetindGlobalizado(const Value: Integer);
    procedure SetcMunEnv(const Value: Integer);
    procedure SetxMunEnv(const Value: string);
    procedure SetUFEnv(const Value: string);
    procedure Setmodal(const Value: string);
    procedure SettpServ(const Value: Integer);
    procedure SetcMunIni(const Value: Integer);
    procedure SetxMunIni(const Value: string);
    procedure SetUFIni(const Value: string);
    procedure SetcMunFim(const Value: Integer);
    procedure SetxMunFim(const Value: string);
    procedure SetUFFim(const Value: string);
    procedure Setretira(const Value: Integer);
    procedure SetxDetRetira(const Value: string);
    procedure SetindIEToma(const Value: Integer);
    procedure Settoma3(const Value: TCteSefazToma3);
    procedure Settoma4(const Value: TCteSefazToma4);
    procedure SetdhCont(const Value: TDateTime);
    procedure SetxJust(const Value: string);
  public
    destructor Destroy; override;
    property cUF: Integer read FcUF write SetcUF;
    property cUFHasValue: Boolean read FcUFHasValue write FcUFHasValue;
    property cCT: Integer read FcCT write SetcCT;
    property cCTHasValue: Boolean read FcCTHasValue write FcCTHasValue;
    property CFOP: Integer read FCFOP write SetCFOP;
    property CFOPHasValue: Boolean read FCFOPHasValue write FCFOPHasValue;
    property natOp: string read FnatOp write SetnatOp;
    property natOpHasValue: Boolean read FnatOpHasValue write FnatOpHasValue;
    property &mod: Integer read Fmod write Setmod;
    property &modHasValue: Boolean read FmodHasValue write FmodHasValue;
    property serie: Integer read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property nCT: Integer read FnCT write SetnCT;
    property nCTHasValue: Boolean read FnCTHasValue write FnCTHasValue;
    property dhEmi: TDateTime read FdhEmi write SetdhEmi;
    property dhEmiHasValue: Boolean read FdhEmiHasValue write FdhEmiHasValue;
    property tpImp: Integer read FtpImp write SettpImp;
    property tpImpHasValue: Boolean read FtpImpHasValue write FtpImpHasValue;
    property tpEmis: Integer read FtpEmis write SettpEmis;
    property tpEmisHasValue: Boolean read FtpEmisHasValue write FtpEmisHasValue;
    property cDV: Integer read FcDV write SetcDV;
    property cDVHasValue: Boolean read FcDVHasValue write FcDVHasValue;
    property tpAmb: Integer read FtpAmb write SettpAmb;
    property tpAmbHasValue: Boolean read FtpAmbHasValue write FtpAmbHasValue;
    property tpCTe: Integer read FtpCTe write SettpCTe;
    property tpCTeHasValue: Boolean read FtpCTeHasValue write FtpCTeHasValue;
    property procEmi: Integer read FprocEmi write SetprocEmi;
    property procEmiHasValue: Boolean read FprocEmiHasValue write FprocEmiHasValue;
    property verProc: string read FverProc write SetverProc;
    property verProcHasValue: Boolean read FverProcHasValue write FverProcHasValue;
    property indGlobalizado: Integer read FindGlobalizado write SetindGlobalizado;
    property indGlobalizadoHasValue: Boolean read FindGlobalizadoHasValue write FindGlobalizadoHasValue;
    property cMunEnv: Integer read FcMunEnv write SetcMunEnv;
    property cMunEnvHasValue: Boolean read FcMunEnvHasValue write FcMunEnvHasValue;
    property xMunEnv: string read FxMunEnv write SetxMunEnv;
    property xMunEnvHasValue: Boolean read FxMunEnvHasValue write FxMunEnvHasValue;
    property UFEnv: string read FUFEnv write SetUFEnv;
    property UFEnvHasValue: Boolean read FUFEnvHasValue write FUFEnvHasValue;
    property modal: string read Fmodal write Setmodal;
    property modalHasValue: Boolean read FmodalHasValue write FmodalHasValue;
    property tpServ: Integer read FtpServ write SettpServ;
    property tpServHasValue: Boolean read FtpServHasValue write FtpServHasValue;
    property cMunIni: Integer read FcMunIni write SetcMunIni;
    property cMunIniHasValue: Boolean read FcMunIniHasValue write FcMunIniHasValue;
    property xMunIni: string read FxMunIni write SetxMunIni;
    property xMunIniHasValue: Boolean read FxMunIniHasValue write FxMunIniHasValue;
    property UFIni: string read FUFIni write SetUFIni;
    property UFIniHasValue: Boolean read FUFIniHasValue write FUFIniHasValue;
    property cMunFim: Integer read FcMunFim write SetcMunFim;
    property cMunFimHasValue: Boolean read FcMunFimHasValue write FcMunFimHasValue;
    property xMunFim: string read FxMunFim write SetxMunFim;
    property xMunFimHasValue: Boolean read FxMunFimHasValue write FxMunFimHasValue;
    property UFFim: string read FUFFim write SetUFFim;
    property UFFimHasValue: Boolean read FUFFimHasValue write FUFFimHasValue;
    property retira: Integer read Fretira write Setretira;
    property retiraHasValue: Boolean read FretiraHasValue write FretiraHasValue;
    property xDetRetira: string read FxDetRetira write SetxDetRetira;
    property xDetRetiraHasValue: Boolean read FxDetRetiraHasValue write FxDetRetiraHasValue;
    property indIEToma: Integer read FindIEToma write SetindIEToma;
    property indIETomaHasValue: Boolean read FindIETomaHasValue write FindIETomaHasValue;
    property toma3: TCteSefazToma3 read Ftoma3 write Settoma3;
    property toma4: TCteSefazToma4 read Ftoma4 write Settoma4;
    property dhCont: TDateTime read FdhCont write SetdhCont;
    property dhContHasValue: Boolean read FdhContHasValue write FdhContHasValue;
    property xJust: string read FxJust write SetxJust;
    property xJustHasValue: Boolean read FxJustHasValue write FxJustHasValue;
  end;
  
  TCteSefazPass = class
  private
    FxPass: string;
    FxPassHasValue: Boolean;
    procedure SetxPass(const Value: string);
  public
    property xPass: string read FxPass write SetxPass;
    property xPassHasValue: Boolean read FxPassHasValue write FxPassHasValue;
  end;
  
  TCteSefazPassList = class(TObjectList<TCteSefazPass>)
  end;
  
  TCteSefazFluxo = class
  private
    FxOrig: string;
    FxOrigHasValue: Boolean;
    Fpass: TCteSefazPassList;
    FxDest: string;
    FxDestHasValue: Boolean;
    FxRota: string;
    FxRotaHasValue: Boolean;
    procedure SetxOrig(const Value: string);
    procedure Setpass(const Value: TCteSefazPassList);
    procedure SetxDest(const Value: string);
    procedure SetxRota(const Value: string);
  public
    destructor Destroy; override;
    property xOrig: string read FxOrig write SetxOrig;
    property xOrigHasValue: Boolean read FxOrigHasValue write FxOrigHasValue;
    property pass: TCteSefazPassList read Fpass write Setpass;
    property xDest: string read FxDest write SetxDest;
    property xDestHasValue: Boolean read FxDestHasValue write FxDestHasValue;
    property xRota: string read FxRota write SetxRota;
    property xRotaHasValue: Boolean read FxRotaHasValue write FxRotaHasValue;
  end;
  
  TCteSefazSemData = class
  private
    FtpPer: Integer;
    FtpPerHasValue: Boolean;
    procedure SettpPer(const Value: Integer);
  public
    property tpPer: Integer read FtpPer write SettpPer;
    property tpPerHasValue: Boolean read FtpPerHasValue write FtpPerHasValue;
  end;
  
  TCteSefazComData = class
  private
    FtpPer: Integer;
    FtpPerHasValue: Boolean;
    FdProg: TDate;
    FdProgHasValue: Boolean;
    procedure SettpPer(const Value: Integer);
    procedure SetdProg(const Value: TDate);
  public
    property tpPer: Integer read FtpPer write SettpPer;
    property tpPerHasValue: Boolean read FtpPerHasValue write FtpPerHasValue;
    property dProg: TDate read FdProg write SetdProg;
    property dProgHasValue: Boolean read FdProgHasValue write FdProgHasValue;
  end;
  
  TCteSefazNoPeriodo = class
  private
    FtpPer: Integer;
    FtpPerHasValue: Boolean;
    FdIni: TDate;
    FdIniHasValue: Boolean;
    FdFim: TDate;
    FdFimHasValue: Boolean;
    procedure SettpPer(const Value: Integer);
    procedure SetdIni(const Value: TDate);
    procedure SetdFim(const Value: TDate);
  public
    property tpPer: Integer read FtpPer write SettpPer;
    property tpPerHasValue: Boolean read FtpPerHasValue write FtpPerHasValue;
    property dIni: TDate read FdIni write SetdIni;
    property dIniHasValue: Boolean read FdIniHasValue write FdIniHasValue;
    property dFim: TDate read FdFim write SetdFim;
    property dFimHasValue: Boolean read FdFimHasValue write FdFimHasValue;
  end;
  
  TCteSefazSemHora = class
  private
    FtpHor: Integer;
    FtpHorHasValue: Boolean;
    procedure SettpHor(const Value: Integer);
  public
    property tpHor: Integer read FtpHor write SettpHor;
    property tpHorHasValue: Boolean read FtpHorHasValue write FtpHorHasValue;
  end;
  
  TCteSefazComHora = class
  private
    FtpHor: Integer;
    FtpHorHasValue: Boolean;
    FhProg: string;
    FhProgHasValue: Boolean;
    procedure SettpHor(const Value: Integer);
    procedure SethProg(const Value: string);
  public
    property tpHor: Integer read FtpHor write SettpHor;
    property tpHorHasValue: Boolean read FtpHorHasValue write FtpHorHasValue;
    property hProg: string read FhProg write SethProg;
    property hProgHasValue: Boolean read FhProgHasValue write FhProgHasValue;
  end;
  
  TCteSefazNoInter = class
  private
    FtpHor: Integer;
    FtpHorHasValue: Boolean;
    FhIni: string;
    FhIniHasValue: Boolean;
    FhFim: string;
    FhFimHasValue: Boolean;
    procedure SettpHor(const Value: Integer);
    procedure SethIni(const Value: string);
    procedure SethFim(const Value: string);
  public
    property tpHor: Integer read FtpHor write SettpHor;
    property tpHorHasValue: Boolean read FtpHorHasValue write FtpHorHasValue;
    property hIni: string read FhIni write SethIni;
    property hIniHasValue: Boolean read FhIniHasValue write FhIniHasValue;
    property hFim: string read FhFim write SethFim;
    property hFimHasValue: Boolean read FhFimHasValue write FhFimHasValue;
  end;
  
  TCteSefazEntrega = class
  private
    FsemData: TCteSefazSemData;
    FcomData: TCteSefazComData;
    FnoPeriodo: TCteSefazNoPeriodo;
    FsemHora: TCteSefazSemHora;
    FcomHora: TCteSefazComHora;
    FnoInter: TCteSefazNoInter;
    procedure SetsemData(const Value: TCteSefazSemData);
    procedure SetcomData(const Value: TCteSefazComData);
    procedure SetnoPeriodo(const Value: TCteSefazNoPeriodo);
    procedure SetsemHora(const Value: TCteSefazSemHora);
    procedure SetcomHora(const Value: TCteSefazComHora);
    procedure SetnoInter(const Value: TCteSefazNoInter);
  public
    destructor Destroy; override;
    property semData: TCteSefazSemData read FsemData write SetsemData;
    property comData: TCteSefazComData read FcomData write SetcomData;
    property noPeriodo: TCteSefazNoPeriodo read FnoPeriodo write SetnoPeriodo;
    property semHora: TCteSefazSemHora read FsemHora write SetsemHora;
    property comHora: TCteSefazComHora read FcomHora write SetcomHora;
    property noInter: TCteSefazNoInter read FnoInter write SetnoInter;
  end;
  
  TCteSefazObsCont = class
  private
    FxCampo: string;
    FxCampoHasValue: Boolean;
    FxTexto: string;
    FxTextoHasValue: Boolean;
    procedure SetxCampo(const Value: string);
    procedure SetxTexto(const Value: string);
  public
    property xCampo: string read FxCampo write SetxCampo;
    property xCampoHasValue: Boolean read FxCampoHasValue write FxCampoHasValue;
    property xTexto: string read FxTexto write SetxTexto;
    property xTextoHasValue: Boolean read FxTextoHasValue write FxTextoHasValue;
  end;
  
  TCteSefazObsContList = class(TObjectList<TCteSefazObsCont>)
  end;
  
  TCteSefazObsFisco = class
  private
    FxCampo: string;
    FxCampoHasValue: Boolean;
    FxTexto: string;
    FxTextoHasValue: Boolean;
    procedure SetxCampo(const Value: string);
    procedure SetxTexto(const Value: string);
  public
    property xCampo: string read FxCampo write SetxCampo;
    property xCampoHasValue: Boolean read FxCampoHasValue write FxCampoHasValue;
    property xTexto: string read FxTexto write SetxTexto;
    property xTextoHasValue: Boolean read FxTextoHasValue write FxTextoHasValue;
  end;
  
  TCteSefazObsFiscoList = class(TObjectList<TCteSefazObsFisco>)
  end;
  
  TCteSefazCompl = class
  private
    FxCaracAd: string;
    FxCaracAdHasValue: Boolean;
    FxCaracSer: string;
    FxCaracSerHasValue: Boolean;
    FxEmi: string;
    FxEmiHasValue: Boolean;
    Ffluxo: TCteSefazFluxo;
    FEntrega: TCteSefazEntrega;
    ForigCalc: string;
    ForigCalcHasValue: Boolean;
    FdestCalc: string;
    FdestCalcHasValue: Boolean;
    FxObs: string;
    FxObsHasValue: Boolean;
    FObsCont: TCteSefazObsContList;
    FObsFisco: TCteSefazObsFiscoList;
    procedure SetxCaracAd(const Value: string);
    procedure SetxCaracSer(const Value: string);
    procedure SetxEmi(const Value: string);
    procedure Setfluxo(const Value: TCteSefazFluxo);
    procedure SetEntrega(const Value: TCteSefazEntrega);
    procedure SetorigCalc(const Value: string);
    procedure SetdestCalc(const Value: string);
    procedure SetxObs(const Value: string);
    procedure SetObsCont(const Value: TCteSefazObsContList);
    procedure SetObsFisco(const Value: TCteSefazObsFiscoList);
  public
    destructor Destroy; override;
    property xCaracAd: string read FxCaracAd write SetxCaracAd;
    property xCaracAdHasValue: Boolean read FxCaracAdHasValue write FxCaracAdHasValue;
    property xCaracSer: string read FxCaracSer write SetxCaracSer;
    property xCaracSerHasValue: Boolean read FxCaracSerHasValue write FxCaracSerHasValue;
    property xEmi: string read FxEmi write SetxEmi;
    property xEmiHasValue: Boolean read FxEmiHasValue write FxEmiHasValue;
    property fluxo: TCteSefazFluxo read Ffluxo write Setfluxo;
    property Entrega: TCteSefazEntrega read FEntrega write SetEntrega;
    property origCalc: string read ForigCalc write SetorigCalc;
    property origCalcHasValue: Boolean read ForigCalcHasValue write ForigCalcHasValue;
    property destCalc: string read FdestCalc write SetdestCalc;
    property destCalcHasValue: Boolean read FdestCalcHasValue write FdestCalcHasValue;
    property xObs: string read FxObs write SetxObs;
    property xObsHasValue: Boolean read FxObsHasValue write FxObsHasValue;
    property ObsCont: TCteSefazObsContList read FObsCont write SetObsCont;
    property ObsFisco: TCteSefazObsFiscoList read FObsFisco write SetObsFisco;
  end;
  
  TCteSefazEndeEmi = class
  private
    FxLgr: string;
    FxLgrHasValue: Boolean;
    Fnro: string;
    FnroHasValue: Boolean;
    FxCpl: string;
    FxCplHasValue: Boolean;
    FxBairro: string;
    FxBairroHasValue: Boolean;
    FcMun: Integer;
    FcMunHasValue: Boolean;
    FxMun: string;
    FxMunHasValue: Boolean;
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    procedure SetxLgr(const Value: string);
    procedure Setnro(const Value: string);
    procedure SetxCpl(const Value: string);
    procedure SetxBairro(const Value: string);
    procedure SetcMun(const Value: Integer);
    procedure SetxMun(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetUF(const Value: string);
    procedure Setfone(const Value: string);
  public
    property xLgr: string read FxLgr write SetxLgr;
    property xLgrHasValue: Boolean read FxLgrHasValue write FxLgrHasValue;
    property nro: string read Fnro write Setnro;
    property nroHasValue: Boolean read FnroHasValue write FnroHasValue;
    property xCpl: string read FxCpl write SetxCpl;
    property xCplHasValue: Boolean read FxCplHasValue write FxCplHasValue;
    property xBairro: string read FxBairro write SetxBairro;
    property xBairroHasValue: Boolean read FxBairroHasValue write FxBairroHasValue;
    property cMun: Integer read FcMun write SetcMun;
    property cMunHasValue: Boolean read FcMunHasValue write FcMunHasValue;
    property xMun: string read FxMun write SetxMun;
    property xMunHasValue: Boolean read FxMunHasValue write FxMunHasValue;
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
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
    FxNome: string;
    FxNomeHasValue: Boolean;
    FxFant: string;
    FxFantHasValue: Boolean;
    FenderEmit: TCteSefazEndeEmi;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetIEST(const Value: string);
    procedure SetxNome(const Value: string);
    procedure SetxFant(const Value: string);
    procedure SetenderEmit(const Value: TCteSefazEndeEmi);
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
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property xFant: string read FxFant write SetxFant;
    property xFantHasValue: Boolean read FxFantHasValue write FxFantHasValue;
    property enderEmit: TCteSefazEndeEmi read FenderEmit write SetenderEmit;
  end;
  
  TCteSefazRem = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FxNome: string;
    FxNomeHasValue: Boolean;
    FxFant: string;
    FxFantHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    FenderReme: TCteSefazEndereco;
    Femail: string;
    FemailHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetxNome(const Value: string);
    procedure SetxFant(const Value: string);
    procedure Setfone(const Value: string);
    procedure SetenderReme(const Value: TCteSefazEndereco);
    procedure Setemail(const Value: string);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property xFant: string read FxFant write SetxFant;
    property xFantHasValue: Boolean read FxFantHasValue write FxFantHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    property enderReme: TCteSefazEndereco read FenderReme write SetenderReme;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
  end;
  
  TCteSefazExped = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FxNome: string;
    FxNomeHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    FenderExped: TCteSefazEndereco;
    Femail: string;
    FemailHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetxNome(const Value: string);
    procedure Setfone(const Value: string);
    procedure SetenderExped(const Value: TCteSefazEndereco);
    procedure Setemail(const Value: string);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    property enderExped: TCteSefazEndereco read FenderExped write SetenderExped;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
  end;
  
  TCteSefazReceb = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FxNome: string;
    FxNomeHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    FenderReceb: TCteSefazEndereco;
    Femail: string;
    FemailHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetxNome(const Value: string);
    procedure Setfone(const Value: string);
    procedure SetenderReceb(const Value: TCteSefazEndereco);
    procedure Setemail(const Value: string);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    property enderReceb: TCteSefazEndereco read FenderReceb write SetenderReceb;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
  end;
  
  TCteSefazDest = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FxNome: string;
    FxNomeHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    FISUF: string;
    FISUFHasValue: Boolean;
    FenderDest: TCteSefazEndereco;
    Femail: string;
    FemailHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetxNome(const Value: string);
    procedure Setfone(const Value: string);
    procedure SetISUF(const Value: string);
    procedure SetenderDest(const Value: TCteSefazEndereco);
    procedure Setemail(const Value: string);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    property ISUF: string read FISUF write SetISUF;
    property ISUFHasValue: Boolean read FISUFHasValue write FISUFHasValue;
    property enderDest: TCteSefazEndereco read FenderDest write SetenderDest;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
  end;
  
  TCteSefazComp = class
  private
    FxNome: string;
    FxNomeHasValue: Boolean;
    FvComp: Double;
    FvCompHasValue: Boolean;
    procedure SetxNome(const Value: string);
    procedure SetvComp(const Value: Double);
  public
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property vComp: Double read FvComp write SetvComp;
    property vCompHasValue: Boolean read FvCompHasValue write FvCompHasValue;
  end;
  
  TCteSefazCompList = class(TObjectList<TCteSefazComp>)
  end;
  
  TCteSefazVPrest = class
  private
    FvTPrest: Double;
    FvTPrestHasValue: Boolean;
    FvRec: Double;
    FvRecHasValue: Boolean;
    FComp: TCteSefazCompList;
    procedure SetvTPrest(const Value: Double);
    procedure SetvRec(const Value: Double);
    procedure SetComp(const Value: TCteSefazCompList);
  public
    destructor Destroy; override;
    property vTPrest: Double read FvTPrest write SetvTPrest;
    property vTPrestHasValue: Boolean read FvTPrestHasValue write FvTPrestHasValue;
    property vRec: Double read FvRec write SetvRec;
    property vRecHasValue: Boolean read FvRecHasValue write FvRecHasValue;
    property Comp: TCteSefazCompList read FComp write SetComp;
  end;
  
  TCteSefazICMS00 = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpICMS: Double;
    FpICMSHasValue: Boolean;
    FvICMS: Double;
    FvICMSHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetvBC(const Value: Double);
    procedure SetpICMS(const Value: Double);
    procedure SetvICMS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pICMS: Double read FpICMS write SetpICMS;
    property pICMSHasValue: Boolean read FpICMSHasValue write FpICMSHasValue;
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
  end;
  
  TCteSefazICMS20 = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FpRedBC: Double;
    FpRedBCHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpICMS: Double;
    FpICMSHasValue: Boolean;
    FvICMS: Double;
    FvICMSHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetpRedBC(const Value: Double);
    procedure SetvBC(const Value: Double);
    procedure SetpICMS(const Value: Double);
    procedure SetvICMS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property pRedBC: Double read FpRedBC write SetpRedBC;
    property pRedBCHasValue: Boolean read FpRedBCHasValue write FpRedBCHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pICMS: Double read FpICMS write SetpICMS;
    property pICMSHasValue: Boolean read FpICMSHasValue write FpICMSHasValue;
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
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
    FvBCSTRet: Double;
    FvBCSTRetHasValue: Boolean;
    FvICMSSTRet: Double;
    FvICMSSTRetHasValue: Boolean;
    FpICMSSTRet: Double;
    FpICMSSTRetHasValue: Boolean;
    FvCred: Double;
    FvCredHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetvBCSTRet(const Value: Double);
    procedure SetvICMSSTRet(const Value: Double);
    procedure SetpICMSSTRet(const Value: Double);
    procedure SetvCred(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property vBCSTRet: Double read FvBCSTRet write SetvBCSTRet;
    property vBCSTRetHasValue: Boolean read FvBCSTRetHasValue write FvBCSTRetHasValue;
    property vICMSSTRet: Double read FvICMSSTRet write SetvICMSSTRet;
    property vICMSSTRetHasValue: Boolean read FvICMSSTRetHasValue write FvICMSSTRetHasValue;
    property pICMSSTRet: Double read FpICMSSTRet write SetpICMSSTRet;
    property pICMSSTRetHasValue: Boolean read FpICMSSTRetHasValue write FpICMSSTRetHasValue;
    property vCred: Double read FvCred write SetvCred;
    property vCredHasValue: Boolean read FvCredHasValue write FvCredHasValue;
  end;
  
  TCteSefazICMS90 = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FpRedBC: Double;
    FpRedBCHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpICMS: Double;
    FpICMSHasValue: Boolean;
    FvICMS: Double;
    FvICMSHasValue: Boolean;
    FvCred: Double;
    FvCredHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetpRedBC(const Value: Double);
    procedure SetvBC(const Value: Double);
    procedure SetpICMS(const Value: Double);
    procedure SetvICMS(const Value: Double);
    procedure SetvCred(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property pRedBC: Double read FpRedBC write SetpRedBC;
    property pRedBCHasValue: Boolean read FpRedBCHasValue write FpRedBCHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pICMS: Double read FpICMS write SetpICMS;
    property pICMSHasValue: Boolean read FpICMSHasValue write FpICMSHasValue;
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
    property vCred: Double read FvCred write SetvCred;
    property vCredHasValue: Boolean read FvCredHasValue write FvCredHasValue;
  end;
  
  TCteSefazICMSOutraUF = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FpRedBCOutraUF: Double;
    FpRedBCOutraUFHasValue: Boolean;
    FvBCOutraUF: Double;
    FvBCOutraUFHasValue: Boolean;
    FpICMSOutraUF: Double;
    FpICMSOutraUFHasValue: Boolean;
    FvICMSOutraUF: Double;
    FvICMSOutraUFHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetpRedBCOutraUF(const Value: Double);
    procedure SetvBCOutraUF(const Value: Double);
    procedure SetpICMSOutraUF(const Value: Double);
    procedure SetvICMSOutraUF(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property pRedBCOutraUF: Double read FpRedBCOutraUF write SetpRedBCOutraUF;
    property pRedBCOutraUFHasValue: Boolean read FpRedBCOutraUFHasValue write FpRedBCOutraUFHasValue;
    property vBCOutraUF: Double read FvBCOutraUF write SetvBCOutraUF;
    property vBCOutraUFHasValue: Boolean read FvBCOutraUFHasValue write FvBCOutraUFHasValue;
    property pICMSOutraUF: Double read FpICMSOutraUF write SetpICMSOutraUF;
    property pICMSOutraUFHasValue: Boolean read FpICMSOutraUFHasValue write FpICMSOutraUFHasValue;
    property vICMSOutraUF: Double read FvICMSOutraUF write SetvICMSOutraUF;
    property vICMSOutraUFHasValue: Boolean read FvICMSOutraUFHasValue write FvICMSOutraUFHasValue;
  end;
  
  TCteSefazICMSSN = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FindSN: Integer;
    FindSNHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetindSN(const Value: Integer);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property indSN: Integer read FindSN write SetindSN;
    property indSNHasValue: Boolean read FindSNHasValue write FindSNHasValue;
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
    FvBCUFFim: Double;
    FvBCUFFimHasValue: Boolean;
    FpFCPUFFim: Double;
    FpFCPUFFimHasValue: Boolean;
    FpICMSUFFim: Double;
    FpICMSUFFimHasValue: Boolean;
    FpICMSInter: Double;
    FpICMSInterHasValue: Boolean;
    FvFCPUFFim: Double;
    FvFCPUFFimHasValue: Boolean;
    FvICMSUFFim: Double;
    FvICMSUFFimHasValue: Boolean;
    FvICMSUFIni: Double;
    FvICMSUFIniHasValue: Boolean;
    procedure SetvBCUFFim(const Value: Double);
    procedure SetpFCPUFFim(const Value: Double);
    procedure SetpICMSUFFim(const Value: Double);
    procedure SetpICMSInter(const Value: Double);
    procedure SetvFCPUFFim(const Value: Double);
    procedure SetvICMSUFFim(const Value: Double);
    procedure SetvICMSUFIni(const Value: Double);
  public
    property vBCUFFim: Double read FvBCUFFim write SetvBCUFFim;
    property vBCUFFimHasValue: Boolean read FvBCUFFimHasValue write FvBCUFFimHasValue;
    property pFCPUFFim: Double read FpFCPUFFim write SetpFCPUFFim;
    property pFCPUFFimHasValue: Boolean read FpFCPUFFimHasValue write FpFCPUFFimHasValue;
    property pICMSUFFim: Double read FpICMSUFFim write SetpICMSUFFim;
    property pICMSUFFimHasValue: Boolean read FpICMSUFFimHasValue write FpICMSUFFimHasValue;
    property pICMSInter: Double read FpICMSInter write SetpICMSInter;
    property pICMSInterHasValue: Boolean read FpICMSInterHasValue write FpICMSInterHasValue;
    property vFCPUFFim: Double read FvFCPUFFim write SetvFCPUFFim;
    property vFCPUFFimHasValue: Boolean read FvFCPUFFimHasValue write FvFCPUFFimHasValue;
    property vICMSUFFim: Double read FvICMSUFFim write SetvICMSUFFim;
    property vICMSUFFimHasValue: Boolean read FvICMSUFFimHasValue write FvICMSUFFimHasValue;
    property vICMSUFIni: Double read FvICMSUFIni write SetvICMSUFIni;
    property vICMSUFIniHasValue: Boolean read FvICMSUFIniHasValue write FvICMSUFIniHasValue;
  end;
  
  TCteSefazInfCteImp = class
  private
    FICMS: TCteSefazImp;
    FvTotTrib: Double;
    FvTotTribHasValue: Boolean;
    FinfAdFisco: string;
    FinfAdFiscoHasValue: Boolean;
    FICMSUFFim: TCteSefazICMSUFFim;
    procedure SetICMS(const Value: TCteSefazImp);
    procedure SetvTotTrib(const Value: Double);
    procedure SetinfAdFisco(const Value: string);
    procedure SetICMSUFFim(const Value: TCteSefazICMSUFFim);
  public
    destructor Destroy; override;
    property ICMS: TCteSefazImp read FICMS write SetICMS;
    property vTotTrib: Double read FvTotTrib write SetvTotTrib;
    property vTotTribHasValue: Boolean read FvTotTribHasValue write FvTotTribHasValue;
    property infAdFisco: string read FinfAdFisco write SetinfAdFisco;
    property infAdFiscoHasValue: Boolean read FinfAdFiscoHasValue write FinfAdFiscoHasValue;
    property ICMSUFFim: TCteSefazICMSUFFim read FICMSUFFim write SetICMSUFFim;
  end;
  
  TCteSefazInfQ = class
  private
    FcUnid: string;
    FcUnidHasValue: Boolean;
    FtpMed: string;
    FtpMedHasValue: Boolean;
    FqCarga: Double;
    FqCargaHasValue: Boolean;
    procedure SetcUnid(const Value: string);
    procedure SettpMed(const Value: string);
    procedure SetqCarga(const Value: Double);
  public
    property cUnid: string read FcUnid write SetcUnid;
    property cUnidHasValue: Boolean read FcUnidHasValue write FcUnidHasValue;
    property tpMed: string read FtpMed write SettpMed;
    property tpMedHasValue: Boolean read FtpMedHasValue write FtpMedHasValue;
    property qCarga: Double read FqCarga write SetqCarga;
    property qCargaHasValue: Boolean read FqCargaHasValue write FqCargaHasValue;
  end;
  
  TCteSefazInfQList = class(TObjectList<TCteSefazInfQ>)
  end;
  
  TCteSefazInfCarga = class
  private
    FvCarga: Double;
    FvCargaHasValue: Boolean;
    FproPred: string;
    FproPredHasValue: Boolean;
    FxOutCat: string;
    FxOutCatHasValue: Boolean;
    FinfQ: TCteSefazInfQList;
    FvCargaAverb: Double;
    FvCargaAverbHasValue: Boolean;
    procedure SetvCarga(const Value: Double);
    procedure SetproPred(const Value: string);
    procedure SetxOutCat(const Value: string);
    procedure SetinfQ(const Value: TCteSefazInfQList);
    procedure SetvCargaAverb(const Value: Double);
  public
    destructor Destroy; override;
    property vCarga: Double read FvCarga write SetvCarga;
    property vCargaHasValue: Boolean read FvCargaHasValue write FvCargaHasValue;
    property proPred: string read FproPred write SetproPred;
    property proPredHasValue: Boolean read FproPredHasValue write FproPredHasValue;
    property xOutCat: string read FxOutCat write SetxOutCat;
    property xOutCatHasValue: Boolean read FxOutCatHasValue write FxOutCatHasValue;
    property infQ: TCteSefazInfQList read FinfQ write SetinfQ;
    property vCargaAverb: Double read FvCargaAverb write SetvCargaAverb;
    property vCargaAverbHasValue: Boolean read FvCargaAverbHasValue write FvCargaAverbHasValue;
  end;
  
  TCteSefazLacUnidCarga = class
  private
    FnLacre: string;
    FnLacreHasValue: Boolean;
    procedure SetnLacre(const Value: string);
  public
    property nLacre: string read FnLacre write SetnLacre;
    property nLacreHasValue: Boolean read FnLacreHasValue write FnLacreHasValue;
  end;
  
  TCteSefazLacUnidCargaList = class(TObjectList<TCteSefazLacUnidCarga>)
  end;
  
  TCteSefazUnidCarga = class
  private
    FtpUnidCarga: Integer;
    FtpUnidCargaHasValue: Boolean;
    FidUnidCarga: string;
    FidUnidCargaHasValue: Boolean;
    FlacUnidCarga: TCteSefazLacUnidCargaList;
    FqtdRat: Double;
    FqtdRatHasValue: Boolean;
    procedure SettpUnidCarga(const Value: Integer);
    procedure SetidUnidCarga(const Value: string);
    procedure SetlacUnidCarga(const Value: TCteSefazLacUnidCargaList);
    procedure SetqtdRat(const Value: Double);
  public
    destructor Destroy; override;
    property tpUnidCarga: Integer read FtpUnidCarga write SettpUnidCarga;
    property tpUnidCargaHasValue: Boolean read FtpUnidCargaHasValue write FtpUnidCargaHasValue;
    property idUnidCarga: string read FidUnidCarga write SetidUnidCarga;
    property idUnidCargaHasValue: Boolean read FidUnidCargaHasValue write FidUnidCargaHasValue;
    property lacUnidCarga: TCteSefazLacUnidCargaList read FlacUnidCarga write SetlacUnidCarga;
    property qtdRat: Double read FqtdRat write SetqtdRat;
    property qtdRatHasValue: Boolean read FqtdRatHasValue write FqtdRatHasValue;
  end;
  
  TCteSefazUnidCargaList = class(TObjectList<TCteSefazUnidCarga>)
  end;
  
  TCteSefazLacUnidTransp = class
  private
    FnLacre: string;
    FnLacreHasValue: Boolean;
    procedure SetnLacre(const Value: string);
  public
    property nLacre: string read FnLacre write SetnLacre;
    property nLacreHasValue: Boolean read FnLacreHasValue write FnLacreHasValue;
  end;
  
  TCteSefazLacUnidTranspList = class(TObjectList<TCteSefazLacUnidTransp>)
  end;
  
  TCteSefazUnidadeTransp = class
  private
    FtpUnidTransp: Integer;
    FtpUnidTranspHasValue: Boolean;
    FidUnidTransp: string;
    FidUnidTranspHasValue: Boolean;
    FlacUnidTransp: TCteSefazLacUnidTranspList;
    FinfUnidCarga: TCteSefazUnidCargaList;
    FqtdRat: Double;
    FqtdRatHasValue: Boolean;
    procedure SettpUnidTransp(const Value: Integer);
    procedure SetidUnidTransp(const Value: string);
    procedure SetlacUnidTransp(const Value: TCteSefazLacUnidTranspList);
    procedure SetinfUnidCarga(const Value: TCteSefazUnidCargaList);
    procedure SetqtdRat(const Value: Double);
  public
    destructor Destroy; override;
    property tpUnidTransp: Integer read FtpUnidTransp write SettpUnidTransp;
    property tpUnidTranspHasValue: Boolean read FtpUnidTranspHasValue write FtpUnidTranspHasValue;
    property idUnidTransp: string read FidUnidTransp write SetidUnidTransp;
    property idUnidTranspHasValue: Boolean read FidUnidTranspHasValue write FidUnidTranspHasValue;
    property lacUnidTransp: TCteSefazLacUnidTranspList read FlacUnidTransp write SetlacUnidTransp;
    property infUnidCarga: TCteSefazUnidCargaList read FinfUnidCarga write SetinfUnidCarga;
    property qtdRat: Double read FqtdRat write SetqtdRat;
    property qtdRatHasValue: Boolean read FqtdRatHasValue write FqtdRatHasValue;
  end;
  
  TCteSefazUnidadeTranspList = class(TObjectList<TCteSefazUnidadeTransp>)
  end;
  
  TCteSefazInfNF = class
  private
    FnRoma: string;
    FnRomaHasValue: Boolean;
    FnPed: string;
    FnPedHasValue: Boolean;
    Fmod: string;
    FmodHasValue: Boolean;
    Fserie: string;
    FserieHasValue: Boolean;
    FnDoc: string;
    FnDocHasValue: Boolean;
    FdEmi: TDate;
    FdEmiHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FvICMS: Double;
    FvICMSHasValue: Boolean;
    FvBCST: Double;
    FvBCSTHasValue: Boolean;
    FvST: Double;
    FvSTHasValue: Boolean;
    FvProd: Double;
    FvProdHasValue: Boolean;
    FvNF: Double;
    FvNFHasValue: Boolean;
    FnCFOP: Integer;
    FnCFOPHasValue: Boolean;
    FnPeso: Double;
    FnPesoHasValue: Boolean;
    FPIN: string;
    FPINHasValue: Boolean;
    FdPrev: TDate;
    FdPrevHasValue: Boolean;
    FinfUnidCarga: TCteSefazUnidCargaList;
    FinfUnidTransp: TCteSefazUnidadeTranspList;
    procedure SetnRoma(const Value: string);
    procedure SetnPed(const Value: string);
    procedure Setmod(const Value: string);
    procedure Setserie(const Value: string);
    procedure SetnDoc(const Value: string);
    procedure SetdEmi(const Value: TDate);
    procedure SetvBC(const Value: Double);
    procedure SetvICMS(const Value: Double);
    procedure SetvBCST(const Value: Double);
    procedure SetvST(const Value: Double);
    procedure SetvProd(const Value: Double);
    procedure SetvNF(const Value: Double);
    procedure SetnCFOP(const Value: Integer);
    procedure SetnPeso(const Value: Double);
    procedure SetPIN(const Value: string);
    procedure SetdPrev(const Value: TDate);
    procedure SetinfUnidCarga(const Value: TCteSefazUnidCargaList);
    procedure SetinfUnidTransp(const Value: TCteSefazUnidadeTranspList);
  public
    destructor Destroy; override;
    property nRoma: string read FnRoma write SetnRoma;
    property nRomaHasValue: Boolean read FnRomaHasValue write FnRomaHasValue;
    property nPed: string read FnPed write SetnPed;
    property nPedHasValue: Boolean read FnPedHasValue write FnPedHasValue;
    property &mod: string read Fmod write Setmod;
    property &modHasValue: Boolean read FmodHasValue write FmodHasValue;
    property serie: string read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property nDoc: string read FnDoc write SetnDoc;
    property nDocHasValue: Boolean read FnDocHasValue write FnDocHasValue;
    property dEmi: TDate read FdEmi write SetdEmi;
    property dEmiHasValue: Boolean read FdEmiHasValue write FdEmiHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
    property vBCST: Double read FvBCST write SetvBCST;
    property vBCSTHasValue: Boolean read FvBCSTHasValue write FvBCSTHasValue;
    property vST: Double read FvST write SetvST;
    property vSTHasValue: Boolean read FvSTHasValue write FvSTHasValue;
    property vProd: Double read FvProd write SetvProd;
    property vProdHasValue: Boolean read FvProdHasValue write FvProdHasValue;
    property vNF: Double read FvNF write SetvNF;
    property vNFHasValue: Boolean read FvNFHasValue write FvNFHasValue;
    property nCFOP: Integer read FnCFOP write SetnCFOP;
    property nCFOPHasValue: Boolean read FnCFOPHasValue write FnCFOPHasValue;
    property nPeso: Double read FnPeso write SetnPeso;
    property nPesoHasValue: Boolean read FnPesoHasValue write FnPesoHasValue;
    property PIN: string read FPIN write SetPIN;
    property PINHasValue: Boolean read FPINHasValue write FPINHasValue;
    property dPrev: TDate read FdPrev write SetdPrev;
    property dPrevHasValue: Boolean read FdPrevHasValue write FdPrevHasValue;
    property infUnidCarga: TCteSefazUnidCargaList read FinfUnidCarga write SetinfUnidCarga;
    property infUnidTransp: TCteSefazUnidadeTranspList read FinfUnidTransp write SetinfUnidTransp;
  end;
  
  TCteSefazInfNFList = class(TObjectList<TCteSefazInfNF>)
  end;
  
  TCteSefazInfNFe = class
  private
    Fchave: string;
    FchaveHasValue: Boolean;
    FPIN: string;
    FPINHasValue: Boolean;
    FdPrev: TDate;
    FdPrevHasValue: Boolean;
    FinfUnidCarga: TCteSefazUnidCargaList;
    FinfUnidTransp: TCteSefazUnidadeTranspList;
    procedure Setchave(const Value: string);
    procedure SetPIN(const Value: string);
    procedure SetdPrev(const Value: TDate);
    procedure SetinfUnidCarga(const Value: TCteSefazUnidCargaList);
    procedure SetinfUnidTransp(const Value: TCteSefazUnidadeTranspList);
  public
    destructor Destroy; override;
    property chave: string read Fchave write Setchave;
    property chaveHasValue: Boolean read FchaveHasValue write FchaveHasValue;
    property PIN: string read FPIN write SetPIN;
    property PINHasValue: Boolean read FPINHasValue write FPINHasValue;
    property dPrev: TDate read FdPrev write SetdPrev;
    property dPrevHasValue: Boolean read FdPrevHasValue write FdPrevHasValue;
    property infUnidCarga: TCteSefazUnidCargaList read FinfUnidCarga write SetinfUnidCarga;
    property infUnidTransp: TCteSefazUnidadeTranspList read FinfUnidTransp write SetinfUnidTransp;
  end;
  
  TCteSefazInfNFeList = class(TObjectList<TCteSefazInfNFe>)
  end;
  
  TCteSefazInfOutros = class
  private
    FtpDoc: string;
    FtpDocHasValue: Boolean;
    FdescOutros: string;
    FdescOutrosHasValue: Boolean;
    FnDoc: string;
    FnDocHasValue: Boolean;
    FdEmi: TDate;
    FdEmiHasValue: Boolean;
    FvDocFisc: Double;
    FvDocFiscHasValue: Boolean;
    FdPrev: TDate;
    FdPrevHasValue: Boolean;
    FinfUnidCarga: TCteSefazUnidCargaList;
    FinfUnidTransp: TCteSefazUnidadeTranspList;
    procedure SettpDoc(const Value: string);
    procedure SetdescOutros(const Value: string);
    procedure SetnDoc(const Value: string);
    procedure SetdEmi(const Value: TDate);
    procedure SetvDocFisc(const Value: Double);
    procedure SetdPrev(const Value: TDate);
    procedure SetinfUnidCarga(const Value: TCteSefazUnidCargaList);
    procedure SetinfUnidTransp(const Value: TCteSefazUnidadeTranspList);
  public
    destructor Destroy; override;
    property tpDoc: string read FtpDoc write SettpDoc;
    property tpDocHasValue: Boolean read FtpDocHasValue write FtpDocHasValue;
    property descOutros: string read FdescOutros write SetdescOutros;
    property descOutrosHasValue: Boolean read FdescOutrosHasValue write FdescOutrosHasValue;
    property nDoc: string read FnDoc write SetnDoc;
    property nDocHasValue: Boolean read FnDocHasValue write FnDocHasValue;
    property dEmi: TDate read FdEmi write SetdEmi;
    property dEmiHasValue: Boolean read FdEmiHasValue write FdEmiHasValue;
    property vDocFisc: Double read FvDocFisc write SetvDocFisc;
    property vDocFiscHasValue: Boolean read FvDocFiscHasValue write FvDocFiscHasValue;
    property dPrev: TDate read FdPrev write SetdPrev;
    property dPrevHasValue: Boolean read FdPrevHasValue write FdPrevHasValue;
    property infUnidCarga: TCteSefazUnidCargaList read FinfUnidCarga write SetinfUnidCarga;
    property infUnidTransp: TCteSefazUnidadeTranspList read FinfUnidTransp write SetinfUnidTransp;
  end;
  
  TCteSefazInfOutrosList = class(TObjectList<TCteSefazInfOutros>)
  end;
  
  TCteSefazInfDoc = class
  private
    FinfNF: TCteSefazInfNFList;
    FinfNFe: TCteSefazInfNFeList;
    FinfOutros: TCteSefazInfOutrosList;
    procedure SetinfNF(const Value: TCteSefazInfNFList);
    procedure SetinfNFe(const Value: TCteSefazInfNFeList);
    procedure SetinfOutros(const Value: TCteSefazInfOutrosList);
  public
    destructor Destroy; override;
    property infNF: TCteSefazInfNFList read FinfNF write SetinfNF;
    property infNFe: TCteSefazInfNFeList read FinfNFe write SetinfNFe;
    property infOutros: TCteSefazInfOutrosList read FinfOutros write SetinfOutros;
  end;
  
  TCteSefazIdDocAntPap = class
  private
    FtpDoc: string;
    FtpDocHasValue: Boolean;
    Fserie: string;
    FserieHasValue: Boolean;
    Fsubser: string;
    FsubserHasValue: Boolean;
    FnDoc: string;
    FnDocHasValue: Boolean;
    FdEmi: TDate;
    FdEmiHasValue: Boolean;
    procedure SettpDoc(const Value: string);
    procedure Setserie(const Value: string);
    procedure Setsubser(const Value: string);
    procedure SetnDoc(const Value: string);
    procedure SetdEmi(const Value: TDate);
  public
    property tpDoc: string read FtpDoc write SettpDoc;
    property tpDocHasValue: Boolean read FtpDocHasValue write FtpDocHasValue;
    property serie: string read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property subser: string read Fsubser write Setsubser;
    property subserHasValue: Boolean read FsubserHasValue write FsubserHasValue;
    property nDoc: string read FnDoc write SetnDoc;
    property nDocHasValue: Boolean read FnDocHasValue write FnDocHasValue;
    property dEmi: TDate read FdEmi write SetdEmi;
    property dEmiHasValue: Boolean read FdEmiHasValue write FdEmiHasValue;
  end;
  
  TCteSefazIdDocAntPapList = class(TObjectList<TCteSefazIdDocAntPap>)
  end;
  
  TCteSefazIdDocAntEle = class
  private
    FchCTe: string;
    FchCTeHasValue: Boolean;
    procedure SetchCTe(const Value: string);
  public
    property chCTe: string read FchCTe write SetchCTe;
    property chCTeHasValue: Boolean read FchCTeHasValue write FchCTeHasValue;
  end;
  
  TCteSefazIdDocAntEleList = class(TObjectList<TCteSefazIdDocAntEle>)
  end;
  
  TCteSefazIdDocAnt = class
  private
    FidDocAntPap: TCteSefazIdDocAntPapList;
    FidDocAntEle: TCteSefazIdDocAntEleList;
    procedure SetidDocAntPap(const Value: TCteSefazIdDocAntPapList);
    procedure SetidDocAntEle(const Value: TCteSefazIdDocAntEleList);
  public
    destructor Destroy; override;
    property idDocAntPap: TCteSefazIdDocAntPapList read FidDocAntPap write SetidDocAntPap;
    property idDocAntEle: TCteSefazIdDocAntEleList read FidDocAntEle write SetidDocAntEle;
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
    FxNome: string;
    FxNomeHasValue: Boolean;
    FidDocAnt: TCteSefazIdDocAntList;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetxNome(const Value: string);
    procedure SetidDocAnt(const Value: TCteSefazIdDocAntList);
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
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property idDocAnt: TCteSefazIdDocAntList read FidDocAnt write SetidDocAnt;
  end;
  
  TCteSefazEmiDocAntList = class(TObjectList<TCteSefazEmiDocAnt>)
  end;
  
  TCteSefazDocAnt = class
  private
    FemiDocAnt: TCteSefazEmiDocAntList;
    procedure SetemiDocAnt(const Value: TCteSefazEmiDocAntList);
  public
    destructor Destroy; override;
    property emiDocAnt: TCteSefazEmiDocAntList read FemiDocAnt write SetemiDocAnt;
  end;
  
  TCteSefazEmiOcc = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FcInt: string;
    FcIntHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetcInt(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetUF(const Value: string);
    procedure Setfone(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property cInt: string read FcInt write SetcInt;
    property cIntHasValue: Boolean read FcIntHasValue write FcIntHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
  end;
  
  TCteSefazOcc = class
  private
    Fserie: string;
    FserieHasValue: Boolean;
    FnOcc: Integer;
    FnOccHasValue: Boolean;
    FdEmi: TDate;
    FdEmiHasValue: Boolean;
    FemiOcc: TCteSefazEmiOcc;
    procedure Setserie(const Value: string);
    procedure SetnOcc(const Value: Integer);
    procedure SetdEmi(const Value: TDate);
    procedure SetemiOcc(const Value: TCteSefazEmiOcc);
  public
    destructor Destroy; override;
    property serie: string read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property nOcc: Integer read FnOcc write SetnOcc;
    property nOccHasValue: Boolean read FnOccHasValue write FnOccHasValue;
    property dEmi: TDate read FdEmi write SetdEmi;
    property dEmiHasValue: Boolean read FdEmiHasValue write FdEmiHasValue;
    property emiOcc: TCteSefazEmiOcc read FemiOcc write SetemiOcc;
  end;
  
  TCteSefazOccList = class(TObjectList<TCteSefazOcc>)
  end;
  
  TCteSefazRodo = class
  private
    FRNTRC: string;
    FRNTRCHasValue: Boolean;
    Focc: TCteSefazOccList;
    procedure SetRNTRC(const Value: string);
    procedure Setocc(const Value: TCteSefazOccList);
  public
    destructor Destroy; override;
    property RNTRC: string read FRNTRC write SetRNTRC;
    property RNTRCHasValue: Boolean read FRNTRCHasValue write FRNTRCHasValue;
    property occ: TCteSefazOccList read Focc write Setocc;
  end;
  
  stringList = class(TList<string>)
  end;
  
  TCteSefazNatCarga = class
  private
    FxDime: string;
    FxDimeHasValue: Boolean;
    FcInfManu: stringList;
    procedure SetxDime(const Value: string);
    procedure SetcInfManu(const Value: stringList);
  public
    destructor Destroy; override;
    property xDime: string read FxDime write SetxDime;
    property xDimeHasValue: Boolean read FxDimeHasValue write FxDimeHasValue;
    property cInfManu: stringList read FcInfManu write SetcInfManu;
  end;
  
  TCteSefazTarifa = class
  private
    FCL: string;
    FCLHasValue: Boolean;
    FcTar: string;
    FcTarHasValue: Boolean;
    FvTar: Double;
    FvTarHasValue: Boolean;
    procedure SetCL(const Value: string);
    procedure SetcTar(const Value: string);
    procedure SetvTar(const Value: Double);
  public
    property CL: string read FCL write SetCL;
    property CLHasValue: Boolean read FCLHasValue write FCLHasValue;
    property cTar: string read FcTar write SetcTar;
    property cTarHasValue: Boolean read FcTarHasValue write FcTarHasValue;
    property vTar: Double read FvTar write SetvTar;
    property vTarHasValue: Boolean read FvTarHasValue write FvTarHasValue;
  end;
  
  TCteSefazInfTotAP = class
  private
    FqTotProd: Double;
    FqTotProdHasValue: Boolean;
    FuniAP: Integer;
    FuniAPHasValue: Boolean;
    procedure SetqTotProd(const Value: Double);
    procedure SetuniAP(const Value: Integer);
  public
    property qTotProd: Double read FqTotProd write SetqTotProd;
    property qTotProdHasValue: Boolean read FqTotProdHasValue write FqTotProdHasValue;
    property uniAP: Integer read FuniAP write SetuniAP;
    property uniAPHasValue: Boolean read FuniAPHasValue write FuniAPHasValue;
  end;
  
  TCteSefazPeri = class
  private
    FnONU: string;
    FnONUHasValue: Boolean;
    FqTotEmb: string;
    FqTotEmbHasValue: Boolean;
    FinfTotAP: TCteSefazInfTotAP;
    procedure SetnONU(const Value: string);
    procedure SetqTotEmb(const Value: string);
    procedure SetinfTotAP(const Value: TCteSefazInfTotAP);
  public
    destructor Destroy; override;
    property nONU: string read FnONU write SetnONU;
    property nONUHasValue: Boolean read FnONUHasValue write FnONUHasValue;
    property qTotEmb: string read FqTotEmb write SetqTotEmb;
    property qTotEmbHasValue: Boolean read FqTotEmbHasValue write FqTotEmbHasValue;
    property infTotAP: TCteSefazInfTotAP read FinfTotAP write SetinfTotAP;
  end;
  
  TCteSefazPeriList = class(TObjectList<TCteSefazPeri>)
  end;
  
  TCteSefazAereo = class
  private
    FnMinu: Integer;
    FnMinuHasValue: Boolean;
    FnOCA: string;
    FnOCAHasValue: Boolean;
    FdPrevAereo: TDate;
    FdPrevAereoHasValue: Boolean;
    FnatCarga: TCteSefazNatCarga;
    Ftarifa: TCteSefazTarifa;
    Fperi: TCteSefazPeriList;
    procedure SetnMinu(const Value: Integer);
    procedure SetnOCA(const Value: string);
    procedure SetdPrevAereo(const Value: TDate);
    procedure SetnatCarga(const Value: TCteSefazNatCarga);
    procedure Settarifa(const Value: TCteSefazTarifa);
    procedure Setperi(const Value: TCteSefazPeriList);
  public
    destructor Destroy; override;
    property nMinu: Integer read FnMinu write SetnMinu;
    property nMinuHasValue: Boolean read FnMinuHasValue write FnMinuHasValue;
    property nOCA: string read FnOCA write SetnOCA;
    property nOCAHasValue: Boolean read FnOCAHasValue write FnOCAHasValue;
    property dPrevAereo: TDate read FdPrevAereo write SetdPrevAereo;
    property dPrevAereoHasValue: Boolean read FdPrevAereoHasValue write FdPrevAereoHasValue;
    property natCarga: TCteSefazNatCarga read FnatCarga write SetnatCarga;
    property tarifa: TCteSefazTarifa read Ftarifa write Settarifa;
    property peri: TCteSefazPeriList read Fperi write Setperi;
  end;
  
  TCteSefazEnderFer = class
  private
    FxLgr: string;
    FxLgrHasValue: Boolean;
    Fnro: string;
    FnroHasValue: Boolean;
    FxCpl: string;
    FxCplHasValue: Boolean;
    FxBairro: string;
    FxBairroHasValue: Boolean;
    FcMun: Integer;
    FcMunHasValue: Boolean;
    FxMun: string;
    FxMunHasValue: Boolean;
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    procedure SetxLgr(const Value: string);
    procedure Setnro(const Value: string);
    procedure SetxCpl(const Value: string);
    procedure SetxBairro(const Value: string);
    procedure SetcMun(const Value: Integer);
    procedure SetxMun(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetUF(const Value: string);
  public
    property xLgr: string read FxLgr write SetxLgr;
    property xLgrHasValue: Boolean read FxLgrHasValue write FxLgrHasValue;
    property nro: string read Fnro write Setnro;
    property nroHasValue: Boolean read FnroHasValue write FnroHasValue;
    property xCpl: string read FxCpl write SetxCpl;
    property xCplHasValue: Boolean read FxCplHasValue write FxCplHasValue;
    property xBairro: string read FxBairro write SetxBairro;
    property xBairroHasValue: Boolean read FxBairroHasValue write FxBairroHasValue;
    property cMun: Integer read FcMun write SetcMun;
    property cMunHasValue: Boolean read FcMunHasValue write FcMunHasValue;
    property xMun: string read FxMun write SetxMun;
    property xMunHasValue: Boolean read FxMunHasValue write FxMunHasValue;
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
  end;
  
  TCteSefazFerroEnv = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FcInt: string;
    FcIntHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FxNome: string;
    FxNomeHasValue: Boolean;
    FenderFerro: TCteSefazEnderFer;
    procedure SetCNPJ(const Value: string);
    procedure SetcInt(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetxNome(const Value: string);
    procedure SetenderFerro(const Value: TCteSefazEnderFer);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property cInt: string read FcInt write SetcInt;
    property cIntHasValue: Boolean read FcIntHasValue write FcIntHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property enderFerro: TCteSefazEnderFer read FenderFerro write SetenderFerro;
  end;
  
  TCteSefazFerroEnvList = class(TObjectList<TCteSefazFerroEnv>)
  end;
  
  TCteSefazTrafMut = class
  private
    FrespFat: Integer;
    FrespFatHasValue: Boolean;
    FferrEmi: Integer;
    FferrEmiHasValue: Boolean;
    FvFrete: Double;
    FvFreteHasValue: Boolean;
    FchCTeFerroOrigem: string;
    FchCTeFerroOrigemHasValue: Boolean;
    FferroEnv: TCteSefazFerroEnvList;
    procedure SetrespFat(const Value: Integer);
    procedure SetferrEmi(const Value: Integer);
    procedure SetvFrete(const Value: Double);
    procedure SetchCTeFerroOrigem(const Value: string);
    procedure SetferroEnv(const Value: TCteSefazFerroEnvList);
  public
    destructor Destroy; override;
    property respFat: Integer read FrespFat write SetrespFat;
    property respFatHasValue: Boolean read FrespFatHasValue write FrespFatHasValue;
    property ferrEmi: Integer read FferrEmi write SetferrEmi;
    property ferrEmiHasValue: Boolean read FferrEmiHasValue write FferrEmiHasValue;
    property vFrete: Double read FvFrete write SetvFrete;
    property vFreteHasValue: Boolean read FvFreteHasValue write FvFreteHasValue;
    property chCTeFerroOrigem: string read FchCTeFerroOrigem write SetchCTeFerroOrigem;
    property chCTeFerroOrigemHasValue: Boolean read FchCTeFerroOrigemHasValue write FchCTeFerroOrigemHasValue;
    property ferroEnv: TCteSefazFerroEnvList read FferroEnv write SetferroEnv;
  end;
  
  TCteSefazFerrov = class
  private
    FtpTraf: Integer;
    FtpTrafHasValue: Boolean;
    FtrafMut: TCteSefazTrafMut;
    Ffluxo: string;
    FfluxoHasValue: Boolean;
    procedure SettpTraf(const Value: Integer);
    procedure SettrafMut(const Value: TCteSefazTrafMut);
    procedure Setfluxo(const Value: string);
  public
    destructor Destroy; override;
    property tpTraf: Integer read FtpTraf write SettpTraf;
    property tpTrafHasValue: Boolean read FtpTrafHasValue write FtpTrafHasValue;
    property trafMut: TCteSefazTrafMut read FtrafMut write SettrafMut;
    property fluxo: string read Ffluxo write Setfluxo;
    property fluxoHasValue: Boolean read FfluxoHasValue write FfluxoHasValue;
  end;
  
  TCteSefazBalsa = class
  private
    FxBalsa: string;
    FxBalsaHasValue: Boolean;
    procedure SetxBalsa(const Value: string);
  public
    property xBalsa: string read FxBalsa write SetxBalsa;
    property xBalsaHasValue: Boolean read FxBalsaHasValue write FxBalsaHasValue;
  end;
  
  TCteSefazBalsaList = class(TObjectList<TCteSefazBalsa>)
  end;
  
  TCteSefazLacre = class
  private
    FnLacre: string;
    FnLacreHasValue: Boolean;
    procedure SetnLacre(const Value: string);
  public
    property nLacre: string read FnLacre write SetnLacre;
    property nLacreHasValue: Boolean read FnLacreHasValue write FnLacreHasValue;
  end;
  
  TCteSefazLacreList = class(TObjectList<TCteSefazLacre>)
  end;
  
  TCteSefazDetContInfDocInfNF = class
  private
    Fserie: string;
    FserieHasValue: Boolean;
    FnDoc: string;
    FnDocHasValue: Boolean;
    FunidRat: Double;
    FunidRatHasValue: Boolean;
    procedure Setserie(const Value: string);
    procedure SetnDoc(const Value: string);
    procedure SetunidRat(const Value: Double);
  public
    property serie: string read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property nDoc: string read FnDoc write SetnDoc;
    property nDocHasValue: Boolean read FnDocHasValue write FnDocHasValue;
    property unidRat: Double read FunidRat write SetunidRat;
    property unidRatHasValue: Boolean read FunidRatHasValue write FunidRatHasValue;
  end;
  
  TCteSefazDetContInfDocInfNFList = class(TObjectList<TCteSefazDetContInfDocInfNF>)
  end;
  
  TCteSefazDetContInfDocInfNFe = class
  private
    Fchave: string;
    FchaveHasValue: Boolean;
    FunidRat: Double;
    FunidRatHasValue: Boolean;
    procedure Setchave(const Value: string);
    procedure SetunidRat(const Value: Double);
  public
    property chave: string read Fchave write Setchave;
    property chaveHasValue: Boolean read FchaveHasValue write FchaveHasValue;
    property unidRat: Double read FunidRat write SetunidRat;
    property unidRatHasValue: Boolean read FunidRatHasValue write FunidRatHasValue;
  end;
  
  TCteSefazDetContInfDocInfNFeList = class(TObjectList<TCteSefazDetContInfDocInfNFe>)
  end;
  
  TCteSefazDetContInfDoc = class
  private
    FinfNF: TCteSefazDetContInfDocInfNFList;
    FinfNFe: TCteSefazDetContInfDocInfNFeList;
    procedure SetinfNF(const Value: TCteSefazDetContInfDocInfNFList);
    procedure SetinfNFe(const Value: TCteSefazDetContInfDocInfNFeList);
  public
    destructor Destroy; override;
    property infNF: TCteSefazDetContInfDocInfNFList read FinfNF write SetinfNF;
    property infNFe: TCteSefazDetContInfDocInfNFeList read FinfNFe write SetinfNFe;
  end;
  
  TCteSefazDetCont = class
  private
    FnCont: string;
    FnContHasValue: Boolean;
    Flacre: TCteSefazLacreList;
    FinfDoc: TCteSefazDetContInfDoc;
    procedure SetnCont(const Value: string);
    procedure Setlacre(const Value: TCteSefazLacreList);
    procedure SetinfDoc(const Value: TCteSefazDetContInfDoc);
  public
    destructor Destroy; override;
    property nCont: string read FnCont write SetnCont;
    property nContHasValue: Boolean read FnContHasValue write FnContHasValue;
    property lacre: TCteSefazLacreList read Flacre write Setlacre;
    property infDoc: TCteSefazDetContInfDoc read FinfDoc write SetinfDoc;
  end;
  
  TCteSefazDetContList = class(TObjectList<TCteSefazDetCont>)
  end;
  
  TCteSefazAquav = class
  private
    FvPrest: Double;
    FvPrestHasValue: Boolean;
    FvAFRMM: Double;
    FvAFRMMHasValue: Boolean;
    FxNavio: string;
    FxNavioHasValue: Boolean;
    Fbalsa: TCteSefazBalsaList;
    FnViag: string;
    FnViagHasValue: Boolean;
    Fdirec: string;
    FdirecHasValue: Boolean;
    Firin: string;
    FirinHasValue: Boolean;
    FdetCont: TCteSefazDetContList;
    FtpNav: Integer;
    FtpNavHasValue: Boolean;
    procedure SetvPrest(const Value: Double);
    procedure SetvAFRMM(const Value: Double);
    procedure SetxNavio(const Value: string);
    procedure Setbalsa(const Value: TCteSefazBalsaList);
    procedure SetnViag(const Value: string);
    procedure Setdirec(const Value: string);
    procedure Setirin(const Value: string);
    procedure SetdetCont(const Value: TCteSefazDetContList);
    procedure SettpNav(const Value: Integer);
  public
    destructor Destroy; override;
    property vPrest: Double read FvPrest write SetvPrest;
    property vPrestHasValue: Boolean read FvPrestHasValue write FvPrestHasValue;
    property vAFRMM: Double read FvAFRMM write SetvAFRMM;
    property vAFRMMHasValue: Boolean read FvAFRMMHasValue write FvAFRMMHasValue;
    property xNavio: string read FxNavio write SetxNavio;
    property xNavioHasValue: Boolean read FxNavioHasValue write FxNavioHasValue;
    property balsa: TCteSefazBalsaList read Fbalsa write Setbalsa;
    property nViag: string read FnViag write SetnViag;
    property nViagHasValue: Boolean read FnViagHasValue write FnViagHasValue;
    property direc: string read Fdirec write Setdirec;
    property direcHasValue: Boolean read FdirecHasValue write FdirecHasValue;
    property irin: string read Firin write Setirin;
    property irinHasValue: Boolean read FirinHasValue write FirinHasValue;
    property detCont: TCteSefazDetContList read FdetCont write SetdetCont;
    property tpNav: Integer read FtpNav write SettpNav;
    property tpNavHasValue: Boolean read FtpNavHasValue write FtpNavHasValue;
  end;
  
  TCteSefazDuto = class
  private
    FvTar: Double;
    FvTarHasValue: Boolean;
    FdIni: TDate;
    FdIniHasValue: Boolean;
    FdFim: TDate;
    FdFimHasValue: Boolean;
    procedure SetvTar(const Value: Double);
    procedure SetdIni(const Value: TDate);
    procedure SetdFim(const Value: TDate);
  public
    property vTar: Double read FvTar write SetvTar;
    property vTarHasValue: Boolean read FvTarHasValue write FvTarHasValue;
    property dIni: TDate read FdIni write SetdIni;
    property dIniHasValue: Boolean read FdIniHasValue write FdIniHasValue;
    property dFim: TDate read FdFim write SetdFim;
    property dFimHasValue: Boolean read FdFimHasValue write FdFimHasValue;
  end;
  
  TCteSefazInfSeg = class
  private
    FxSeg: string;
    FxSegHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    procedure SetxSeg(const Value: string);
    procedure SetCNPJ(const Value: string);
  public
    property xSeg: string read FxSeg write SetxSeg;
    property xSegHasValue: Boolean read FxSegHasValue write FxSegHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
  end;
  
  TCteSefazSeg = class
  private
    FinfSeg: TCteSefazInfSeg;
    FnApol: string;
    FnApolHasValue: Boolean;
    FnAver: string;
    FnAverHasValue: Boolean;
    procedure SetinfSeg(const Value: TCteSefazInfSeg);
    procedure SetnApol(const Value: string);
    procedure SetnAver(const Value: string);
  public
    destructor Destroy; override;
    property infSeg: TCteSefazInfSeg read FinfSeg write SetinfSeg;
    property nApol: string read FnApol write SetnApol;
    property nApolHasValue: Boolean read FnApolHasValue write FnApolHasValue;
    property nAver: string read FnAver write SetnAver;
    property nAverHasValue: Boolean read FnAverHasValue write FnAverHasValue;
  end;
  
  TCteSefazMultimodal = class
  private
    FCOTM: string;
    FCOTMHasValue: Boolean;
    FindNegociavel: Integer;
    FindNegociavelHasValue: Boolean;
    Fseg: TCteSefazSeg;
    procedure SetCOTM(const Value: string);
    procedure SetindNegociavel(const Value: Integer);
    procedure Setseg(const Value: TCteSefazSeg);
  public
    destructor Destroy; override;
    property COTM: string read FCOTM write SetCOTM;
    property COTMHasValue: Boolean read FCOTMHasValue write FCOTMHasValue;
    property indNegociavel: Integer read FindNegociavel write SetindNegociavel;
    property indNegociavelHasValue: Boolean read FindNegociavelHasValue write FindNegociavelHasValue;
    property seg: TCteSefazSeg read Fseg write Setseg;
  end;
  
  TCteSefazInfModal = class
  private
    FversaoModal: string;
    FversaoModalHasValue: Boolean;
    Frodo: TCteSefazRodo;
    Faereo: TCteSefazAereo;
    Fferrov: TCteSefazFerrov;
    Faquav: TCteSefazAquav;
    Fduto: TCteSefazDuto;
    Fmultimodal: TCteSefazMultimodal;
    procedure SetversaoModal(const Value: string);
    procedure Setrodo(const Value: TCteSefazRodo);
    procedure Setaereo(const Value: TCteSefazAereo);
    procedure Setferrov(const Value: TCteSefazFerrov);
    procedure Setaquav(const Value: TCteSefazAquav);
    procedure Setduto(const Value: TCteSefazDuto);
    procedure Setmultimodal(const Value: TCteSefazMultimodal);
  public
    destructor Destroy; override;
    property versaoModal: string read FversaoModal write SetversaoModal;
    property versaoModalHasValue: Boolean read FversaoModalHasValue write FversaoModalHasValue;
    property rodo: TCteSefazRodo read Frodo write Setrodo;
    property aereo: TCteSefazAereo read Faereo write Setaereo;
    property ferrov: TCteSefazFerrov read Fferrov write Setferrov;
    property aquav: TCteSefazAquav read Faquav write Setaquav;
    property duto: TCteSefazDuto read Fduto write Setduto;
    property multimodal: TCteSefazMultimodal read Fmultimodal write Setmultimodal;
  end;
  
  TCteSefazVeicNovos = class
  private
    Fchassi: string;
    FchassiHasValue: Boolean;
    FcCor: string;
    FcCorHasValue: Boolean;
    FxCor: string;
    FxCorHasValue: Boolean;
    FcMod: string;
    FcModHasValue: Boolean;
    FvUnit: Double;
    FvUnitHasValue: Boolean;
    FvFrete: Double;
    FvFreteHasValue: Boolean;
    procedure Setchassi(const Value: string);
    procedure SetcCor(const Value: string);
    procedure SetxCor(const Value: string);
    procedure SetcMod(const Value: string);
    procedure SetvUnit(const Value: Double);
    procedure SetvFrete(const Value: Double);
  public
    property chassi: string read Fchassi write Setchassi;
    property chassiHasValue: Boolean read FchassiHasValue write FchassiHasValue;
    property cCor: string read FcCor write SetcCor;
    property cCorHasValue: Boolean read FcCorHasValue write FcCorHasValue;
    property xCor: string read FxCor write SetxCor;
    property xCorHasValue: Boolean read FxCorHasValue write FxCorHasValue;
    property cMod: string read FcMod write SetcMod;
    property cModHasValue: Boolean read FcModHasValue write FcModHasValue;
    property vUnit: Double read FvUnit write SetvUnit;
    property vUnitHasValue: Boolean read FvUnitHasValue write FvUnitHasValue;
    property vFrete: Double read FvFrete write SetvFrete;
    property vFreteHasValue: Boolean read FvFreteHasValue write FvFreteHasValue;
  end;
  
  TCteSefazVeicNovosList = class(TObjectList<TCteSefazVeicNovos>)
  end;
  
  TCteSefazFat = class
  private
    FnFat: string;
    FnFatHasValue: Boolean;
    FvOrig: Double;
    FvOrigHasValue: Boolean;
    FvDesc: Double;
    FvDescHasValue: Boolean;
    FvLiq: Double;
    FvLiqHasValue: Boolean;
    procedure SetnFat(const Value: string);
    procedure SetvOrig(const Value: Double);
    procedure SetvDesc(const Value: Double);
    procedure SetvLiq(const Value: Double);
  public
    property nFat: string read FnFat write SetnFat;
    property nFatHasValue: Boolean read FnFatHasValue write FnFatHasValue;
    property vOrig: Double read FvOrig write SetvOrig;
    property vOrigHasValue: Boolean read FvOrigHasValue write FvOrigHasValue;
    property vDesc: Double read FvDesc write SetvDesc;
    property vDescHasValue: Boolean read FvDescHasValue write FvDescHasValue;
    property vLiq: Double read FvLiq write SetvLiq;
    property vLiqHasValue: Boolean read FvLiqHasValue write FvLiqHasValue;
  end;
  
  TCteSefazDup = class
  private
    FnDup: string;
    FnDupHasValue: Boolean;
    FdVenc: TDate;
    FdVencHasValue: Boolean;
    FvDup: Double;
    FvDupHasValue: Boolean;
    procedure SetnDup(const Value: string);
    procedure SetdVenc(const Value: TDate);
    procedure SetvDup(const Value: Double);
  public
    property nDup: string read FnDup write SetnDup;
    property nDupHasValue: Boolean read FnDupHasValue write FnDupHasValue;
    property dVenc: TDate read FdVenc write SetdVenc;
    property dVencHasValue: Boolean read FdVencHasValue write FdVencHasValue;
    property vDup: Double read FvDup write SetvDup;
    property vDupHasValue: Boolean read FvDupHasValue write FvDupHasValue;
  end;
  
  TCteSefazDupList = class(TObjectList<TCteSefazDup>)
  end;
  
  TCteSefazCobr = class
  private
    Ffat: TCteSefazFat;
    Fdup: TCteSefazDupList;
    procedure Setfat(const Value: TCteSefazFat);
    procedure Setdup(const Value: TCteSefazDupList);
  public
    destructor Destroy; override;
    property fat: TCteSefazFat read Ffat write Setfat;
    property dup: TCteSefazDupList read Fdup write Setdup;
  end;
  
  TCteSefazRefNF = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    Fmod: string;
    FmodHasValue: Boolean;
    Fserie: Integer;
    FserieHasValue: Boolean;
    Fsubserie: Integer;
    FsubserieHasValue: Boolean;
    Fnro: Integer;
    FnroHasValue: Boolean;
    Fvalor: Double;
    FvalorHasValue: Boolean;
    FdEmi: TDate;
    FdEmiHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure Setmod(const Value: string);
    procedure Setserie(const Value: Integer);
    procedure Setsubserie(const Value: Integer);
    procedure Setnro(const Value: Integer);
    procedure Setvalor(const Value: Double);
    procedure SetdEmi(const Value: TDate);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property &mod: string read Fmod write Setmod;
    property &modHasValue: Boolean read FmodHasValue write FmodHasValue;
    property serie: Integer read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property subserie: Integer read Fsubserie write Setsubserie;
    property subserieHasValue: Boolean read FsubserieHasValue write FsubserieHasValue;
    property nro: Integer read Fnro write Setnro;
    property nroHasValue: Boolean read FnroHasValue write FnroHasValue;
    property valor: Double read Fvalor write Setvalor;
    property valorHasValue: Boolean read FvalorHasValue write FvalorHasValue;
    property dEmi: TDate read FdEmi write SetdEmi;
    property dEmiHasValue: Boolean read FdEmiHasValue write FdEmiHasValue;
  end;
  
  TCteSefazTomaICMS = class
  private
    FrefNFe: string;
    FrefNFeHasValue: Boolean;
    FrefNF: TCteSefazRefNF;
    FrefCte: string;
    FrefCteHasValue: Boolean;
    procedure SetrefNFe(const Value: string);
    procedure SetrefNF(const Value: TCteSefazRefNF);
    procedure SetrefCte(const Value: string);
  public
    destructor Destroy; override;
    property refNFe: string read FrefNFe write SetrefNFe;
    property refNFeHasValue: Boolean read FrefNFeHasValue write FrefNFeHasValue;
    property refNF: TCteSefazRefNF read FrefNF write SetrefNF;
    property refCte: string read FrefCte write SetrefCte;
    property refCteHasValue: Boolean read FrefCteHasValue write FrefCteHasValue;
  end;
  
  TCteSefazInfCteSub = class
  private
    FchCte: string;
    FchCteHasValue: Boolean;
    FrefCteAnu: string;
    FrefCteAnuHasValue: Boolean;
    FtomaICMS: TCteSefazTomaICMS;
    FindAlteraToma: Integer;
    FindAlteraTomaHasValue: Boolean;
    procedure SetchCte(const Value: string);
    procedure SetrefCteAnu(const Value: string);
    procedure SettomaICMS(const Value: TCteSefazTomaICMS);
    procedure SetindAlteraToma(const Value: Integer);
  public
    destructor Destroy; override;
    property chCte: string read FchCte write SetchCte;
    property chCteHasValue: Boolean read FchCteHasValue write FchCteHasValue;
    property refCteAnu: string read FrefCteAnu write SetrefCteAnu;
    property refCteAnuHasValue: Boolean read FrefCteAnuHasValue write FrefCteAnuHasValue;
    property tomaICMS: TCteSefazTomaICMS read FtomaICMS write SettomaICMS;
    property indAlteraToma: Integer read FindAlteraToma write SetindAlteraToma;
    property indAlteraTomaHasValue: Boolean read FindAlteraTomaHasValue write FindAlteraTomaHasValue;
  end;
  
  TCteSefazInfGlobalizado = class
  private
    FxObs: string;
    FxObsHasValue: Boolean;
    procedure SetxObs(const Value: string);
  public
    property xObs: string read FxObs write SetxObs;
    property xObsHasValue: Boolean read FxObsHasValue write FxObsHasValue;
  end;
  
  TCteSefazInfCTeMultimodal = class
  private
    FchCTeMultimodal: string;
    FchCTeMultimodalHasValue: Boolean;
    procedure SetchCTeMultimodal(const Value: string);
  public
    property chCTeMultimodal: string read FchCTeMultimodal write SetchCTeMultimodal;
    property chCTeMultimodalHasValue: Boolean read FchCTeMultimodalHasValue write FchCTeMultimodalHasValue;
  end;
  
  TCteSefazInfCTeMultimodalList = class(TObjectList<TCteSefazInfCTeMultimodal>)
  end;
  
  TCteSefazInfServVinc = class
  private
    FinfCTeMultimodal: TCteSefazInfCTeMultimodalList;
    procedure SetinfCTeMultimodal(const Value: TCteSefazInfCTeMultimodalList);
  public
    destructor Destroy; override;
    property infCTeMultimodal: TCteSefazInfCTeMultimodalList read FinfCTeMultimodal write SetinfCTeMultimodal;
  end;
  
  TCteSefazInfCTeNorm = class
  private
    FinfCarga: TCteSefazInfCarga;
    FinfDoc: TCteSefazInfDoc;
    FdocAnt: TCteSefazDocAnt;
    FinfModal: TCteSefazInfModal;
    FveicNovos: TCteSefazVeicNovosList;
    Fcobr: TCteSefazCobr;
    FinfCteSub: TCteSefazInfCteSub;
    FinfGlobalizado: TCteSefazInfGlobalizado;
    FinfServVinc: TCteSefazInfServVinc;
    procedure SetinfCarga(const Value: TCteSefazInfCarga);
    procedure SetinfDoc(const Value: TCteSefazInfDoc);
    procedure SetdocAnt(const Value: TCteSefazDocAnt);
    procedure SetinfModal(const Value: TCteSefazInfModal);
    procedure SetveicNovos(const Value: TCteSefazVeicNovosList);
    procedure Setcobr(const Value: TCteSefazCobr);
    procedure SetinfCteSub(const Value: TCteSefazInfCteSub);
    procedure SetinfGlobalizado(const Value: TCteSefazInfGlobalizado);
    procedure SetinfServVinc(const Value: TCteSefazInfServVinc);
  public
    destructor Destroy; override;
    property infCarga: TCteSefazInfCarga read FinfCarga write SetinfCarga;
    property infDoc: TCteSefazInfDoc read FinfDoc write SetinfDoc;
    property docAnt: TCteSefazDocAnt read FdocAnt write SetdocAnt;
    property infModal: TCteSefazInfModal read FinfModal write SetinfModal;
    property veicNovos: TCteSefazVeicNovosList read FveicNovos write SetveicNovos;
    property cobr: TCteSefazCobr read Fcobr write Setcobr;
    property infCteSub: TCteSefazInfCteSub read FinfCteSub write SetinfCteSub;
    property infGlobalizado: TCteSefazInfGlobalizado read FinfGlobalizado write SetinfGlobalizado;
    property infServVinc: TCteSefazInfServVinc read FinfServVinc write SetinfServVinc;
  end;
  
  TCteSefazInfCteComp = class
  private
    FchCTe: string;
    FchCTeHasValue: Boolean;
    procedure SetchCTe(const Value: string);
  public
    property chCTe: string read FchCTe write SetchCTe;
    property chCTeHasValue: Boolean read FchCTeHasValue write FchCTeHasValue;
  end;
  
  TCteSefazInfCteAnu = class
  private
    FchCte: string;
    FchCteHasValue: Boolean;
    FdEmi: TDate;
    FdEmiHasValue: Boolean;
    procedure SetchCte(const Value: string);
    procedure SetdEmi(const Value: TDate);
  public
    property chCte: string read FchCte write SetchCte;
    property chCteHasValue: Boolean read FchCteHasValue write FchCteHasValue;
    property dEmi: TDate read FdEmi write SetdEmi;
    property dEmiHasValue: Boolean read FdEmiHasValue write FdEmiHasValue;
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
    FxContato: string;
    FxContatoHasValue: Boolean;
    Femail: string;
    FemailHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    FidCSRT: Integer;
    FidCSRTHasValue: Boolean;
    FhashCSRT: string;
    FhashCSRTHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetxContato(const Value: string);
    procedure Setemail(const Value: string);
    procedure Setfone(const Value: string);
    procedure SetidCSRT(const Value: Integer);
    procedure SethashCSRT(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property xContato: string read FxContato write SetxContato;
    property xContatoHasValue: Boolean read FxContatoHasValue write FxContatoHasValue;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    property idCSRT: Integer read FidCSRT write SetidCSRT;
    property idCSRTHasValue: Boolean read FidCSRTHasValue write FidCSRTHasValue;
    property hashCSRT: string read FhashCSRT write SethashCSRT;
    property hashCSRTHasValue: Boolean read FhashCSRTHasValue write FhashCSRTHasValue;
  end;
  
  TCteSefazInfSolicNFF = class
  private
    FxSolic: string;
    FxSolicHasValue: Boolean;
    procedure SetxSolic(const Value: string);
  public
    property xSolic: string read FxSolic write SetxSolic;
    property xSolicHasValue: Boolean read FxSolicHasValue write FxSolicHasValue;
  end;
  
  TCteSefazInfCte = class
  private
    Fversao: string;
    FversaoHasValue: Boolean;
    FId: string;
    FIdHasValue: Boolean;
    Fide: TCteSefazIde;
    Fcompl: TCteSefazCompl;
    Femit: TCteSefazEmit;
    Frem: TCteSefazRem;
    Fexped: TCteSefazExped;
    Freceb: TCteSefazReceb;
    Fdest: TCteSefazDest;
    FvPrest: TCteSefazVPrest;
    Fimp: TCteSefazInfCteImp;
    FinfCTeNorm: TCteSefazInfCTeNorm;
    FinfCteComp: TCteSefazInfCteComp;
    FinfCteAnu: TCteSefazInfCteAnu;
    FautXML: TCteSefazAutXMLList;
    FinfRespTec: TCteSefazRespTec;
    FinfSolicNFF: TCteSefazInfSolicNFF;
    procedure Setversao(const Value: string);
    procedure SetId(const Value: string);
    procedure Setide(const Value: TCteSefazIde);
    procedure Setcompl(const Value: TCteSefazCompl);
    procedure Setemit(const Value: TCteSefazEmit);
    procedure Setrem(const Value: TCteSefazRem);
    procedure Setexped(const Value: TCteSefazExped);
    procedure Setreceb(const Value: TCteSefazReceb);
    procedure Setdest(const Value: TCteSefazDest);
    procedure SetvPrest(const Value: TCteSefazVPrest);
    procedure Setimp(const Value: TCteSefazInfCteImp);
    procedure SetinfCTeNorm(const Value: TCteSefazInfCTeNorm);
    procedure SetinfCteComp(const Value: TCteSefazInfCteComp);
    procedure SetinfCteAnu(const Value: TCteSefazInfCteAnu);
    procedure SetautXML(const Value: TCteSefazAutXMLList);
    procedure SetinfRespTec(const Value: TCteSefazRespTec);
    procedure SetinfSolicNFF(const Value: TCteSefazInfSolicNFF);
  public
    destructor Destroy; override;
    property versao: string read Fversao write Setversao;
    property versaoHasValue: Boolean read FversaoHasValue write FversaoHasValue;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property ide: TCteSefazIde read Fide write Setide;
    property compl: TCteSefazCompl read Fcompl write Setcompl;
    property emit: TCteSefazEmit read Femit write Setemit;
    property rem: TCteSefazRem read Frem write Setrem;
    property exped: TCteSefazExped read Fexped write Setexped;
    property receb: TCteSefazReceb read Freceb write Setreceb;
    property dest: TCteSefazDest read Fdest write Setdest;
    property vPrest: TCteSefazVPrest read FvPrest write SetvPrest;
    property imp: TCteSefazInfCteImp read Fimp write Setimp;
    property infCTeNorm: TCteSefazInfCTeNorm read FinfCTeNorm write SetinfCTeNorm;
    property infCteComp: TCteSefazInfCteComp read FinfCteComp write SetinfCteComp;
    property infCteAnu: TCteSefazInfCteAnu read FinfCteAnu write SetinfCteAnu;
    property autXML: TCteSefazAutXMLList read FautXML write SetautXML;
    property infRespTec: TCteSefazRespTec read FinfRespTec write SetinfRespTec;
    property infSolicNFF: TCteSefazInfSolicNFF read FinfSolicNFF write SetinfSolicNFF;
  end;
  
  TCteSefazInfCTeSupl = class
  private
    FqrCodCTe: string;
    FqrCodCTeHasValue: Boolean;
    procedure SetqrCodCTe(const Value: string);
  public
    property qrCodCTe: string read FqrCodCTe write SetqrCodCTe;
    property qrCodCTeHasValue: Boolean read FqrCodCTeHasValue write FqrCodCTeHasValue;
  end;
  
  TCtePedidoEmissao = class
  private
    FinfCte: TCteSefazInfCte;
    FinfCTeSupl: TCteSefazInfCTeSupl;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    procedure SetinfCte(const Value: TCteSefazInfCte);
    procedure SetinfCTeSupl(const Value: TCteSefazInfCTeSupl);
    procedure Setambiente(const Value: string);
    procedure Setreferencia(const Value: string);
  public
    destructor Destroy; override;
    property infCte: TCteSefazInfCte read FinfCte write SetinfCte;
    property infCTeSupl: TCteSefazInfCTeSupl read FinfCTeSupl write SetinfCTeSupl;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
  end;
  
  TCtePedidoEmissaoList = class(TObjectList<TCtePedidoEmissao>)
  end;
  
  TCtePedidoEmissaoLote = class
  private
    Fdocumentos: TCtePedidoEmissaoList;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    Fid_lote: string;
    Fid_loteHasValue: Boolean;
    procedure Setdocumentos(const Value: TCtePedidoEmissaoList);
    procedure Setambiente(const Value: string);
    procedure Setreferencia(const Value: string);
    procedure Setid_lote(const Value: string);
  public
    destructor Destroy; override;
    property documentos: TCtePedidoEmissaoList read Fdocumentos write Setdocumentos;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
    property id_lote: string read Fid_lote write Setid_lote;
    property id_loteHasValue: Boolean read Fid_loteHasValue write Fid_loteHasValue;
  end;
  
  TDfeRecibo = class
  private
    Fnumero: string;
    FnumeroHasValue: Boolean;
    Fcodigo_status: Integer;
    Fcodigo_statusHasValue: Boolean;
    Fmotivo_status: string;
    Fmotivo_statusHasValue: Boolean;
    Fdata_recebimento: TDateTime;
    Fdata_recebimentoHasValue: Boolean;
    Fcodigo_mensagem: Integer;
    Fcodigo_mensagemHasValue: Boolean;
    Fmensagem: string;
    FmensagemHasValue: Boolean;
    procedure Setnumero(const Value: string);
    procedure Setcodigo_status(const Value: Integer);
    procedure Setmotivo_status(const Value: string);
    procedure Setdata_recebimento(const Value: TDateTime);
    procedure Setcodigo_mensagem(const Value: Integer);
    procedure Setmensagem(const Value: string);
  public
    property numero: string read Fnumero write Setnumero;
    property numeroHasValue: Boolean read FnumeroHasValue write FnumeroHasValue;
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
  end;
  
  TDfeAutorEvento = class
  private
    Fcpf_cnpj: string;
    Fcpf_cnpjHasValue: Boolean;
    procedure Setcpf_cnpj(const Value: string);
  public
    property cpf_cnpj: string read Fcpf_cnpj write Setcpf_cnpj;
    property cpf_cnpjHasValue: Boolean read Fcpf_cnpjHasValue write Fcpf_cnpjHasValue;
  end;
  
  TDfeAutorizacao = class
  private
    Fdigest_value: string;
    Fdigest_valueHasValue: Boolean;
    Fid: string;
    FidHasValue: Boolean;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Fstatus: string;
    FstatusHasValue: Boolean;
    Fautor: TDfeAutorEvento;
    Fchave_acesso: string;
    Fchave_acessoHasValue: Boolean;
    Fdata_evento: TDateTime;
    Fdata_eventoHasValue: Boolean;
    Fnumero_sequencial: Integer;
    Fnumero_sequencialHasValue: Boolean;
    Fdata_recebimento: TDateTime;
    Fdata_recebimentoHasValue: Boolean;
    Fcodigo_status: Integer;
    Fcodigo_statusHasValue: Boolean;
    Fmotivo_status: string;
    Fmotivo_statusHasValue: Boolean;
    Fnumero_protocolo: string;
    Fnumero_protocoloHasValue: Boolean;
    Fcodigo_mensagem: Integer;
    Fcodigo_mensagemHasValue: Boolean;
    Fmensagem: string;
    FmensagemHasValue: Boolean;
    Ftipo_evento: string;
    Ftipo_eventoHasValue: Boolean;
    procedure Setdigest_value(const Value: string);
    procedure Setid(const Value: string);
    procedure Setambiente(const Value: string);
    procedure Setstatus(const Value: string);
    procedure Setautor(const Value: TDfeAutorEvento);
    procedure Setchave_acesso(const Value: string);
    procedure Setdata_evento(const Value: TDateTime);
    procedure Setnumero_sequencial(const Value: Integer);
    procedure Setdata_recebimento(const Value: TDateTime);
    procedure Setcodigo_status(const Value: Integer);
    procedure Setmotivo_status(const Value: string);
    procedure Setnumero_protocolo(const Value: string);
    procedure Setcodigo_mensagem(const Value: Integer);
    procedure Setmensagem(const Value: string);
    procedure Settipo_evento(const Value: string);
  public
    destructor Destroy; override;
    property digest_value: string read Fdigest_value write Setdigest_value;
    property digest_valueHasValue: Boolean read Fdigest_valueHasValue write Fdigest_valueHasValue;
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property autor: TDfeAutorEvento read Fautor write Setautor;
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TDfe = class
  private
    Fid: string;
    FidHasValue: Boolean;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Fcreated_at: TDateTime;
    Fcreated_atHasValue: Boolean;
    Fstatus: string;
    FstatusHasValue: Boolean;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    Fdata_emissao: TDateTime;
    Fdata_emissaoHasValue: Boolean;
    Fmodelo: Integer;
    FmodeloHasValue: Boolean;
    Fserie: Integer;
    FserieHasValue: Boolean;
    Fnumero: Integer;
    FnumeroHasValue: Boolean;
    Fvalor_total: Double;
    Fvalor_totalHasValue: Boolean;
    Fchave: string;
    FchaveHasValue: Boolean;
    Fautorizacao: TDfeAutorizacao;
    procedure Setid(const Value: string);
    procedure Setambiente(const Value: string);
    procedure Setcreated_at(const Value: TDateTime);
    procedure Setstatus(const Value: string);
    procedure Setreferencia(const Value: string);
    procedure Setdata_emissao(const Value: TDateTime);
    procedure Setmodelo(const Value: Integer);
    procedure Setserie(const Value: Integer);
    procedure Setnumero(const Value: Integer);
    procedure Setvalor_total(const Value: Double);
    procedure Setchave(const Value: string);
    procedure Setautorizacao(const Value: TDfeAutorizacao);
  public
    destructor Destroy; override;
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property created_at: TDateTime read Fcreated_at write Setcreated_at;
    property created_atHasValue: Boolean read Fcreated_atHasValue write Fcreated_atHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
    property data_emissao: TDateTime read Fdata_emissao write Setdata_emissao;
    property data_emissaoHasValue: Boolean read Fdata_emissaoHasValue write Fdata_emissaoHasValue;
    property modelo: Integer read Fmodelo write Setmodelo;
    property modeloHasValue: Boolean read FmodeloHasValue write FmodeloHasValue;
    property serie: Integer read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property numero: Integer read Fnumero write Setnumero;
    property numeroHasValue: Boolean read FnumeroHasValue write FnumeroHasValue;
    property valor_total: Double read Fvalor_total write Setvalor_total;
    property valor_totalHasValue: Boolean read Fvalor_totalHasValue write Fvalor_totalHasValue;
    property chave: string read Fchave write Setchave;
    property chaveHasValue: Boolean read FchaveHasValue write FchaveHasValue;
    property autorizacao: TDfeAutorizacao read Fautorizacao write Setautorizacao;
  end;
  
  TDfeList = class(TObjectList<TDfe>)
  end;
  
  TDfeLote = class
  private
    Fid: string;
    FidHasValue: Boolean;
    Fcreated_at: TDateTime;
    Fcreated_atHasValue: Boolean;
    Fstatus: string;
    FstatusHasValue: Boolean;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    Fid_lote: string;
    Fid_loteHasValue: Boolean;
    Frecibo: TDfeRecibo;
    Fdocumentos: TDfeList;
    procedure Setid(const Value: string);
    procedure Setcreated_at(const Value: TDateTime);
    procedure Setstatus(const Value: string);
    procedure Setambiente(const Value: string);
    procedure Setreferencia(const Value: string);
    procedure Setid_lote(const Value: string);
    procedure Setrecibo(const Value: TDfeRecibo);
    procedure Setdocumentos(const Value: TDfeList);
  public
    destructor Destroy; override;
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property created_at: TDateTime read Fcreated_at write Setcreated_at;
    property created_atHasValue: Boolean read Fcreated_atHasValue write Fcreated_atHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
    property id_lote: string read Fid_lote write Setid_lote;
    property id_loteHasValue: Boolean read Fid_loteHasValue write Fid_loteHasValue;
    property recibo: TDfeRecibo read Frecibo write Setrecibo;
    property documentos: TDfeList read Fdocumentos write Setdocumentos;
  end;
  
  TCtePedidoCancelamento = class
  private
    Fjustificativa: string;
    FjustificativaHasValue: Boolean;
    procedure Setjustificativa(const Value: string);
  public
    property justificativa: string read Fjustificativa write Setjustificativa;
    property justificativaHasValue: Boolean read FjustificativaHasValue write FjustificativaHasValue;
  end;
  
  TDfeCancelamento = class
  private
    Fjustificativa: string;
    FjustificativaHasValue: Boolean;
    Fid: string;
    FidHasValue: Boolean;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Fstatus: string;
    FstatusHasValue: Boolean;
    Fautor: TDfeAutorEvento;
    Fchave_acesso: string;
    Fchave_acessoHasValue: Boolean;
    Fdata_evento: TDateTime;
    Fdata_eventoHasValue: Boolean;
    Fnumero_sequencial: Integer;
    Fnumero_sequencialHasValue: Boolean;
    Fdata_recebimento: TDateTime;
    Fdata_recebimentoHasValue: Boolean;
    Fcodigo_status: Integer;
    Fcodigo_statusHasValue: Boolean;
    Fmotivo_status: string;
    Fmotivo_statusHasValue: Boolean;
    Fnumero_protocolo: string;
    Fnumero_protocoloHasValue: Boolean;
    Fcodigo_mensagem: Integer;
    Fcodigo_mensagemHasValue: Boolean;
    Fmensagem: string;
    FmensagemHasValue: Boolean;
    Ftipo_evento: string;
    Ftipo_eventoHasValue: Boolean;
    procedure Setjustificativa(const Value: string);
    procedure Setid(const Value: string);
    procedure Setambiente(const Value: string);
    procedure Setstatus(const Value: string);
    procedure Setautor(const Value: TDfeAutorEvento);
    procedure Setchave_acesso(const Value: string);
    procedure Setdata_evento(const Value: TDateTime);
    procedure Setnumero_sequencial(const Value: Integer);
    procedure Setdata_recebimento(const Value: TDateTime);
    procedure Setcodigo_status(const Value: Integer);
    procedure Setmotivo_status(const Value: string);
    procedure Setnumero_protocolo(const Value: string);
    procedure Setcodigo_mensagem(const Value: Integer);
    procedure Setmensagem(const Value: string);
    procedure Settipo_evento(const Value: string);
  public
    destructor Destroy; override;
    property justificativa: string read Fjustificativa write Setjustificativa;
    property justificativaHasValue: Boolean read FjustificativaHasValue write FjustificativaHasValue;
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property autor: TDfeAutorEvento read Fautor write Setautor;
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TCteInfCorrecao = class
  private
    Fgrupo_alterado: string;
    Fgrupo_alteradoHasValue: Boolean;
    Fcampo_alterado: string;
    Fcampo_alteradoHasValue: Boolean;
    Fvalor_alterado: string;
    Fvalor_alteradoHasValue: Boolean;
    Fnumero_item_alterado: Integer;
    Fnumero_item_alteradoHasValue: Boolean;
    procedure Setgrupo_alterado(const Value: string);
    procedure Setcampo_alterado(const Value: string);
    procedure Setvalor_alterado(const Value: string);
    procedure Setnumero_item_alterado(const Value: Integer);
  public
    property grupo_alterado: string read Fgrupo_alterado write Setgrupo_alterado;
    property grupo_alteradoHasValue: Boolean read Fgrupo_alteradoHasValue write Fgrupo_alteradoHasValue;
    property campo_alterado: string read Fcampo_alterado write Setcampo_alterado;
    property campo_alteradoHasValue: Boolean read Fcampo_alteradoHasValue write Fcampo_alteradoHasValue;
    property valor_alterado: string read Fvalor_alterado write Setvalor_alterado;
    property valor_alteradoHasValue: Boolean read Fvalor_alteradoHasValue write Fvalor_alteradoHasValue;
    property numero_item_alterado: Integer read Fnumero_item_alterado write Setnumero_item_alterado;
    property numero_item_alteradoHasValue: Boolean read Fnumero_item_alteradoHasValue write Fnumero_item_alteradoHasValue;
  end;
  
  TCteInfCorrecaoList = class(TObjectList<TCteInfCorrecao>)
  end;
  
  TCtePedidoCartaCorrecao = class
  private
    Fcorrecoes: TCteInfCorrecaoList;
    procedure Setcorrecoes(const Value: TCteInfCorrecaoList);
  public
    destructor Destroy; override;
    property correcoes: TCteInfCorrecaoList read Fcorrecoes write Setcorrecoes;
  end;
  
  TCteCartaCorrecao = class
  private
    Fcorrecoes: TCteInfCorrecaoList;
    Fid: string;
    FidHasValue: Boolean;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Fstatus: string;
    FstatusHasValue: Boolean;
    Fautor: TDfeAutorEvento;
    Fchave_acesso: string;
    Fchave_acessoHasValue: Boolean;
    Fdata_evento: TDateTime;
    Fdata_eventoHasValue: Boolean;
    Fnumero_sequencial: Integer;
    Fnumero_sequencialHasValue: Boolean;
    Fdata_recebimento: TDateTime;
    Fdata_recebimentoHasValue: Boolean;
    Fcodigo_status: Integer;
    Fcodigo_statusHasValue: Boolean;
    Fmotivo_status: string;
    Fmotivo_statusHasValue: Boolean;
    Fnumero_protocolo: string;
    Fnumero_protocoloHasValue: Boolean;
    Fcodigo_mensagem: Integer;
    Fcodigo_mensagemHasValue: Boolean;
    Fmensagem: string;
    FmensagemHasValue: Boolean;
    Ftipo_evento: string;
    Ftipo_eventoHasValue: Boolean;
    procedure Setcorrecoes(const Value: TCteInfCorrecaoList);
    procedure Setid(const Value: string);
    procedure Setambiente(const Value: string);
    procedure Setstatus(const Value: string);
    procedure Setautor(const Value: TDfeAutorEvento);
    procedure Setchave_acesso(const Value: string);
    procedure Setdata_evento(const Value: TDateTime);
    procedure Setnumero_sequencial(const Value: Integer);
    procedure Setdata_recebimento(const Value: TDateTime);
    procedure Setcodigo_status(const Value: Integer);
    procedure Setmotivo_status(const Value: string);
    procedure Setnumero_protocolo(const Value: string);
    procedure Setcodigo_mensagem(const Value: Integer);
    procedure Setmensagem(const Value: string);
    procedure Settipo_evento(const Value: string);
  public
    destructor Destroy; override;
    property correcoes: TCteInfCorrecaoList read Fcorrecoes write Setcorrecoes;
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property autor: TDfeAutorEvento read Fautor write Setautor;
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TDfePedidoInutilizacao = class
  private
    Fambiente: string;
    FambienteHasValue: Boolean;
    Fcnpj: string;
    FcnpjHasValue: Boolean;
    Fano: Integer;
    FanoHasValue: Boolean;
    Fserie: Integer;
    FserieHasValue: Boolean;
    Fnumero_inicial: Integer;
    Fnumero_inicialHasValue: Boolean;
    Fnumero_final: Integer;
    Fnumero_finalHasValue: Boolean;
    Fjustificativa: string;
    FjustificativaHasValue: Boolean;
    procedure Setambiente(const Value: string);
    procedure Setcnpj(const Value: string);
    procedure Setano(const Value: Integer);
    procedure Setserie(const Value: Integer);
    procedure Setnumero_inicial(const Value: Integer);
    procedure Setnumero_final(const Value: Integer);
    procedure Setjustificativa(const Value: string);
  public
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property cnpj: string read Fcnpj write Setcnpj;
    property cnpjHasValue: Boolean read FcnpjHasValue write FcnpjHasValue;
    property ano: Integer read Fano write Setano;
    property anoHasValue: Boolean read FanoHasValue write FanoHasValue;
    property serie: Integer read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property numero_inicial: Integer read Fnumero_inicial write Setnumero_inicial;
    property numero_inicialHasValue: Boolean read Fnumero_inicialHasValue write Fnumero_inicialHasValue;
    property numero_final: Integer read Fnumero_final write Setnumero_final;
    property numero_finalHasValue: Boolean read Fnumero_finalHasValue write Fnumero_finalHasValue;
    property justificativa: string read Fjustificativa write Setjustificativa;
    property justificativaHasValue: Boolean read FjustificativaHasValue write FjustificativaHasValue;
  end;
  
  TDfeInutilizacao = class
  private
    Fcnpj: string;
    FcnpjHasValue: Boolean;
    Fano: Integer;
    FanoHasValue: Boolean;
    Fmodelo: Integer;
    FmodeloHasValue: Boolean;
    Fserie: Integer;
    FserieHasValue: Boolean;
    Fnumero_inicial: Integer;
    Fnumero_inicialHasValue: Boolean;
    Fnumero_final: Integer;
    Fnumero_finalHasValue: Boolean;
    Fjustificativa: string;
    FjustificativaHasValue: Boolean;
    Fid: string;
    FidHasValue: Boolean;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Fstatus: string;
    FstatusHasValue: Boolean;
    Fautor: TDfeAutorEvento;
    Fchave_acesso: string;
    Fchave_acessoHasValue: Boolean;
    Fdata_evento: TDateTime;
    Fdata_eventoHasValue: Boolean;
    Fnumero_sequencial: Integer;
    Fnumero_sequencialHasValue: Boolean;
    Fdata_recebimento: TDateTime;
    Fdata_recebimentoHasValue: Boolean;
    Fcodigo_status: Integer;
    Fcodigo_statusHasValue: Boolean;
    Fmotivo_status: string;
    Fmotivo_statusHasValue: Boolean;
    Fnumero_protocolo: string;
    Fnumero_protocoloHasValue: Boolean;
    Fcodigo_mensagem: Integer;
    Fcodigo_mensagemHasValue: Boolean;
    Fmensagem: string;
    FmensagemHasValue: Boolean;
    Ftipo_evento: string;
    Ftipo_eventoHasValue: Boolean;
    procedure Setcnpj(const Value: string);
    procedure Setano(const Value: Integer);
    procedure Setmodelo(const Value: Integer);
    procedure Setserie(const Value: Integer);
    procedure Setnumero_inicial(const Value: Integer);
    procedure Setnumero_final(const Value: Integer);
    procedure Setjustificativa(const Value: string);
    procedure Setid(const Value: string);
    procedure Setambiente(const Value: string);
    procedure Setstatus(const Value: string);
    procedure Setautor(const Value: TDfeAutorEvento);
    procedure Setchave_acesso(const Value: string);
    procedure Setdata_evento(const Value: TDateTime);
    procedure Setnumero_sequencial(const Value: Integer);
    procedure Setdata_recebimento(const Value: TDateTime);
    procedure Setcodigo_status(const Value: Integer);
    procedure Setmotivo_status(const Value: string);
    procedure Setnumero_protocolo(const Value: string);
    procedure Setcodigo_mensagem(const Value: Integer);
    procedure Setmensagem(const Value: string);
    procedure Settipo_evento(const Value: string);
  public
    destructor Destroy; override;
    property cnpj: string read Fcnpj write Setcnpj;
    property cnpjHasValue: Boolean read FcnpjHasValue write FcnpjHasValue;
    property ano: Integer read Fano write Setano;
    property anoHasValue: Boolean read FanoHasValue write FanoHasValue;
    property modelo: Integer read Fmodelo write Setmodelo;
    property modeloHasValue: Boolean read FmodeloHasValue write FmodeloHasValue;
    property serie: Integer read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property numero_inicial: Integer read Fnumero_inicial write Setnumero_inicial;
    property numero_inicialHasValue: Boolean read Fnumero_inicialHasValue write Fnumero_inicialHasValue;
    property numero_final: Integer read Fnumero_final write Setnumero_final;
    property numero_finalHasValue: Boolean read Fnumero_finalHasValue write Fnumero_finalHasValue;
    property justificativa: string read Fjustificativa write Setjustificativa;
    property justificativaHasValue: Boolean read FjustificativaHasValue write FjustificativaHasValue;
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property autor: TDfeAutorEvento read Fautor write Setautor;
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TDfeEvento = class
  private
    Fid: string;
    FidHasValue: Boolean;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Fstatus: string;
    FstatusHasValue: Boolean;
    Fautor: TDfeAutorEvento;
    Fchave_acesso: string;
    Fchave_acessoHasValue: Boolean;
    Fdata_evento: TDateTime;
    Fdata_eventoHasValue: Boolean;
    Fnumero_sequencial: Integer;
    Fnumero_sequencialHasValue: Boolean;
    Fdata_recebimento: TDateTime;
    Fdata_recebimentoHasValue: Boolean;
    Fcodigo_status: Integer;
    Fcodigo_statusHasValue: Boolean;
    Fmotivo_status: string;
    Fmotivo_statusHasValue: Boolean;
    Fnumero_protocolo: string;
    Fnumero_protocoloHasValue: Boolean;
    Fcodigo_mensagem: Integer;
    Fcodigo_mensagemHasValue: Boolean;
    Fmensagem: string;
    FmensagemHasValue: Boolean;
    Ftipo_evento: string;
    Ftipo_eventoHasValue: Boolean;
    procedure Setid(const Value: string);
    procedure Setambiente(const Value: string);
    procedure Setstatus(const Value: string);
    procedure Setautor(const Value: TDfeAutorEvento);
    procedure Setchave_acesso(const Value: string);
    procedure Setdata_evento(const Value: TDateTime);
    procedure Setnumero_sequencial(const Value: Integer);
    procedure Setdata_recebimento(const Value: TDateTime);
    procedure Setcodigo_status(const Value: Integer);
    procedure Setmotivo_status(const Value: string);
    procedure Setnumero_protocolo(const Value: string);
    procedure Setcodigo_mensagem(const Value: Integer);
    procedure Setmensagem(const Value: string);
    procedure Settipo_evento(const Value: string);
  public
    destructor Destroy; override;
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property autor: TDfeAutorEvento read Fautor write Setautor;
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TMdfeSefazInfMunCarrega = class
  private
    FcMunCarrega: Integer;
    FcMunCarregaHasValue: Boolean;
    FxMunCarrega: string;
    FxMunCarregaHasValue: Boolean;
    procedure SetcMunCarrega(const Value: Integer);
    procedure SetxMunCarrega(const Value: string);
  public
    property cMunCarrega: Integer read FcMunCarrega write SetcMunCarrega;
    property cMunCarregaHasValue: Boolean read FcMunCarregaHasValue write FcMunCarregaHasValue;
    property xMunCarrega: string read FxMunCarrega write SetxMunCarrega;
    property xMunCarregaHasValue: Boolean read FxMunCarregaHasValue write FxMunCarregaHasValue;
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
    FcUF: Integer;
    FcUFHasValue: Boolean;
    FtpAmb: Integer;
    FtpAmbHasValue: Boolean;
    FtpEmit: Integer;
    FtpEmitHasValue: Boolean;
    FtpTransp: Integer;
    FtpTranspHasValue: Boolean;
    Fmod: Integer;
    FmodHasValue: Boolean;
    Fserie: Integer;
    FserieHasValue: Boolean;
    FnMDF: Integer;
    FnMDFHasValue: Boolean;
    FcMDF: Integer;
    FcMDFHasValue: Boolean;
    FcDV: Integer;
    FcDVHasValue: Boolean;
    Fmodal: Integer;
    FmodalHasValue: Boolean;
    FdhEmi: TDateTime;
    FdhEmiHasValue: Boolean;
    FtpEmis: Integer;
    FtpEmisHasValue: Boolean;
    FprocEmi: string;
    FprocEmiHasValue: Boolean;
    FverProc: string;
    FverProcHasValue: Boolean;
    FUFIni: string;
    FUFIniHasValue: Boolean;
    FUFFim: string;
    FUFFimHasValue: Boolean;
    FinfMunCarrega: TMdfeSefazInfMunCarregaList;
    FinfPercurso: TMdfeSefazInfPercursoList;
    FdhIniViagem: TDateTime;
    FdhIniViagemHasValue: Boolean;
    FindCanalVerde: Integer;
    FindCanalVerdeHasValue: Boolean;
    FindCarregaPosterior: Integer;
    FindCarregaPosteriorHasValue: Boolean;
    procedure SetcUF(const Value: Integer);
    procedure SettpAmb(const Value: Integer);
    procedure SettpEmit(const Value: Integer);
    procedure SettpTransp(const Value: Integer);
    procedure Setmod(const Value: Integer);
    procedure Setserie(const Value: Integer);
    procedure SetnMDF(const Value: Integer);
    procedure SetcMDF(const Value: Integer);
    procedure SetcDV(const Value: Integer);
    procedure Setmodal(const Value: Integer);
    procedure SetdhEmi(const Value: TDateTime);
    procedure SettpEmis(const Value: Integer);
    procedure SetprocEmi(const Value: string);
    procedure SetverProc(const Value: string);
    procedure SetUFIni(const Value: string);
    procedure SetUFFim(const Value: string);
    procedure SetinfMunCarrega(const Value: TMdfeSefazInfMunCarregaList);
    procedure SetinfPercurso(const Value: TMdfeSefazInfPercursoList);
    procedure SetdhIniViagem(const Value: TDateTime);
    procedure SetindCanalVerde(const Value: Integer);
    procedure SetindCarregaPosterior(const Value: Integer);
  public
    destructor Destroy; override;
    property cUF: Integer read FcUF write SetcUF;
    property cUFHasValue: Boolean read FcUFHasValue write FcUFHasValue;
    property tpAmb: Integer read FtpAmb write SettpAmb;
    property tpAmbHasValue: Boolean read FtpAmbHasValue write FtpAmbHasValue;
    property tpEmit: Integer read FtpEmit write SettpEmit;
    property tpEmitHasValue: Boolean read FtpEmitHasValue write FtpEmitHasValue;
    property tpTransp: Integer read FtpTransp write SettpTransp;
    property tpTranspHasValue: Boolean read FtpTranspHasValue write FtpTranspHasValue;
    property &mod: Integer read Fmod write Setmod;
    property &modHasValue: Boolean read FmodHasValue write FmodHasValue;
    property serie: Integer read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property nMDF: Integer read FnMDF write SetnMDF;
    property nMDFHasValue: Boolean read FnMDFHasValue write FnMDFHasValue;
    property cMDF: Integer read FcMDF write SetcMDF;
    property cMDFHasValue: Boolean read FcMDFHasValue write FcMDFHasValue;
    property cDV: Integer read FcDV write SetcDV;
    property cDVHasValue: Boolean read FcDVHasValue write FcDVHasValue;
    property modal: Integer read Fmodal write Setmodal;
    property modalHasValue: Boolean read FmodalHasValue write FmodalHasValue;
    property dhEmi: TDateTime read FdhEmi write SetdhEmi;
    property dhEmiHasValue: Boolean read FdhEmiHasValue write FdhEmiHasValue;
    property tpEmis: Integer read FtpEmis write SettpEmis;
    property tpEmisHasValue: Boolean read FtpEmisHasValue write FtpEmisHasValue;
    property procEmi: string read FprocEmi write SetprocEmi;
    property procEmiHasValue: Boolean read FprocEmiHasValue write FprocEmiHasValue;
    property verProc: string read FverProc write SetverProc;
    property verProcHasValue: Boolean read FverProcHasValue write FverProcHasValue;
    property UFIni: string read FUFIni write SetUFIni;
    property UFIniHasValue: Boolean read FUFIniHasValue write FUFIniHasValue;
    property UFFim: string read FUFFim write SetUFFim;
    property UFFimHasValue: Boolean read FUFFimHasValue write FUFFimHasValue;
    property infMunCarrega: TMdfeSefazInfMunCarregaList read FinfMunCarrega write SetinfMunCarrega;
    property infPercurso: TMdfeSefazInfPercursoList read FinfPercurso write SetinfPercurso;
    property dhIniViagem: TDateTime read FdhIniViagem write SetdhIniViagem;
    property dhIniViagemHasValue: Boolean read FdhIniViagemHasValue write FdhIniViagemHasValue;
    property indCanalVerde: Integer read FindCanalVerde write SetindCanalVerde;
    property indCanalVerdeHasValue: Boolean read FindCanalVerdeHasValue write FindCanalVerdeHasValue;
    property indCarregaPosterior: Integer read FindCarregaPosterior write SetindCarregaPosterior;
    property indCarregaPosteriorHasValue: Boolean read FindCarregaPosteriorHasValue write FindCarregaPosteriorHasValue;
  end;
  
  TMdfeSefazEndeEmi = class
  private
    FxLgr: string;
    FxLgrHasValue: Boolean;
    Fnro: string;
    FnroHasValue: Boolean;
    FxCpl: string;
    FxCplHasValue: Boolean;
    FxBairro: string;
    FxBairroHasValue: Boolean;
    FcMun: Integer;
    FcMunHasValue: Boolean;
    FxMun: string;
    FxMunHasValue: Boolean;
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    Femail: string;
    FemailHasValue: Boolean;
    procedure SetxLgr(const Value: string);
    procedure Setnro(const Value: string);
    procedure SetxCpl(const Value: string);
    procedure SetxBairro(const Value: string);
    procedure SetcMun(const Value: Integer);
    procedure SetxMun(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetUF(const Value: string);
    procedure Setfone(const Value: string);
    procedure Setemail(const Value: string);
  public
    property xLgr: string read FxLgr write SetxLgr;
    property xLgrHasValue: Boolean read FxLgrHasValue write FxLgrHasValue;
    property nro: string read Fnro write Setnro;
    property nroHasValue: Boolean read FnroHasValue write FnroHasValue;
    property xCpl: string read FxCpl write SetxCpl;
    property xCplHasValue: Boolean read FxCplHasValue write FxCplHasValue;
    property xBairro: string read FxBairro write SetxBairro;
    property xBairroHasValue: Boolean read FxBairroHasValue write FxBairroHasValue;
    property cMun: Integer read FcMun write SetcMun;
    property cMunHasValue: Boolean read FcMunHasValue write FcMunHasValue;
    property xMun: string read FxMun write SetxMun;
    property xMunHasValue: Boolean read FxMunHasValue write FxMunHasValue;
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
  end;
  
  TMdfeSefazEmit = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FxNome: string;
    FxNomeHasValue: Boolean;
    FxFant: string;
    FxFantHasValue: Boolean;
    FenderEmit: TMdfeSefazEndeEmi;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetxNome(const Value: string);
    procedure SetxFant(const Value: string);
    procedure SetenderEmit(const Value: TMdfeSefazEndeEmi);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property xFant: string read FxFant write SetxFant;
    property xFantHasValue: Boolean read FxFantHasValue write FxFantHasValue;
    property enderEmit: TMdfeSefazEndeEmi read FenderEmit write SetenderEmit;
  end;
  
  TMdfeSefazAereo = class
  private
    Fnac: string;
    FnacHasValue: Boolean;
    Fmatr: string;
    FmatrHasValue: Boolean;
    FnVoo: string;
    FnVooHasValue: Boolean;
    FcAerEmb: string;
    FcAerEmbHasValue: Boolean;
    FcAerDes: string;
    FcAerDesHasValue: Boolean;
    FdVoo: TDate;
    FdVooHasValue: Boolean;
    procedure Setnac(const Value: string);
    procedure Setmatr(const Value: string);
    procedure SetnVoo(const Value: string);
    procedure SetcAerEmb(const Value: string);
    procedure SetcAerDes(const Value: string);
    procedure SetdVoo(const Value: TDate);
  public
    property nac: string read Fnac write Setnac;
    property nacHasValue: Boolean read FnacHasValue write FnacHasValue;
    property matr: string read Fmatr write Setmatr;
    property matrHasValue: Boolean read FmatrHasValue write FmatrHasValue;
    property nVoo: string read FnVoo write SetnVoo;
    property nVooHasValue: Boolean read FnVooHasValue write FnVooHasValue;
    property cAerEmb: string read FcAerEmb write SetcAerEmb;
    property cAerEmbHasValue: Boolean read FcAerEmbHasValue write FcAerEmbHasValue;
    property cAerDes: string read FcAerDes write SetcAerDes;
    property cAerDesHasValue: Boolean read FcAerDesHasValue write FcAerDesHasValue;
    property dVoo: TDate read FdVoo write SetdVoo;
    property dVooHasValue: Boolean read FdVooHasValue write FdVooHasValue;
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
    FnCompra: string;
    FnCompraHasValue: Boolean;
    FvValePed: Double;
    FvValePedHasValue: Boolean;
    FtpValePed: string;
    FtpValePedHasValue: Boolean;
    procedure SetCNPJForn(const Value: string);
    procedure SetCNPJPg(const Value: string);
    procedure SetCPFPg(const Value: string);
    procedure SetnCompra(const Value: string);
    procedure SetvValePed(const Value: Double);
    procedure SettpValePed(const Value: string);
  public
    property CNPJForn: string read FCNPJForn write SetCNPJForn;
    property CNPJFornHasValue: Boolean read FCNPJFornHasValue write FCNPJFornHasValue;
    property CNPJPg: string read FCNPJPg write SetCNPJPg;
    property CNPJPgHasValue: Boolean read FCNPJPgHasValue write FCNPJPgHasValue;
    property CPFPg: string read FCPFPg write SetCPFPg;
    property CPFPgHasValue: Boolean read FCPFPgHasValue write FCPFPgHasValue;
    property nCompra: string read FnCompra write SetnCompra;
    property nCompraHasValue: Boolean read FnCompraHasValue write FnCompraHasValue;
    property vValePed: Double read FvValePed write SetvValePed;
    property vValePedHasValue: Boolean read FvValePedHasValue write FvValePedHasValue;
    property tpValePed: string read FtpValePed write SettpValePed;
    property tpValePedHasValue: Boolean read FtpValePedHasValue write FtpValePedHasValue;
  end;
  
  TMdfeSefazDispList = class(TObjectList<TMdfeSefazDisp>)
  end;
  
  TMdfeSefazValePed = class
  private
    Fdisp: TMdfeSefazDispList;
    FcategCombVeic: string;
    FcategCombVeicHasValue: Boolean;
    procedure Setdisp(const Value: TMdfeSefazDispList);
    procedure SetcategCombVeic(const Value: string);
  public
    destructor Destroy; override;
    property disp: TMdfeSefazDispList read Fdisp write Setdisp;
    property categCombVeic: string read FcategCombVeic write SetcategCombVeic;
    property categCombVeicHasValue: Boolean read FcategCombVeicHasValue write FcategCombVeicHasValue;
  end;
  
  TMdfeSefazInfContratante = class
  private
    FxNome: string;
    FxNomeHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FidEstrangeiro: string;
    FidEstrangeiroHasValue: Boolean;
    procedure SetxNome(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetidEstrangeiro(const Value: string);
  public
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property idEstrangeiro: string read FidEstrangeiro write SetidEstrangeiro;
    property idEstrangeiroHasValue: Boolean read FidEstrangeiroHasValue write FidEstrangeiroHasValue;
  end;
  
  TMdfeSefazInfContratanteList = class(TObjectList<TMdfeSefazInfContratante>)
  end;
  
  TMdfeSefazComp = class
  private
    FtpComp: string;
    FtpCompHasValue: Boolean;
    FvComp: Double;
    FvCompHasValue: Boolean;
    FxComp: string;
    FxCompHasValue: Boolean;
    procedure SettpComp(const Value: string);
    procedure SetvComp(const Value: Double);
    procedure SetxComp(const Value: string);
  public
    property tpComp: string read FtpComp write SettpComp;
    property tpCompHasValue: Boolean read FtpCompHasValue write FtpCompHasValue;
    property vComp: Double read FvComp write SetvComp;
    property vCompHasValue: Boolean read FvCompHasValue write FvCompHasValue;
    property xComp: string read FxComp write SetxComp;
    property xCompHasValue: Boolean read FxCompHasValue write FxCompHasValue;
  end;
  
  TMdfeSefazCompList = class(TObjectList<TMdfeSefazComp>)
  end;
  
  TMdfeSefazInfPrazo = class
  private
    FnParcela: Integer;
    FnParcelaHasValue: Boolean;
    FdVenc: TDate;
    FdVencHasValue: Boolean;
    FvParcela: Double;
    FvParcelaHasValue: Boolean;
    procedure SetnParcela(const Value: Integer);
    procedure SetdVenc(const Value: TDate);
    procedure SetvParcela(const Value: Double);
  public
    property nParcela: Integer read FnParcela write SetnParcela;
    property nParcelaHasValue: Boolean read FnParcelaHasValue write FnParcelaHasValue;
    property dVenc: TDate read FdVenc write SetdVenc;
    property dVencHasValue: Boolean read FdVencHasValue write FdVencHasValue;
    property vParcela: Double read FvParcela write SetvParcela;
    property vParcelaHasValue: Boolean read FvParcelaHasValue write FvParcelaHasValue;
  end;
  
  TMdfeSefazInfPrazoList = class(TObjectList<TMdfeSefazInfPrazo>)
  end;
  
  TMdfeSefazInfBanc = class
  private
    FcodBanco: string;
    FcodBancoHasValue: Boolean;
    FcodAgencia: string;
    FcodAgenciaHasValue: Boolean;
    FCNPJIPEF: string;
    FCNPJIPEFHasValue: Boolean;
    FPIX: string;
    FPIXHasValue: Boolean;
    procedure SetcodBanco(const Value: string);
    procedure SetcodAgencia(const Value: string);
    procedure SetCNPJIPEF(const Value: string);
    procedure SetPIX(const Value: string);
  public
    property codBanco: string read FcodBanco write SetcodBanco;
    property codBancoHasValue: Boolean read FcodBancoHasValue write FcodBancoHasValue;
    property codAgencia: string read FcodAgencia write SetcodAgencia;
    property codAgenciaHasValue: Boolean read FcodAgenciaHasValue write FcodAgenciaHasValue;
    property CNPJIPEF: string read FCNPJIPEF write SetCNPJIPEF;
    property CNPJIPEFHasValue: Boolean read FCNPJIPEFHasValue write FCNPJIPEFHasValue;
    property PIX: string read FPIX write SetPIX;
    property PIXHasValue: Boolean read FPIXHasValue write FPIXHasValue;
  end;
  
  TMdfeSefazInfPag = class
  private
    FxNome: string;
    FxNomeHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FidEstrangeiro: string;
    FidEstrangeiroHasValue: Boolean;
    FComp: TMdfeSefazCompList;
    FvContrato: Double;
    FvContratoHasValue: Boolean;
    FindAltoDesemp: Integer;
    FindAltoDesempHasValue: Boolean;
    FindPag: Integer;
    FindPagHasValue: Boolean;
    FvAdiant: Double;
    FvAdiantHasValue: Boolean;
    FinfPrazo: TMdfeSefazInfPrazoList;
    FinfBanc: TMdfeSefazInfBanc;
    procedure SetxNome(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetidEstrangeiro(const Value: string);
    procedure SetComp(const Value: TMdfeSefazCompList);
    procedure SetvContrato(const Value: Double);
    procedure SetindAltoDesemp(const Value: Integer);
    procedure SetindPag(const Value: Integer);
    procedure SetvAdiant(const Value: Double);
    procedure SetinfPrazo(const Value: TMdfeSefazInfPrazoList);
    procedure SetinfBanc(const Value: TMdfeSefazInfBanc);
  public
    destructor Destroy; override;
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property idEstrangeiro: string read FidEstrangeiro write SetidEstrangeiro;
    property idEstrangeiroHasValue: Boolean read FidEstrangeiroHasValue write FidEstrangeiroHasValue;
    property Comp: TMdfeSefazCompList read FComp write SetComp;
    property vContrato: Double read FvContrato write SetvContrato;
    property vContratoHasValue: Boolean read FvContratoHasValue write FvContratoHasValue;
    property indAltoDesemp: Integer read FindAltoDesemp write SetindAltoDesemp;
    property indAltoDesempHasValue: Boolean read FindAltoDesempHasValue write FindAltoDesempHasValue;
    property indPag: Integer read FindPag write SetindPag;
    property indPagHasValue: Boolean read FindPagHasValue write FindPagHasValue;
    property vAdiant: Double read FvAdiant write SetvAdiant;
    property vAdiantHasValue: Boolean read FvAdiantHasValue write FvAdiantHasValue;
    property infPrazo: TMdfeSefazInfPrazoList read FinfPrazo write SetinfPrazo;
    property infBanc: TMdfeSefazInfBanc read FinfBanc write SetinfBanc;
  end;
  
  TMdfeSefazInfPagList = class(TObjectList<TMdfeSefazInfPag>)
  end;
  
  TMdfeSefazInfANTT = class
  private
    FRNTRC: string;
    FRNTRCHasValue: Boolean;
    FinfCIOT: TMdfeSefazInfCIOTList;
    FvalePed: TMdfeSefazValePed;
    FinfContratante: TMdfeSefazInfContratanteList;
    FinfPag: TMdfeSefazInfPagList;
    procedure SetRNTRC(const Value: string);
    procedure SetinfCIOT(const Value: TMdfeSefazInfCIOTList);
    procedure SetvalePed(const Value: TMdfeSefazValePed);
    procedure SetinfContratante(const Value: TMdfeSefazInfContratanteList);
    procedure SetinfPag(const Value: TMdfeSefazInfPagList);
  public
    destructor Destroy; override;
    property RNTRC: string read FRNTRC write SetRNTRC;
    property RNTRCHasValue: Boolean read FRNTRCHasValue write FRNTRCHasValue;
    property infCIOT: TMdfeSefazInfCIOTList read FinfCIOT write SetinfCIOT;
    property valePed: TMdfeSefazValePed read FvalePed write SetvalePed;
    property infContratante: TMdfeSefazInfContratanteList read FinfContratante write SetinfContratante;
    property infPag: TMdfeSefazInfPagList read FinfPag write SetinfPag;
  end;
  
  TMdfeSefazProp = class
  private
    FCPF: string;
    FCPFHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FRNTRC: string;
    FRNTRCHasValue: Boolean;
    FxNome: string;
    FxNomeHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FtpProp: Integer;
    FtpPropHasValue: Boolean;
    procedure SetCPF(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetRNTRC(const Value: string);
    procedure SetxNome(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetUF(const Value: string);
    procedure SettpProp(const Value: Integer);
  public
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property RNTRC: string read FRNTRC write SetRNTRC;
    property RNTRCHasValue: Boolean read FRNTRCHasValue write FRNTRCHasValue;
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property tpProp: Integer read FtpProp write SettpProp;
    property tpPropHasValue: Boolean read FtpPropHasValue write FtpPropHasValue;
  end;
  
  TMdfeSefazCondutor = class
  private
    FxNome: string;
    FxNomeHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    procedure SetxNome(const Value: string);
    procedure SetCPF(const Value: string);
  public
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
  end;
  
  TMdfeSefazCondutorList = class(TObjectList<TMdfeSefazCondutor>)
  end;
  
  TMdfeSefazVeicTracao = class
  private
    FcInt: string;
    FcIntHasValue: Boolean;
    Fplaca: string;
    FplacaHasValue: Boolean;
    FRENAVAM: string;
    FRENAVAMHasValue: Boolean;
    Ftara: Integer;
    FtaraHasValue: Boolean;
    FcapKG: Integer;
    FcapKGHasValue: Boolean;
    FcapM3: Integer;
    FcapM3HasValue: Boolean;
    Fprop: TMdfeSefazProp;
    Fcondutor: TMdfeSefazCondutorList;
    FtpRod: string;
    FtpRodHasValue: Boolean;
    FtpCar: string;
    FtpCarHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    procedure SetcInt(const Value: string);
    procedure Setplaca(const Value: string);
    procedure SetRENAVAM(const Value: string);
    procedure Settara(const Value: Integer);
    procedure SetcapKG(const Value: Integer);
    procedure SetcapM3(const Value: Integer);
    procedure Setprop(const Value: TMdfeSefazProp);
    procedure Setcondutor(const Value: TMdfeSefazCondutorList);
    procedure SettpRod(const Value: string);
    procedure SettpCar(const Value: string);
    procedure SetUF(const Value: string);
  public
    destructor Destroy; override;
    property cInt: string read FcInt write SetcInt;
    property cIntHasValue: Boolean read FcIntHasValue write FcIntHasValue;
    property placa: string read Fplaca write Setplaca;
    property placaHasValue: Boolean read FplacaHasValue write FplacaHasValue;
    property RENAVAM: string read FRENAVAM write SetRENAVAM;
    property RENAVAMHasValue: Boolean read FRENAVAMHasValue write FRENAVAMHasValue;
    property tara: Integer read Ftara write Settara;
    property taraHasValue: Boolean read FtaraHasValue write FtaraHasValue;
    property capKG: Integer read FcapKG write SetcapKG;
    property capKGHasValue: Boolean read FcapKGHasValue write FcapKGHasValue;
    property capM3: Integer read FcapM3 write SetcapM3;
    property capM3HasValue: Boolean read FcapM3HasValue write FcapM3HasValue;
    property prop: TMdfeSefazProp read Fprop write Setprop;
    property condutor: TMdfeSefazCondutorList read Fcondutor write Setcondutor;
    property tpRod: string read FtpRod write SettpRod;
    property tpRodHasValue: Boolean read FtpRodHasValue write FtpRodHasValue;
    property tpCar: string read FtpCar write SettpCar;
    property tpCarHasValue: Boolean read FtpCarHasValue write FtpCarHasValue;
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
    FxNome: string;
    FxNomeHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FtpProp: Integer;
    FtpPropHasValue: Boolean;
    procedure SetCPF(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetRNTRC(const Value: string);
    procedure SetxNome(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetUF(const Value: string);
    procedure SettpProp(const Value: Integer);
  public
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property RNTRC: string read FRNTRC write SetRNTRC;
    property RNTRCHasValue: Boolean read FRNTRCHasValue write FRNTRCHasValue;
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property tpProp: Integer read FtpProp write SettpProp;
    property tpPropHasValue: Boolean read FtpPropHasValue write FtpPropHasValue;
  end;
  
  TMdfeSefazVeicReboque = class
  private
    FcInt: string;
    FcIntHasValue: Boolean;
    Fplaca: string;
    FplacaHasValue: Boolean;
    FRENAVAM: string;
    FRENAVAMHasValue: Boolean;
    Ftara: Integer;
    FtaraHasValue: Boolean;
    FcapKG: Integer;
    FcapKGHasValue: Boolean;
    FcapM3: Integer;
    FcapM3HasValue: Boolean;
    Fprop: TMdfeSefazVeicReboqueProp;
    FtpCar: string;
    FtpCarHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    procedure SetcInt(const Value: string);
    procedure Setplaca(const Value: string);
    procedure SetRENAVAM(const Value: string);
    procedure Settara(const Value: Integer);
    procedure SetcapKG(const Value: Integer);
    procedure SetcapM3(const Value: Integer);
    procedure Setprop(const Value: TMdfeSefazVeicReboqueProp);
    procedure SettpCar(const Value: string);
    procedure SetUF(const Value: string);
  public
    destructor Destroy; override;
    property cInt: string read FcInt write SetcInt;
    property cIntHasValue: Boolean read FcIntHasValue write FcIntHasValue;
    property placa: string read Fplaca write Setplaca;
    property placaHasValue: Boolean read FplacaHasValue write FplacaHasValue;
    property RENAVAM: string read FRENAVAM write SetRENAVAM;
    property RENAVAMHasValue: Boolean read FRENAVAMHasValue write FRENAVAMHasValue;
    property tara: Integer read Ftara write Settara;
    property taraHasValue: Boolean read FtaraHasValue write FtaraHasValue;
    property capKG: Integer read FcapKG write SetcapKG;
    property capKGHasValue: Boolean read FcapKGHasValue write FcapKGHasValue;
    property capM3: Integer read FcapM3 write SetcapM3;
    property capM3HasValue: Boolean read FcapM3HasValue write FcapM3HasValue;
    property prop: TMdfeSefazVeicReboqueProp read Fprop write Setprop;
    property tpCar: string read FtpCar write SettpCar;
    property tpCarHasValue: Boolean read FtpCarHasValue write FtpCarHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
  end;
  
  TMdfeSefazVeicReboqueList = class(TObjectList<TMdfeSefazVeicReboque>)
  end;
  
  TMdfeSefazLacRodo = class
  private
    FnLacre: string;
    FnLacreHasValue: Boolean;
    procedure SetnLacre(const Value: string);
  public
    property nLacre: string read FnLacre write SetnLacre;
    property nLacreHasValue: Boolean read FnLacreHasValue write FnLacreHasValue;
  end;
  
  TMdfeSefazLacRodoList = class(TObjectList<TMdfeSefazLacRodo>)
  end;
  
  TMdfeSefazRodo = class
  private
    FinfANTT: TMdfeSefazInfANTT;
    FveicTracao: TMdfeSefazVeicTracao;
    FveicReboque: TMdfeSefazVeicReboqueList;
    FcodAgPorto: string;
    FcodAgPortoHasValue: Boolean;
    FlacRodo: TMdfeSefazLacRodoList;
    procedure SetinfANTT(const Value: TMdfeSefazInfANTT);
    procedure SetveicTracao(const Value: TMdfeSefazVeicTracao);
    procedure SetveicReboque(const Value: TMdfeSefazVeicReboqueList);
    procedure SetcodAgPorto(const Value: string);
    procedure SetlacRodo(const Value: TMdfeSefazLacRodoList);
  public
    destructor Destroy; override;
    property infANTT: TMdfeSefazInfANTT read FinfANTT write SetinfANTT;
    property veicTracao: TMdfeSefazVeicTracao read FveicTracao write SetveicTracao;
    property veicReboque: TMdfeSefazVeicReboqueList read FveicReboque write SetveicReboque;
    property codAgPorto: string read FcodAgPorto write SetcodAgPorto;
    property codAgPortoHasValue: Boolean read FcodAgPortoHasValue write FcodAgPortoHasValue;
    property lacRodo: TMdfeSefazLacRodoList read FlacRodo write SetlacRodo;
  end;
  
  TMdfeSefazInfTermCarreg = class
  private
    FcTermCarreg: string;
    FcTermCarregHasValue: Boolean;
    FxTermCarreg: string;
    FxTermCarregHasValue: Boolean;
    procedure SetcTermCarreg(const Value: string);
    procedure SetxTermCarreg(const Value: string);
  public
    property cTermCarreg: string read FcTermCarreg write SetcTermCarreg;
    property cTermCarregHasValue: Boolean read FcTermCarregHasValue write FcTermCarregHasValue;
    property xTermCarreg: string read FxTermCarreg write SetxTermCarreg;
    property xTermCarregHasValue: Boolean read FxTermCarregHasValue write FxTermCarregHasValue;
  end;
  
  TMdfeSefazInfTermCarregList = class(TObjectList<TMdfeSefazInfTermCarreg>)
  end;
  
  TMdfeSefazInfTermDescarreg = class
  private
    FcTermDescarreg: string;
    FcTermDescarregHasValue: Boolean;
    FxTermDescarreg: string;
    FxTermDescarregHasValue: Boolean;
    procedure SetcTermDescarreg(const Value: string);
    procedure SetxTermDescarreg(const Value: string);
  public
    property cTermDescarreg: string read FcTermDescarreg write SetcTermDescarreg;
    property cTermDescarregHasValue: Boolean read FcTermDescarregHasValue write FcTermDescarregHasValue;
    property xTermDescarreg: string read FxTermDescarreg write SetxTermDescarreg;
    property xTermDescarregHasValue: Boolean read FxTermDescarregHasValue write FxTermDescarregHasValue;
  end;
  
  TMdfeSefazInfTermDescarregList = class(TObjectList<TMdfeSefazInfTermDescarreg>)
  end;
  
  TMdfeSefazInfEmbComb = class
  private
    FcEmbComb: string;
    FcEmbCombHasValue: Boolean;
    FxBalsa: string;
    FxBalsaHasValue: Boolean;
    procedure SetcEmbComb(const Value: string);
    procedure SetxBalsa(const Value: string);
  public
    property cEmbComb: string read FcEmbComb write SetcEmbComb;
    property cEmbCombHasValue: Boolean read FcEmbCombHasValue write FcEmbCombHasValue;
    property xBalsa: string read FxBalsa write SetxBalsa;
    property xBalsaHasValue: Boolean read FxBalsaHasValue write FxBalsaHasValue;
  end;
  
  TMdfeSefazInfEmbCombList = class(TObjectList<TMdfeSefazInfEmbComb>)
  end;
  
  TMdfeSefazInfUnidCargaVazia = class
  private
    FidUnidCargaVazia: string;
    FidUnidCargaVaziaHasValue: Boolean;
    FtpUnidCargaVazia: Integer;
    FtpUnidCargaVaziaHasValue: Boolean;
    procedure SetidUnidCargaVazia(const Value: string);
    procedure SettpUnidCargaVazia(const Value: Integer);
  public
    property idUnidCargaVazia: string read FidUnidCargaVazia write SetidUnidCargaVazia;
    property idUnidCargaVaziaHasValue: Boolean read FidUnidCargaVaziaHasValue write FidUnidCargaVaziaHasValue;
    property tpUnidCargaVazia: Integer read FtpUnidCargaVazia write SettpUnidCargaVazia;
    property tpUnidCargaVaziaHasValue: Boolean read FtpUnidCargaVaziaHasValue write FtpUnidCargaVaziaHasValue;
  end;
  
  TMdfeSefazInfUnidCargaVaziaList = class(TObjectList<TMdfeSefazInfUnidCargaVazia>)
  end;
  
  TMdfeSefazInfUnidTranspVazia = class
  private
    FidUnidTranspVazia: string;
    FidUnidTranspVaziaHasValue: Boolean;
    FtpUnidTranspVazia: Integer;
    FtpUnidTranspVaziaHasValue: Boolean;
    procedure SetidUnidTranspVazia(const Value: string);
    procedure SettpUnidTranspVazia(const Value: Integer);
  public
    property idUnidTranspVazia: string read FidUnidTranspVazia write SetidUnidTranspVazia;
    property idUnidTranspVaziaHasValue: Boolean read FidUnidTranspVaziaHasValue write FidUnidTranspVaziaHasValue;
    property tpUnidTranspVazia: Integer read FtpUnidTranspVazia write SettpUnidTranspVazia;
    property tpUnidTranspVaziaHasValue: Boolean read FtpUnidTranspVaziaHasValue write FtpUnidTranspVaziaHasValue;
  end;
  
  TMdfeSefazInfUnidTranspVaziaList = class(TObjectList<TMdfeSefazInfUnidTranspVazia>)
  end;
  
  TMdfeSefazAquav = class
  private
    Firin: string;
    FirinHasValue: Boolean;
    FtpEmb: string;
    FtpEmbHasValue: Boolean;
    FcEmbar: string;
    FcEmbarHasValue: Boolean;
    FxEmbar: string;
    FxEmbarHasValue: Boolean;
    FnViag: string;
    FnViagHasValue: Boolean;
    FcPrtEmb: string;
    FcPrtEmbHasValue: Boolean;
    FcPrtDest: string;
    FcPrtDestHasValue: Boolean;
    FprtTrans: string;
    FprtTransHasValue: Boolean;
    FtpNav: Integer;
    FtpNavHasValue: Boolean;
    FinfTermCarreg: TMdfeSefazInfTermCarregList;
    FinfTermDescarreg: TMdfeSefazInfTermDescarregList;
    FinfEmbComb: TMdfeSefazInfEmbCombList;
    FinfUnidCargaVazia: TMdfeSefazInfUnidCargaVaziaList;
    FinfUnidTranspVazia: TMdfeSefazInfUnidTranspVaziaList;
    procedure Setirin(const Value: string);
    procedure SettpEmb(const Value: string);
    procedure SetcEmbar(const Value: string);
    procedure SetxEmbar(const Value: string);
    procedure SetnViag(const Value: string);
    procedure SetcPrtEmb(const Value: string);
    procedure SetcPrtDest(const Value: string);
    procedure SetprtTrans(const Value: string);
    procedure SettpNav(const Value: Integer);
    procedure SetinfTermCarreg(const Value: TMdfeSefazInfTermCarregList);
    procedure SetinfTermDescarreg(const Value: TMdfeSefazInfTermDescarregList);
    procedure SetinfEmbComb(const Value: TMdfeSefazInfEmbCombList);
    procedure SetinfUnidCargaVazia(const Value: TMdfeSefazInfUnidCargaVaziaList);
    procedure SetinfUnidTranspVazia(const Value: TMdfeSefazInfUnidTranspVaziaList);
  public
    destructor Destroy; override;
    property irin: string read Firin write Setirin;
    property irinHasValue: Boolean read FirinHasValue write FirinHasValue;
    property tpEmb: string read FtpEmb write SettpEmb;
    property tpEmbHasValue: Boolean read FtpEmbHasValue write FtpEmbHasValue;
    property cEmbar: string read FcEmbar write SetcEmbar;
    property cEmbarHasValue: Boolean read FcEmbarHasValue write FcEmbarHasValue;
    property xEmbar: string read FxEmbar write SetxEmbar;
    property xEmbarHasValue: Boolean read FxEmbarHasValue write FxEmbarHasValue;
    property nViag: string read FnViag write SetnViag;
    property nViagHasValue: Boolean read FnViagHasValue write FnViagHasValue;
    property cPrtEmb: string read FcPrtEmb write SetcPrtEmb;
    property cPrtEmbHasValue: Boolean read FcPrtEmbHasValue write FcPrtEmbHasValue;
    property cPrtDest: string read FcPrtDest write SetcPrtDest;
    property cPrtDestHasValue: Boolean read FcPrtDestHasValue write FcPrtDestHasValue;
    property prtTrans: string read FprtTrans write SetprtTrans;
    property prtTransHasValue: Boolean read FprtTransHasValue write FprtTransHasValue;
    property tpNav: Integer read FtpNav write SettpNav;
    property tpNavHasValue: Boolean read FtpNavHasValue write FtpNavHasValue;
    property infTermCarreg: TMdfeSefazInfTermCarregList read FinfTermCarreg write SetinfTermCarreg;
    property infTermDescarreg: TMdfeSefazInfTermDescarregList read FinfTermDescarreg write SetinfTermDescarreg;
    property infEmbComb: TMdfeSefazInfEmbCombList read FinfEmbComb write SetinfEmbComb;
    property infUnidCargaVazia: TMdfeSefazInfUnidCargaVaziaList read FinfUnidCargaVazia write SetinfUnidCargaVazia;
    property infUnidTranspVazia: TMdfeSefazInfUnidTranspVaziaList read FinfUnidTranspVazia write SetinfUnidTranspVazia;
  end;
  
  TMdfeSefazTrem = class
  private
    FxPref: string;
    FxPrefHasValue: Boolean;
    FdhTrem: TDateTime;
    FdhTremHasValue: Boolean;
    FxOri: string;
    FxOriHasValue: Boolean;
    FxDest: string;
    FxDestHasValue: Boolean;
    FqVag: Integer;
    FqVagHasValue: Boolean;
    procedure SetxPref(const Value: string);
    procedure SetdhTrem(const Value: TDateTime);
    procedure SetxOri(const Value: string);
    procedure SetxDest(const Value: string);
    procedure SetqVag(const Value: Integer);
  public
    property xPref: string read FxPref write SetxPref;
    property xPrefHasValue: Boolean read FxPrefHasValue write FxPrefHasValue;
    property dhTrem: TDateTime read FdhTrem write SetdhTrem;
    property dhTremHasValue: Boolean read FdhTremHasValue write FdhTremHasValue;
    property xOri: string read FxOri write SetxOri;
    property xOriHasValue: Boolean read FxOriHasValue write FxOriHasValue;
    property xDest: string read FxDest write SetxDest;
    property xDestHasValue: Boolean read FxDestHasValue write FxDestHasValue;
    property qVag: Integer read FqVag write SetqVag;
    property qVagHasValue: Boolean read FqVagHasValue write FqVagHasValue;
  end;
  
  TMdfeSefazVag = class
  private
    FpesoBC: Double;
    FpesoBCHasValue: Boolean;
    FpesoR: Double;
    FpesoRHasValue: Boolean;
    FtpVag: string;
    FtpVagHasValue: Boolean;
    Fserie: string;
    FserieHasValue: Boolean;
    FnVag: Integer;
    FnVagHasValue: Boolean;
    FnSeq: Integer;
    FnSeqHasValue: Boolean;
    FTU: Double;
    FTUHasValue: Boolean;
    procedure SetpesoBC(const Value: Double);
    procedure SetpesoR(const Value: Double);
    procedure SettpVag(const Value: string);
    procedure Setserie(const Value: string);
    procedure SetnVag(const Value: Integer);
    procedure SetnSeq(const Value: Integer);
    procedure SetTU(const Value: Double);
  public
    property pesoBC: Double read FpesoBC write SetpesoBC;
    property pesoBCHasValue: Boolean read FpesoBCHasValue write FpesoBCHasValue;
    property pesoR: Double read FpesoR write SetpesoR;
    property pesoRHasValue: Boolean read FpesoRHasValue write FpesoRHasValue;
    property tpVag: string read FtpVag write SettpVag;
    property tpVagHasValue: Boolean read FtpVagHasValue write FtpVagHasValue;
    property serie: string read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property nVag: Integer read FnVag write SetnVag;
    property nVagHasValue: Boolean read FnVagHasValue write FnVagHasValue;
    property nSeq: Integer read FnSeq write SetnSeq;
    property nSeqHasValue: Boolean read FnSeqHasValue write FnSeqHasValue;
    property TU: Double read FTU write SetTU;
    property TUHasValue: Boolean read FTUHasValue write FTUHasValue;
  end;
  
  TMdfeSefazVagList = class(TObjectList<TMdfeSefazVag>)
  end;
  
  TMdfeSefazFerrov = class
  private
    Ftrem: TMdfeSefazTrem;
    Fvag: TMdfeSefazVagList;
    procedure Settrem(const Value: TMdfeSefazTrem);
    procedure Setvag(const Value: TMdfeSefazVagList);
  public
    destructor Destroy; override;
    property trem: TMdfeSefazTrem read Ftrem write Settrem;
    property vag: TMdfeSefazVagList read Fvag write Setvag;
  end;
  
  TMdfeSefazInfModal = class
  private
    FversaoModal: string;
    FversaoModalHasValue: Boolean;
    Faereo: TMdfeSefazAereo;
    Frodo: TMdfeSefazRodo;
    Faquav: TMdfeSefazAquav;
    Fferrov: TMdfeSefazFerrov;
    procedure SetversaoModal(const Value: string);
    procedure Setaereo(const Value: TMdfeSefazAereo);
    procedure Setrodo(const Value: TMdfeSefazRodo);
    procedure Setaquav(const Value: TMdfeSefazAquav);
    procedure Setferrov(const Value: TMdfeSefazFerrov);
  public
    destructor Destroy; override;
    property versaoModal: string read FversaoModal write SetversaoModal;
    property versaoModalHasValue: Boolean read FversaoModalHasValue write FversaoModalHasValue;
    property aereo: TMdfeSefazAereo read Faereo write Setaereo;
    property rodo: TMdfeSefazRodo read Frodo write Setrodo;
    property aquav: TMdfeSefazAquav read Faquav write Setaquav;
    property ferrov: TMdfeSefazFerrov read Fferrov write Setferrov;
  end;
  
  TMdfeSefazLacUnidTransp = class
  private
    FnLacre: string;
    FnLacreHasValue: Boolean;
    procedure SetnLacre(const Value: string);
  public
    property nLacre: string read FnLacre write SetnLacre;
    property nLacreHasValue: Boolean read FnLacreHasValue write FnLacreHasValue;
  end;
  
  TMdfeSefazLacUnidTranspList = class(TObjectList<TMdfeSefazLacUnidTransp>)
  end;
  
  TMdfeSefazLacUnidCarga = class
  private
    FnLacre: string;
    FnLacreHasValue: Boolean;
    procedure SetnLacre(const Value: string);
  public
    property nLacre: string read FnLacre write SetnLacre;
    property nLacreHasValue: Boolean read FnLacreHasValue write FnLacreHasValue;
  end;
  
  TMdfeSefazLacUnidCargaList = class(TObjectList<TMdfeSefazLacUnidCarga>)
  end;
  
  TMdfeSefazUnidCarga = class
  private
    FtpUnidCarga: Integer;
    FtpUnidCargaHasValue: Boolean;
    FidUnidCarga: string;
    FidUnidCargaHasValue: Boolean;
    FlacUnidCarga: TMdfeSefazLacUnidCargaList;
    FqtdRat: Double;
    FqtdRatHasValue: Boolean;
    procedure SettpUnidCarga(const Value: Integer);
    procedure SetidUnidCarga(const Value: string);
    procedure SetlacUnidCarga(const Value: TMdfeSefazLacUnidCargaList);
    procedure SetqtdRat(const Value: Double);
  public
    destructor Destroy; override;
    property tpUnidCarga: Integer read FtpUnidCarga write SettpUnidCarga;
    property tpUnidCargaHasValue: Boolean read FtpUnidCargaHasValue write FtpUnidCargaHasValue;
    property idUnidCarga: string read FidUnidCarga write SetidUnidCarga;
    property idUnidCargaHasValue: Boolean read FidUnidCargaHasValue write FidUnidCargaHasValue;
    property lacUnidCarga: TMdfeSefazLacUnidCargaList read FlacUnidCarga write SetlacUnidCarga;
    property qtdRat: Double read FqtdRat write SetqtdRat;
    property qtdRatHasValue: Boolean read FqtdRatHasValue write FqtdRatHasValue;
  end;
  
  TMdfeSefazUnidCargaList = class(TObjectList<TMdfeSefazUnidCarga>)
  end;
  
  TMdfeSefazUnidadeTransp = class
  private
    FtpUnidTransp: Integer;
    FtpUnidTranspHasValue: Boolean;
    FidUnidTransp: string;
    FidUnidTranspHasValue: Boolean;
    FlacUnidTransp: TMdfeSefazLacUnidTranspList;
    FinfUnidCarga: TMdfeSefazUnidCargaList;
    FqtdRat: Double;
    FqtdRatHasValue: Boolean;
    procedure SettpUnidTransp(const Value: Integer);
    procedure SetidUnidTransp(const Value: string);
    procedure SetlacUnidTransp(const Value: TMdfeSefazLacUnidTranspList);
    procedure SetinfUnidCarga(const Value: TMdfeSefazUnidCargaList);
    procedure SetqtdRat(const Value: Double);
  public
    destructor Destroy; override;
    property tpUnidTransp: Integer read FtpUnidTransp write SettpUnidTransp;
    property tpUnidTranspHasValue: Boolean read FtpUnidTranspHasValue write FtpUnidTranspHasValue;
    property idUnidTransp: string read FidUnidTransp write SetidUnidTransp;
    property idUnidTranspHasValue: Boolean read FidUnidTranspHasValue write FidUnidTranspHasValue;
    property lacUnidTransp: TMdfeSefazLacUnidTranspList read FlacUnidTransp write SetlacUnidTransp;
    property infUnidCarga: TMdfeSefazUnidCargaList read FinfUnidCarga write SetinfUnidCarga;
    property qtdRat: Double read FqtdRat write SetqtdRat;
    property qtdRatHasValue: Boolean read FqtdRatHasValue write FqtdRatHasValue;
  end;
  
  TMdfeSefazUnidadeTranspList = class(TObjectList<TMdfeSefazUnidadeTransp>)
  end;
  
  TMdfeSefazPeri = class
  private
    FnONU: string;
    FnONUHasValue: Boolean;
    FxNomeAE: string;
    FxNomeAEHasValue: Boolean;
    FxClaRisco: string;
    FxClaRiscoHasValue: Boolean;
    FgrEmb: string;
    FgrEmbHasValue: Boolean;
    FqTotProd: string;
    FqTotProdHasValue: Boolean;
    FqVolTipo: string;
    FqVolTipoHasValue: Boolean;
    procedure SetnONU(const Value: string);
    procedure SetxNomeAE(const Value: string);
    procedure SetxClaRisco(const Value: string);
    procedure SetgrEmb(const Value: string);
    procedure SetqTotProd(const Value: string);
    procedure SetqVolTipo(const Value: string);
  public
    property nONU: string read FnONU write SetnONU;
    property nONUHasValue: Boolean read FnONUHasValue write FnONUHasValue;
    property xNomeAE: string read FxNomeAE write SetxNomeAE;
    property xNomeAEHasValue: Boolean read FxNomeAEHasValue write FxNomeAEHasValue;
    property xClaRisco: string read FxClaRisco write SetxClaRisco;
    property xClaRiscoHasValue: Boolean read FxClaRiscoHasValue write FxClaRiscoHasValue;
    property grEmb: string read FgrEmb write SetgrEmb;
    property grEmbHasValue: Boolean read FgrEmbHasValue write FgrEmbHasValue;
    property qTotProd: string read FqTotProd write SetqTotProd;
    property qTotProdHasValue: Boolean read FqTotProdHasValue write FqTotProdHasValue;
    property qVolTipo: string read FqVolTipo write SetqVolTipo;
    property qVolTipoHasValue: Boolean read FqVolTipoHasValue write FqVolTipoHasValue;
  end;
  
  TMdfeSefazPeriList = class(TObjectList<TMdfeSefazPeri>)
  end;
  
  TMdfeSefazInfEntregaParcial = class
  private
    FqtdTotal: Double;
    FqtdTotalHasValue: Boolean;
    FqtdParcial: Double;
    FqtdParcialHasValue: Boolean;
    procedure SetqtdTotal(const Value: Double);
    procedure SetqtdParcial(const Value: Double);
  public
    property qtdTotal: Double read FqtdTotal write SetqtdTotal;
    property qtdTotalHasValue: Boolean read FqtdTotalHasValue write FqtdTotalHasValue;
    property qtdParcial: Double read FqtdParcial write SetqtdParcial;
    property qtdParcialHasValue: Boolean read FqtdParcialHasValue write FqtdParcialHasValue;
  end;
  
  TMdfeSefazInfCTe = class
  private
    FchCTe: string;
    FchCTeHasValue: Boolean;
    FSegCodBarra: string;
    FSegCodBarraHasValue: Boolean;
    FindReentrega: Integer;
    FindReentregaHasValue: Boolean;
    FinfUnidTransp: TMdfeSefazUnidadeTranspList;
    Fperi: TMdfeSefazPeriList;
    FinfEntregaParcial: TMdfeSefazInfEntregaParcial;
    procedure SetchCTe(const Value: string);
    procedure SetSegCodBarra(const Value: string);
    procedure SetindReentrega(const Value: Integer);
    procedure SetinfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
    procedure Setperi(const Value: TMdfeSefazPeriList);
    procedure SetinfEntregaParcial(const Value: TMdfeSefazInfEntregaParcial);
  public
    destructor Destroy; override;
    property chCTe: string read FchCTe write SetchCTe;
    property chCTeHasValue: Boolean read FchCTeHasValue write FchCTeHasValue;
    property SegCodBarra: string read FSegCodBarra write SetSegCodBarra;
    property SegCodBarraHasValue: Boolean read FSegCodBarraHasValue write FSegCodBarraHasValue;
    property indReentrega: Integer read FindReentrega write SetindReentrega;
    property indReentregaHasValue: Boolean read FindReentregaHasValue write FindReentregaHasValue;
    property infUnidTransp: TMdfeSefazUnidadeTranspList read FinfUnidTransp write SetinfUnidTransp;
    property peri: TMdfeSefazPeriList read Fperi write Setperi;
    property infEntregaParcial: TMdfeSefazInfEntregaParcial read FinfEntregaParcial write SetinfEntregaParcial;
  end;
  
  TMdfeSefazInfCTeList = class(TObjectList<TMdfeSefazInfCTe>)
  end;
  
  TMdfeSefazInfNFePeri = class
  private
    FnONU: string;
    FnONUHasValue: Boolean;
    FxNomeAE: string;
    FxNomeAEHasValue: Boolean;
    FxClaRisco: string;
    FxClaRiscoHasValue: Boolean;
    FgrEmb: string;
    FgrEmbHasValue: Boolean;
    FqTotProd: string;
    FqTotProdHasValue: Boolean;
    FqVolTipo: string;
    FqVolTipoHasValue: Boolean;
    procedure SetnONU(const Value: string);
    procedure SetxNomeAE(const Value: string);
    procedure SetxClaRisco(const Value: string);
    procedure SetgrEmb(const Value: string);
    procedure SetqTotProd(const Value: string);
    procedure SetqVolTipo(const Value: string);
  public
    property nONU: string read FnONU write SetnONU;
    property nONUHasValue: Boolean read FnONUHasValue write FnONUHasValue;
    property xNomeAE: string read FxNomeAE write SetxNomeAE;
    property xNomeAEHasValue: Boolean read FxNomeAEHasValue write FxNomeAEHasValue;
    property xClaRisco: string read FxClaRisco write SetxClaRisco;
    property xClaRiscoHasValue: Boolean read FxClaRiscoHasValue write FxClaRiscoHasValue;
    property grEmb: string read FgrEmb write SetgrEmb;
    property grEmbHasValue: Boolean read FgrEmbHasValue write FgrEmbHasValue;
    property qTotProd: string read FqTotProd write SetqTotProd;
    property qTotProdHasValue: Boolean read FqTotProdHasValue write FqTotProdHasValue;
    property qVolTipo: string read FqVolTipo write SetqVolTipo;
    property qVolTipoHasValue: Boolean read FqVolTipoHasValue write FqVolTipoHasValue;
  end;
  
  TMdfeSefazInfNFePeriList = class(TObjectList<TMdfeSefazInfNFePeri>)
  end;
  
  TMdfeSefazInfNFe = class
  private
    FchNFe: string;
    FchNFeHasValue: Boolean;
    FSegCodBarra: string;
    FSegCodBarraHasValue: Boolean;
    FindReentrega: Integer;
    FindReentregaHasValue: Boolean;
    FinfUnidTransp: TMdfeSefazUnidadeTranspList;
    Fperi: TMdfeSefazInfNFePeriList;
    procedure SetchNFe(const Value: string);
    procedure SetSegCodBarra(const Value: string);
    procedure SetindReentrega(const Value: Integer);
    procedure SetinfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
    procedure Setperi(const Value: TMdfeSefazInfNFePeriList);
  public
    destructor Destroy; override;
    property chNFe: string read FchNFe write SetchNFe;
    property chNFeHasValue: Boolean read FchNFeHasValue write FchNFeHasValue;
    property SegCodBarra: string read FSegCodBarra write SetSegCodBarra;
    property SegCodBarraHasValue: Boolean read FSegCodBarraHasValue write FSegCodBarraHasValue;
    property indReentrega: Integer read FindReentrega write SetindReentrega;
    property indReentregaHasValue: Boolean read FindReentregaHasValue write FindReentregaHasValue;
    property infUnidTransp: TMdfeSefazUnidadeTranspList read FinfUnidTransp write SetinfUnidTransp;
    property peri: TMdfeSefazInfNFePeriList read Fperi write Setperi;
  end;
  
  TMdfeSefazInfNFeList = class(TObjectList<TMdfeSefazInfNFe>)
  end;
  
  TMdfeSefazInfMDFeTranspPeri = class
  private
    FnONU: string;
    FnONUHasValue: Boolean;
    FxNomeAE: string;
    FxNomeAEHasValue: Boolean;
    FxClaRisco: string;
    FxClaRiscoHasValue: Boolean;
    FgrEmb: string;
    FgrEmbHasValue: Boolean;
    FqTotProd: string;
    FqTotProdHasValue: Boolean;
    FqVolTipo: string;
    FqVolTipoHasValue: Boolean;
    procedure SetnONU(const Value: string);
    procedure SetxNomeAE(const Value: string);
    procedure SetxClaRisco(const Value: string);
    procedure SetgrEmb(const Value: string);
    procedure SetqTotProd(const Value: string);
    procedure SetqVolTipo(const Value: string);
  public
    property nONU: string read FnONU write SetnONU;
    property nONUHasValue: Boolean read FnONUHasValue write FnONUHasValue;
    property xNomeAE: string read FxNomeAE write SetxNomeAE;
    property xNomeAEHasValue: Boolean read FxNomeAEHasValue write FxNomeAEHasValue;
    property xClaRisco: string read FxClaRisco write SetxClaRisco;
    property xClaRiscoHasValue: Boolean read FxClaRiscoHasValue write FxClaRiscoHasValue;
    property grEmb: string read FgrEmb write SetgrEmb;
    property grEmbHasValue: Boolean read FgrEmbHasValue write FgrEmbHasValue;
    property qTotProd: string read FqTotProd write SetqTotProd;
    property qTotProdHasValue: Boolean read FqTotProdHasValue write FqTotProdHasValue;
    property qVolTipo: string read FqVolTipo write SetqVolTipo;
    property qVolTipoHasValue: Boolean read FqVolTipoHasValue write FqVolTipoHasValue;
  end;
  
  TMdfeSefazInfMDFeTranspPeriList = class(TObjectList<TMdfeSefazInfMDFeTranspPeri>)
  end;
  
  TMdfeSefazInfMDFeTransp = class
  private
    FchMDFe: string;
    FchMDFeHasValue: Boolean;
    FindReentrega: Integer;
    FindReentregaHasValue: Boolean;
    FinfUnidTransp: TMdfeSefazUnidadeTranspList;
    Fperi: TMdfeSefazInfMDFeTranspPeriList;
    procedure SetchMDFe(const Value: string);
    procedure SetindReentrega(const Value: Integer);
    procedure SetinfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
    procedure Setperi(const Value: TMdfeSefazInfMDFeTranspPeriList);
  public
    destructor Destroy; override;
    property chMDFe: string read FchMDFe write SetchMDFe;
    property chMDFeHasValue: Boolean read FchMDFeHasValue write FchMDFeHasValue;
    property indReentrega: Integer read FindReentrega write SetindReentrega;
    property indReentregaHasValue: Boolean read FindReentregaHasValue write FindReentregaHasValue;
    property infUnidTransp: TMdfeSefazUnidadeTranspList read FinfUnidTransp write SetinfUnidTransp;
    property peri: TMdfeSefazInfMDFeTranspPeriList read Fperi write Setperi;
  end;
  
  TMdfeSefazInfMDFeTranspList = class(TObjectList<TMdfeSefazInfMDFeTransp>)
  end;
  
  TMdfeSefazInfMunDescarga = class
  private
    FcMunDescarga: Integer;
    FcMunDescargaHasValue: Boolean;
    FxMunDescarga: string;
    FxMunDescargaHasValue: Boolean;
    FinfCTe: TMdfeSefazInfCTeList;
    FinfNFe: TMdfeSefazInfNFeList;
    FinfMDFeTransp: TMdfeSefazInfMDFeTranspList;
    procedure SetcMunDescarga(const Value: Integer);
    procedure SetxMunDescarga(const Value: string);
    procedure SetinfCTe(const Value: TMdfeSefazInfCTeList);
    procedure SetinfNFe(const Value: TMdfeSefazInfNFeList);
    procedure SetinfMDFeTransp(const Value: TMdfeSefazInfMDFeTranspList);
  public
    destructor Destroy; override;
    property cMunDescarga: Integer read FcMunDescarga write SetcMunDescarga;
    property cMunDescargaHasValue: Boolean read FcMunDescargaHasValue write FcMunDescargaHasValue;
    property xMunDescarga: string read FxMunDescarga write SetxMunDescarga;
    property xMunDescargaHasValue: Boolean read FxMunDescargaHasValue write FxMunDescargaHasValue;
    property infCTe: TMdfeSefazInfCTeList read FinfCTe write SetinfCTe;
    property infNFe: TMdfeSefazInfNFeList read FinfNFe write SetinfNFe;
    property infMDFeTransp: TMdfeSefazInfMDFeTranspList read FinfMDFeTransp write SetinfMDFeTransp;
  end;
  
  TMdfeSefazInfMunDescargaList = class(TObjectList<TMdfeSefazInfMunDescarga>)
  end;
  
  TMdfeSefazInfDoc = class
  private
    FinfMunDescarga: TMdfeSefazInfMunDescargaList;
    procedure SetinfMunDescarga(const Value: TMdfeSefazInfMunDescargaList);
  public
    destructor Destroy; override;
    property infMunDescarga: TMdfeSefazInfMunDescargaList read FinfMunDescarga write SetinfMunDescarga;
  end;
  
  TMdfeSefazInfResp = class
  private
    FrespSeg: Integer;
    FrespSegHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    procedure SetrespSeg(const Value: Integer);
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
  public
    property respSeg: Integer read FrespSeg write SetrespSeg;
    property respSegHasValue: Boolean read FrespSegHasValue write FrespSegHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
  end;
  
  TMdfeSefazInfSeg = class
  private
    FxSeg: string;
    FxSegHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    procedure SetxSeg(const Value: string);
    procedure SetCNPJ(const Value: string);
  public
    property xSeg: string read FxSeg write SetxSeg;
    property xSegHasValue: Boolean read FxSegHasValue write FxSegHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
  end;
  
  TMdfeSefazSeg = class
  private
    FinfResp: TMdfeSefazInfResp;
    FinfSeg: TMdfeSefazInfSeg;
    FnApol: string;
    FnApolHasValue: Boolean;
    FnAver: stringList;
    procedure SetinfResp(const Value: TMdfeSefazInfResp);
    procedure SetinfSeg(const Value: TMdfeSefazInfSeg);
    procedure SetnApol(const Value: string);
    procedure SetnAver(const Value: stringList);
  public
    destructor Destroy; override;
    property infResp: TMdfeSefazInfResp read FinfResp write SetinfResp;
    property infSeg: TMdfeSefazInfSeg read FinfSeg write SetinfSeg;
    property nApol: string read FnApol write SetnApol;
    property nApolHasValue: Boolean read FnApolHasValue write FnApolHasValue;
    property nAver: stringList read FnAver write SetnAver;
  end;
  
  TMdfeSefazSegList = class(TObjectList<TMdfeSefazSeg>)
  end;
  
  TMdfeSefazInfLocalCarrega = class
  private
    FCEP: Integer;
    FCEPHasValue: Boolean;
    Flatitude: Double;
    FlatitudeHasValue: Boolean;
    Flongitude: Double;
    FlongitudeHasValue: Boolean;
    procedure SetCEP(const Value: Integer);
    procedure Setlatitude(const Value: Double);
    procedure Setlongitude(const Value: Double);
  public
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property latitude: Double read Flatitude write Setlatitude;
    property latitudeHasValue: Boolean read FlatitudeHasValue write FlatitudeHasValue;
    property longitude: Double read Flongitude write Setlongitude;
    property longitudeHasValue: Boolean read FlongitudeHasValue write FlongitudeHasValue;
  end;
  
  TMdfeSefazInfLocalDescarrega = class
  private
    FCEP: Integer;
    FCEPHasValue: Boolean;
    Flatitude: Double;
    FlatitudeHasValue: Boolean;
    Flongitude: Double;
    FlongitudeHasValue: Boolean;
    procedure SetCEP(const Value: Integer);
    procedure Setlatitude(const Value: Double);
    procedure Setlongitude(const Value: Double);
  public
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property latitude: Double read Flatitude write Setlatitude;
    property latitudeHasValue: Boolean read FlatitudeHasValue write FlatitudeHasValue;
    property longitude: Double read Flongitude write Setlongitude;
    property longitudeHasValue: Boolean read FlongitudeHasValue write FlongitudeHasValue;
  end;
  
  TMdfeSefazInfLotacao = class
  private
    FinfLocalCarrega: TMdfeSefazInfLocalCarrega;
    FinfLocalDescarrega: TMdfeSefazInfLocalDescarrega;
    procedure SetinfLocalCarrega(const Value: TMdfeSefazInfLocalCarrega);
    procedure SetinfLocalDescarrega(const Value: TMdfeSefazInfLocalDescarrega);
  public
    destructor Destroy; override;
    property infLocalCarrega: TMdfeSefazInfLocalCarrega read FinfLocalCarrega write SetinfLocalCarrega;
    property infLocalDescarrega: TMdfeSefazInfLocalDescarrega read FinfLocalDescarrega write SetinfLocalDescarrega;
  end;
  
  TMdfeSefazProdPred = class
  private
    FtpCarga: string;
    FtpCargaHasValue: Boolean;
    FxProd: string;
    FxProdHasValue: Boolean;
    FcEAN: string;
    FcEANHasValue: Boolean;
    FNCM: string;
    FNCMHasValue: Boolean;
    FinfLotacao: TMdfeSefazInfLotacao;
    procedure SettpCarga(const Value: string);
    procedure SetxProd(const Value: string);
    procedure SetcEAN(const Value: string);
    procedure SetNCM(const Value: string);
    procedure SetinfLotacao(const Value: TMdfeSefazInfLotacao);
  public
    destructor Destroy; override;
    property tpCarga: string read FtpCarga write SettpCarga;
    property tpCargaHasValue: Boolean read FtpCargaHasValue write FtpCargaHasValue;
    property xProd: string read FxProd write SetxProd;
    property xProdHasValue: Boolean read FxProdHasValue write FxProdHasValue;
    property cEAN: string read FcEAN write SetcEAN;
    property cEANHasValue: Boolean read FcEANHasValue write FcEANHasValue;
    property NCM: string read FNCM write SetNCM;
    property NCMHasValue: Boolean read FNCMHasValue write FNCMHasValue;
    property infLotacao: TMdfeSefazInfLotacao read FinfLotacao write SetinfLotacao;
  end;
  
  TMdfeSefazTot = class
  private
    FqCTe: Integer;
    FqCTeHasValue: Boolean;
    FqNFe: Integer;
    FqNFeHasValue: Boolean;
    FqMDFe: Integer;
    FqMDFeHasValue: Boolean;
    FvCarga: Double;
    FvCargaHasValue: Boolean;
    FcUnid: string;
    FcUnidHasValue: Boolean;
    FqCarga: Double;
    FqCargaHasValue: Boolean;
    procedure SetqCTe(const Value: Integer);
    procedure SetqNFe(const Value: Integer);
    procedure SetqMDFe(const Value: Integer);
    procedure SetvCarga(const Value: Double);
    procedure SetcUnid(const Value: string);
    procedure SetqCarga(const Value: Double);
  public
    property qCTe: Integer read FqCTe write SetqCTe;
    property qCTeHasValue: Boolean read FqCTeHasValue write FqCTeHasValue;
    property qNFe: Integer read FqNFe write SetqNFe;
    property qNFeHasValue: Boolean read FqNFeHasValue write FqNFeHasValue;
    property qMDFe: Integer read FqMDFe write SetqMDFe;
    property qMDFeHasValue: Boolean read FqMDFeHasValue write FqMDFeHasValue;
    property vCarga: Double read FvCarga write SetvCarga;
    property vCargaHasValue: Boolean read FvCargaHasValue write FvCargaHasValue;
    property cUnid: string read FcUnid write SetcUnid;
    property cUnidHasValue: Boolean read FcUnidHasValue write FcUnidHasValue;
    property qCarga: Double read FqCarga write SetqCarga;
    property qCargaHasValue: Boolean read FqCargaHasValue write FqCargaHasValue;
  end;
  
  TMdfeSefazLacres = class
  private
    FnLacre: string;
    FnLacreHasValue: Boolean;
    procedure SetnLacre(const Value: string);
  public
    property nLacre: string read FnLacre write SetnLacre;
    property nLacreHasValue: Boolean read FnLacreHasValue write FnLacreHasValue;
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
    FinfAdFisco: string;
    FinfAdFiscoHasValue: Boolean;
    FinfCpl: string;
    FinfCplHasValue: Boolean;
    procedure SetinfAdFisco(const Value: string);
    procedure SetinfCpl(const Value: string);
  public
    property infAdFisco: string read FinfAdFisco write SetinfAdFisco;
    property infAdFiscoHasValue: Boolean read FinfAdFiscoHasValue write FinfAdFiscoHasValue;
    property infCpl: string read FinfCpl write SetinfCpl;
    property infCplHasValue: Boolean read FinfCplHasValue write FinfCplHasValue;
  end;
  
  TMdfeSefazRespTec = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FxContato: string;
    FxContatoHasValue: Boolean;
    Femail: string;
    FemailHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    FidCSRT: Integer;
    FidCSRTHasValue: Boolean;
    FhashCSRT: string;
    FhashCSRTHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetxContato(const Value: string);
    procedure Setemail(const Value: string);
    procedure Setfone(const Value: string);
    procedure SetidCSRT(const Value: Integer);
    procedure SethashCSRT(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property xContato: string read FxContato write SetxContato;
    property xContatoHasValue: Boolean read FxContatoHasValue write FxContatoHasValue;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    property idCSRT: Integer read FidCSRT write SetidCSRT;
    property idCSRTHasValue: Boolean read FidCSRTHasValue write FidCSRTHasValue;
    property hashCSRT: string read FhashCSRT write SethashCSRT;
    property hashCSRTHasValue: Boolean read FhashCSRTHasValue write FhashCSRTHasValue;
  end;
  
  TMdfeSefazInfSolicNFF = class
  private
    FxSolic: string;
    FxSolicHasValue: Boolean;
    procedure SetxSolic(const Value: string);
  public
    property xSolic: string read FxSolic write SetxSolic;
    property xSolicHasValue: Boolean read FxSolicHasValue write FxSolicHasValue;
  end;
  
  TMdfeSefazInfMDFe = class
  private
    Fversao: string;
    FversaoHasValue: Boolean;
    FId: string;
    FIdHasValue: Boolean;
    Fide: TMdfeSefazIde;
    Femit: TMdfeSefazEmit;
    FinfModal: TMdfeSefazInfModal;
    FinfDoc: TMdfeSefazInfDoc;
    Fseg: TMdfeSefazSegList;
    FprodPred: TMdfeSefazProdPred;
    Ftot: TMdfeSefazTot;
    Flacres: TMdfeSefazLacresList;
    FautXML: TMdfeSefazAutXMLList;
    FinfAdic: TMdfeSefazInfAdic;
    FinfRespTec: TMdfeSefazRespTec;
    FinfSolicNFF: TMdfeSefazInfSolicNFF;
    procedure Setversao(const Value: string);
    procedure SetId(const Value: string);
    procedure Setide(const Value: TMdfeSefazIde);
    procedure Setemit(const Value: TMdfeSefazEmit);
    procedure SetinfModal(const Value: TMdfeSefazInfModal);
    procedure SetinfDoc(const Value: TMdfeSefazInfDoc);
    procedure Setseg(const Value: TMdfeSefazSegList);
    procedure SetprodPred(const Value: TMdfeSefazProdPred);
    procedure Settot(const Value: TMdfeSefazTot);
    procedure Setlacres(const Value: TMdfeSefazLacresList);
    procedure SetautXML(const Value: TMdfeSefazAutXMLList);
    procedure SetinfAdic(const Value: TMdfeSefazInfAdic);
    procedure SetinfRespTec(const Value: TMdfeSefazRespTec);
    procedure SetinfSolicNFF(const Value: TMdfeSefazInfSolicNFF);
  public
    destructor Destroy; override;
    property versao: string read Fversao write Setversao;
    property versaoHasValue: Boolean read FversaoHasValue write FversaoHasValue;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property ide: TMdfeSefazIde read Fide write Setide;
    property emit: TMdfeSefazEmit read Femit write Setemit;
    property infModal: TMdfeSefazInfModal read FinfModal write SetinfModal;
    property infDoc: TMdfeSefazInfDoc read FinfDoc write SetinfDoc;
    property seg: TMdfeSefazSegList read Fseg write Setseg;
    property prodPred: TMdfeSefazProdPred read FprodPred write SetprodPred;
    property tot: TMdfeSefazTot read Ftot write Settot;
    property lacres: TMdfeSefazLacresList read Flacres write Setlacres;
    property autXML: TMdfeSefazAutXMLList read FautXML write SetautXML;
    property infAdic: TMdfeSefazInfAdic read FinfAdic write SetinfAdic;
    property infRespTec: TMdfeSefazRespTec read FinfRespTec write SetinfRespTec;
    property infSolicNFF: TMdfeSefazInfSolicNFF read FinfSolicNFF write SetinfSolicNFF;
  end;
  
  TMdfeSefazInfMDFeSupl = class
  private
    FqrCodMDFe: string;
    FqrCodMDFeHasValue: Boolean;
    procedure SetqrCodMDFe(const Value: string);
  public
    property qrCodMDFe: string read FqrCodMDFe write SetqrCodMDFe;
    property qrCodMDFeHasValue: Boolean read FqrCodMDFeHasValue write FqrCodMDFeHasValue;
  end;
  
  TMdfePedidoEmissao = class
  private
    FinfMDFe: TMdfeSefazInfMDFe;
    FinfMDFeSupl: TMdfeSefazInfMDFeSupl;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    procedure SetinfMDFe(const Value: TMdfeSefazInfMDFe);
    procedure SetinfMDFeSupl(const Value: TMdfeSefazInfMDFeSupl);
    procedure Setambiente(const Value: string);
    procedure Setreferencia(const Value: string);
  public
    destructor Destroy; override;
    property infMDFe: TMdfeSefazInfMDFe read FinfMDFe write SetinfMDFe;
    property infMDFeSupl: TMdfeSefazInfMDFeSupl read FinfMDFeSupl write SetinfMDFeSupl;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
  end;
  
  TMdfePedidoEmissaoList = class(TObjectList<TMdfePedidoEmissao>)
  end;
  
  TMdfePedidoEmissaoLote = class
  private
    Fdocumentos: TMdfePedidoEmissaoList;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    Fid_lote: string;
    Fid_loteHasValue: Boolean;
    procedure Setdocumentos(const Value: TMdfePedidoEmissaoList);
    procedure Setambiente(const Value: string);
    procedure Setreferencia(const Value: string);
    procedure Setid_lote(const Value: string);
  public
    destructor Destroy; override;
    property documentos: TMdfePedidoEmissaoList read Fdocumentos write Setdocumentos;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
    property id_lote: string read Fid_lote write Setid_lote;
    property id_loteHasValue: Boolean read Fid_loteHasValue write Fid_loteHasValue;
  end;
  
  TMdfePedidoCancelamento = class
  private
    Fjustificativa: string;
    FjustificativaHasValue: Boolean;
    procedure Setjustificativa(const Value: string);
  public
    property justificativa: string read Fjustificativa write Setjustificativa;
    property justificativaHasValue: Boolean read FjustificativaHasValue write FjustificativaHasValue;
  end;
  
  TMdfePedidoEncerramento = class
  private
    Fdata_encerramento: TDate;
    Fdata_encerramentoHasValue: Boolean;
    Fuf: string;
    FufHasValue: Boolean;
    Fcodigo_municipio: Integer;
    Fcodigo_municipioHasValue: Boolean;
    procedure Setdata_encerramento(const Value: TDate);
    procedure Setuf(const Value: string);
    procedure Setcodigo_municipio(const Value: Integer);
  public
    property data_encerramento: TDate read Fdata_encerramento write Setdata_encerramento;
    property data_encerramentoHasValue: Boolean read Fdata_encerramentoHasValue write Fdata_encerramentoHasValue;
    property uf: string read Fuf write Setuf;
    property ufHasValue: Boolean read FufHasValue write FufHasValue;
    property codigo_municipio: Integer read Fcodigo_municipio write Setcodigo_municipio;
    property codigo_municipioHasValue: Boolean read Fcodigo_municipioHasValue write Fcodigo_municipioHasValue;
  end;
  
  TMdfeEncerramento = class
  private
    Fdata_encerramento: TDate;
    Fdata_encerramentoHasValue: Boolean;
    Fuf: string;
    FufHasValue: Boolean;
    Fcodigo_municipio: Integer;
    Fcodigo_municipioHasValue: Boolean;
    Fid: string;
    FidHasValue: Boolean;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Fstatus: string;
    FstatusHasValue: Boolean;
    Fautor: TDfeAutorEvento;
    Fchave_acesso: string;
    Fchave_acessoHasValue: Boolean;
    Fdata_evento: TDateTime;
    Fdata_eventoHasValue: Boolean;
    Fnumero_sequencial: Integer;
    Fnumero_sequencialHasValue: Boolean;
    Fdata_recebimento: TDateTime;
    Fdata_recebimentoHasValue: Boolean;
    Fcodigo_status: Integer;
    Fcodigo_statusHasValue: Boolean;
    Fmotivo_status: string;
    Fmotivo_statusHasValue: Boolean;
    Fnumero_protocolo: string;
    Fnumero_protocoloHasValue: Boolean;
    Fcodigo_mensagem: Integer;
    Fcodigo_mensagemHasValue: Boolean;
    Fmensagem: string;
    FmensagemHasValue: Boolean;
    Ftipo_evento: string;
    Ftipo_eventoHasValue: Boolean;
    procedure Setdata_encerramento(const Value: TDate);
    procedure Setuf(const Value: string);
    procedure Setcodigo_municipio(const Value: Integer);
    procedure Setid(const Value: string);
    procedure Setambiente(const Value: string);
    procedure Setstatus(const Value: string);
    procedure Setautor(const Value: TDfeAutorEvento);
    procedure Setchave_acesso(const Value: string);
    procedure Setdata_evento(const Value: TDateTime);
    procedure Setnumero_sequencial(const Value: Integer);
    procedure Setdata_recebimento(const Value: TDateTime);
    procedure Setcodigo_status(const Value: Integer);
    procedure Setmotivo_status(const Value: string);
    procedure Setnumero_protocolo(const Value: string);
    procedure Setcodigo_mensagem(const Value: Integer);
    procedure Setmensagem(const Value: string);
    procedure Settipo_evento(const Value: string);
  public
    destructor Destroy; override;
    property data_encerramento: TDate read Fdata_encerramento write Setdata_encerramento;
    property data_encerramentoHasValue: Boolean read Fdata_encerramentoHasValue write Fdata_encerramentoHasValue;
    property uf: string read Fuf write Setuf;
    property ufHasValue: Boolean read FufHasValue write FufHasValue;
    property codigo_municipio: Integer read Fcodigo_municipio write Setcodigo_municipio;
    property codigo_municipioHasValue: Boolean read Fcodigo_municipioHasValue write Fcodigo_municipioHasValue;
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property autor: TDfeAutorEvento read Fautor write Setautor;
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TMdfePedidoInclusaoCondutor = class
  private
    Fnome_condutor: string;
    Fnome_condutorHasValue: Boolean;
    Fcpf_condutor: string;
    Fcpf_condutorHasValue: Boolean;
    procedure Setnome_condutor(const Value: string);
    procedure Setcpf_condutor(const Value: string);
  public
    property nome_condutor: string read Fnome_condutor write Setnome_condutor;
    property nome_condutorHasValue: Boolean read Fnome_condutorHasValue write Fnome_condutorHasValue;
    property cpf_condutor: string read Fcpf_condutor write Setcpf_condutor;
    property cpf_condutorHasValue: Boolean read Fcpf_condutorHasValue write Fcpf_condutorHasValue;
  end;
  
  TMdfeInclusaoCondutor = class
  private
    Fnome_condutor: string;
    Fnome_condutorHasValue: Boolean;
    Fcpf_condutor: string;
    Fcpf_condutorHasValue: Boolean;
    Fid: string;
    FidHasValue: Boolean;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Fstatus: string;
    FstatusHasValue: Boolean;
    Fautor: TDfeAutorEvento;
    Fchave_acesso: string;
    Fchave_acessoHasValue: Boolean;
    Fdata_evento: TDateTime;
    Fdata_eventoHasValue: Boolean;
    Fnumero_sequencial: Integer;
    Fnumero_sequencialHasValue: Boolean;
    Fdata_recebimento: TDateTime;
    Fdata_recebimentoHasValue: Boolean;
    Fcodigo_status: Integer;
    Fcodigo_statusHasValue: Boolean;
    Fmotivo_status: string;
    Fmotivo_statusHasValue: Boolean;
    Fnumero_protocolo: string;
    Fnumero_protocoloHasValue: Boolean;
    Fcodigo_mensagem: Integer;
    Fcodigo_mensagemHasValue: Boolean;
    Fmensagem: string;
    FmensagemHasValue: Boolean;
    Ftipo_evento: string;
    Ftipo_eventoHasValue: Boolean;
    procedure Setnome_condutor(const Value: string);
    procedure Setcpf_condutor(const Value: string);
    procedure Setid(const Value: string);
    procedure Setambiente(const Value: string);
    procedure Setstatus(const Value: string);
    procedure Setautor(const Value: TDfeAutorEvento);
    procedure Setchave_acesso(const Value: string);
    procedure Setdata_evento(const Value: TDateTime);
    procedure Setnumero_sequencial(const Value: Integer);
    procedure Setdata_recebimento(const Value: TDateTime);
    procedure Setcodigo_status(const Value: Integer);
    procedure Setmotivo_status(const Value: string);
    procedure Setnumero_protocolo(const Value: string);
    procedure Setcodigo_mensagem(const Value: Integer);
    procedure Setmensagem(const Value: string);
    procedure Settipo_evento(const Value: string);
  public
    destructor Destroy; override;
    property nome_condutor: string read Fnome_condutor write Setnome_condutor;
    property nome_condutorHasValue: Boolean read Fnome_condutorHasValue write Fnome_condutorHasValue;
    property cpf_condutor: string read Fcpf_condutor write Setcpf_condutor;
    property cpf_condutorHasValue: Boolean read Fcpf_condutorHasValue write Fcpf_condutorHasValue;
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property autor: TDfeAutorEvento read Fautor write Setautor;
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TMdfeDocumentoVinculado = class
  private
    Fcodigo_municipio_descarga: Integer;
    Fcodigo_municipio_descargaHasValue: Boolean;
    Fmunicipio_descarga: string;
    Fmunicipio_descargaHasValue: Boolean;
    Fchave_acesso_nfe: string;
    Fchave_acesso_nfeHasValue: Boolean;
    procedure Setcodigo_municipio_descarga(const Value: Integer);
    procedure Setmunicipio_descarga(const Value: string);
    procedure Setchave_acesso_nfe(const Value: string);
  public
    property codigo_municipio_descarga: Integer read Fcodigo_municipio_descarga write Setcodigo_municipio_descarga;
    property codigo_municipio_descargaHasValue: Boolean read Fcodigo_municipio_descargaHasValue write Fcodigo_municipio_descargaHasValue;
    property municipio_descarga: string read Fmunicipio_descarga write Setmunicipio_descarga;
    property municipio_descargaHasValue: Boolean read Fmunicipio_descargaHasValue write Fmunicipio_descargaHasValue;
    property chave_acesso_nfe: string read Fchave_acesso_nfe write Setchave_acesso_nfe;
    property chave_acesso_nfeHasValue: Boolean read Fchave_acesso_nfeHasValue write Fchave_acesso_nfeHasValue;
  end;
  
  TMdfeDocumentoVinculadoList = class(TObjectList<TMdfeDocumentoVinculado>)
  end;
  
  TMdfePedidoInclusaoDfe = class
  private
    Fcodigo_municipio_carrega: Integer;
    Fcodigo_municipio_carregaHasValue: Boolean;
    Fmunicipio_carrega: string;
    Fmunicipio_carregaHasValue: Boolean;
    Fdocumentos: TMdfeDocumentoVinculadoList;
    Fprotocolo_autorizacao: string;
    Fprotocolo_autorizacaoHasValue: Boolean;
    procedure Setcodigo_municipio_carrega(const Value: Integer);
    procedure Setmunicipio_carrega(const Value: string);
    procedure Setdocumentos(const Value: TMdfeDocumentoVinculadoList);
    procedure Setprotocolo_autorizacao(const Value: string);
  public
    destructor Destroy; override;
    property codigo_municipio_carrega: Integer read Fcodigo_municipio_carrega write Setcodigo_municipio_carrega;
    property codigo_municipio_carregaHasValue: Boolean read Fcodigo_municipio_carregaHasValue write Fcodigo_municipio_carregaHasValue;
    property municipio_carrega: string read Fmunicipio_carrega write Setmunicipio_carrega;
    property municipio_carregaHasValue: Boolean read Fmunicipio_carregaHasValue write Fmunicipio_carregaHasValue;
    property documentos: TMdfeDocumentoVinculadoList read Fdocumentos write Setdocumentos;
    property protocolo_autorizacao: string read Fprotocolo_autorizacao write Setprotocolo_autorizacao;
    property protocolo_autorizacaoHasValue: Boolean read Fprotocolo_autorizacaoHasValue write Fprotocolo_autorizacaoHasValue;
  end;
  
  TMdfeInclusaoDfe = class
  private
    Fcodigo_municipio_carrega: Integer;
    Fcodigo_municipio_carregaHasValue: Boolean;
    Fmunicipio_carrega: string;
    Fmunicipio_carregaHasValue: Boolean;
    Fdocumentos: TMdfeDocumentoVinculadoList;
    Fid: string;
    FidHasValue: Boolean;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Fstatus: string;
    FstatusHasValue: Boolean;
    Fautor: TDfeAutorEvento;
    Fchave_acesso: string;
    Fchave_acessoHasValue: Boolean;
    Fdata_evento: TDateTime;
    Fdata_eventoHasValue: Boolean;
    Fnumero_sequencial: Integer;
    Fnumero_sequencialHasValue: Boolean;
    Fdata_recebimento: TDateTime;
    Fdata_recebimentoHasValue: Boolean;
    Fcodigo_status: Integer;
    Fcodigo_statusHasValue: Boolean;
    Fmotivo_status: string;
    Fmotivo_statusHasValue: Boolean;
    Fnumero_protocolo: string;
    Fnumero_protocoloHasValue: Boolean;
    Fcodigo_mensagem: Integer;
    Fcodigo_mensagemHasValue: Boolean;
    Fmensagem: string;
    FmensagemHasValue: Boolean;
    Ftipo_evento: string;
    Ftipo_eventoHasValue: Boolean;
    procedure Setcodigo_municipio_carrega(const Value: Integer);
    procedure Setmunicipio_carrega(const Value: string);
    procedure Setdocumentos(const Value: TMdfeDocumentoVinculadoList);
    procedure Setid(const Value: string);
    procedure Setambiente(const Value: string);
    procedure Setstatus(const Value: string);
    procedure Setautor(const Value: TDfeAutorEvento);
    procedure Setchave_acesso(const Value: string);
    procedure Setdata_evento(const Value: TDateTime);
    procedure Setnumero_sequencial(const Value: Integer);
    procedure Setdata_recebimento(const Value: TDateTime);
    procedure Setcodigo_status(const Value: Integer);
    procedure Setmotivo_status(const Value: string);
    procedure Setnumero_protocolo(const Value: string);
    procedure Setcodigo_mensagem(const Value: Integer);
    procedure Setmensagem(const Value: string);
    procedure Settipo_evento(const Value: string);
  public
    destructor Destroy; override;
    property codigo_municipio_carrega: Integer read Fcodigo_municipio_carrega write Setcodigo_municipio_carrega;
    property codigo_municipio_carregaHasValue: Boolean read Fcodigo_municipio_carregaHasValue write Fcodigo_municipio_carregaHasValue;
    property municipio_carrega: string read Fmunicipio_carrega write Setmunicipio_carrega;
    property municipio_carregaHasValue: Boolean read Fmunicipio_carregaHasValue write Fmunicipio_carregaHasValue;
    property documentos: TMdfeDocumentoVinculadoList read Fdocumentos write Setdocumentos;
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property autor: TDfeAutorEvento read Fautor write Setautor;
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TNfeSefazRefNF = class
  private
    FcUF: Integer;
    FcUFHasValue: Boolean;
    FAAMM: string;
    FAAMMHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    Fmod: string;
    FmodHasValue: Boolean;
    Fserie: Integer;
    FserieHasValue: Boolean;
    FnNF: Integer;
    FnNFHasValue: Boolean;
    procedure SetcUF(const Value: Integer);
    procedure SetAAMM(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure Setmod(const Value: string);
    procedure Setserie(const Value: Integer);
    procedure SetnNF(const Value: Integer);
  public
    property cUF: Integer read FcUF write SetcUF;
    property cUFHasValue: Boolean read FcUFHasValue write FcUFHasValue;
    property AAMM: string read FAAMM write SetAAMM;
    property AAMMHasValue: Boolean read FAAMMHasValue write FAAMMHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property &mod: string read Fmod write Setmod;
    property &modHasValue: Boolean read FmodHasValue write FmodHasValue;
    property serie: Integer read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property nNF: Integer read FnNF write SetnNF;
    property nNFHasValue: Boolean read FnNFHasValue write FnNFHasValue;
  end;
  
  TNfeSefazRefNFP = class
  private
    FcUF: Integer;
    FcUFHasValue: Boolean;
    FAAMM: string;
    FAAMMHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    Fmod: string;
    FmodHasValue: Boolean;
    Fserie: Integer;
    FserieHasValue: Boolean;
    FnNF: Integer;
    FnNFHasValue: Boolean;
    procedure SetcUF(const Value: Integer);
    procedure SetAAMM(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure Setmod(const Value: string);
    procedure Setserie(const Value: Integer);
    procedure SetnNF(const Value: Integer);
  public
    property cUF: Integer read FcUF write SetcUF;
    property cUFHasValue: Boolean read FcUFHasValue write FcUFHasValue;
    property AAMM: string read FAAMM write SetAAMM;
    property AAMMHasValue: Boolean read FAAMMHasValue write FAAMMHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property &mod: string read Fmod write Setmod;
    property &modHasValue: Boolean read FmodHasValue write FmodHasValue;
    property serie: Integer read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property nNF: Integer read FnNF write SetnNF;
    property nNFHasValue: Boolean read FnNFHasValue write FnNFHasValue;
  end;
  
  TNfeSefazRefECF = class
  private
    Fmod: string;
    FmodHasValue: Boolean;
    FnECF: Integer;
    FnECFHasValue: Boolean;
    FnCOO: Integer;
    FnCOOHasValue: Boolean;
    procedure Setmod(const Value: string);
    procedure SetnECF(const Value: Integer);
    procedure SetnCOO(const Value: Integer);
  public
    property &mod: string read Fmod write Setmod;
    property &modHasValue: Boolean read FmodHasValue write FmodHasValue;
    property nECF: Integer read FnECF write SetnECF;
    property nECFHasValue: Boolean read FnECFHasValue write FnECFHasValue;
    property nCOO: Integer read FnCOO write SetnCOO;
    property nCOOHasValue: Boolean read FnCOOHasValue write FnCOOHasValue;
  end;
  
  TNfeSefazNFref = class
  private
    FrefNFe: string;
    FrefNFeHasValue: Boolean;
    FrefNF: TNfeSefazRefNF;
    FrefNFP: TNfeSefazRefNFP;
    FrefCTe: string;
    FrefCTeHasValue: Boolean;
    FrefECF: TNfeSefazRefECF;
    procedure SetrefNFe(const Value: string);
    procedure SetrefNF(const Value: TNfeSefazRefNF);
    procedure SetrefNFP(const Value: TNfeSefazRefNFP);
    procedure SetrefCTe(const Value: string);
    procedure SetrefECF(const Value: TNfeSefazRefECF);
  public
    destructor Destroy; override;
    property refNFe: string read FrefNFe write SetrefNFe;
    property refNFeHasValue: Boolean read FrefNFeHasValue write FrefNFeHasValue;
    property refNF: TNfeSefazRefNF read FrefNF write SetrefNF;
    property refNFP: TNfeSefazRefNFP read FrefNFP write SetrefNFP;
    property refCTe: string read FrefCTe write SetrefCTe;
    property refCTeHasValue: Boolean read FrefCTeHasValue write FrefCTeHasValue;
    property refECF: TNfeSefazRefECF read FrefECF write SetrefECF;
  end;
  
  TNfeSefazNFrefList = class(TObjectList<TNfeSefazNFref>)
  end;
  
  TNfeSefazIde = class
  private
    FcUF: Integer;
    FcUFHasValue: Boolean;
    FcNF: Integer;
    FcNFHasValue: Boolean;
    FnatOp: string;
    FnatOpHasValue: Boolean;
    Fmod: Integer;
    FmodHasValue: Boolean;
    Fserie: Integer;
    FserieHasValue: Boolean;
    FnNF: Integer;
    FnNFHasValue: Boolean;
    FdhEmi: TDateTime;
    FdhEmiHasValue: Boolean;
    FdhSaiEnt: TDateTime;
    FdhSaiEntHasValue: Boolean;
    FtpNF: Integer;
    FtpNFHasValue: Boolean;
    FidDest: Integer;
    FidDestHasValue: Boolean;
    FcMunFG: Integer;
    FcMunFGHasValue: Boolean;
    FtpImp: Integer;
    FtpImpHasValue: Boolean;
    FtpEmis: Integer;
    FtpEmisHasValue: Boolean;
    FcDV: Integer;
    FcDVHasValue: Boolean;
    FtpAmb: Integer;
    FtpAmbHasValue: Boolean;
    FfinNFe: Integer;
    FfinNFeHasValue: Boolean;
    FindFinal: Integer;
    FindFinalHasValue: Boolean;
    FindPres: Integer;
    FindPresHasValue: Boolean;
    FindIntermed: Integer;
    FindIntermedHasValue: Boolean;
    FprocEmi: Integer;
    FprocEmiHasValue: Boolean;
    FverProc: string;
    FverProcHasValue: Boolean;
    FdhCont: TDateTime;
    FdhContHasValue: Boolean;
    FxJust: string;
    FxJustHasValue: Boolean;
    FNFref: TNfeSefazNFrefList;
    procedure SetcUF(const Value: Integer);
    procedure SetcNF(const Value: Integer);
    procedure SetnatOp(const Value: string);
    procedure Setmod(const Value: Integer);
    procedure Setserie(const Value: Integer);
    procedure SetnNF(const Value: Integer);
    procedure SetdhEmi(const Value: TDateTime);
    procedure SetdhSaiEnt(const Value: TDateTime);
    procedure SettpNF(const Value: Integer);
    procedure SetidDest(const Value: Integer);
    procedure SetcMunFG(const Value: Integer);
    procedure SettpImp(const Value: Integer);
    procedure SettpEmis(const Value: Integer);
    procedure SetcDV(const Value: Integer);
    procedure SettpAmb(const Value: Integer);
    procedure SetfinNFe(const Value: Integer);
    procedure SetindFinal(const Value: Integer);
    procedure SetindPres(const Value: Integer);
    procedure SetindIntermed(const Value: Integer);
    procedure SetprocEmi(const Value: Integer);
    procedure SetverProc(const Value: string);
    procedure SetdhCont(const Value: TDateTime);
    procedure SetxJust(const Value: string);
    procedure SetNFref(const Value: TNfeSefazNFrefList);
  public
    destructor Destroy; override;
    property cUF: Integer read FcUF write SetcUF;
    property cUFHasValue: Boolean read FcUFHasValue write FcUFHasValue;
    property cNF: Integer read FcNF write SetcNF;
    property cNFHasValue: Boolean read FcNFHasValue write FcNFHasValue;
    property natOp: string read FnatOp write SetnatOp;
    property natOpHasValue: Boolean read FnatOpHasValue write FnatOpHasValue;
    property &mod: Integer read Fmod write Setmod;
    property &modHasValue: Boolean read FmodHasValue write FmodHasValue;
    property serie: Integer read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    property nNF: Integer read FnNF write SetnNF;
    property nNFHasValue: Boolean read FnNFHasValue write FnNFHasValue;
    property dhEmi: TDateTime read FdhEmi write SetdhEmi;
    property dhEmiHasValue: Boolean read FdhEmiHasValue write FdhEmiHasValue;
    property dhSaiEnt: TDateTime read FdhSaiEnt write SetdhSaiEnt;
    property dhSaiEntHasValue: Boolean read FdhSaiEntHasValue write FdhSaiEntHasValue;
    property tpNF: Integer read FtpNF write SettpNF;
    property tpNFHasValue: Boolean read FtpNFHasValue write FtpNFHasValue;
    property idDest: Integer read FidDest write SetidDest;
    property idDestHasValue: Boolean read FidDestHasValue write FidDestHasValue;
    property cMunFG: Integer read FcMunFG write SetcMunFG;
    property cMunFGHasValue: Boolean read FcMunFGHasValue write FcMunFGHasValue;
    property tpImp: Integer read FtpImp write SettpImp;
    property tpImpHasValue: Boolean read FtpImpHasValue write FtpImpHasValue;
    property tpEmis: Integer read FtpEmis write SettpEmis;
    property tpEmisHasValue: Boolean read FtpEmisHasValue write FtpEmisHasValue;
    property cDV: Integer read FcDV write SetcDV;
    property cDVHasValue: Boolean read FcDVHasValue write FcDVHasValue;
    property tpAmb: Integer read FtpAmb write SettpAmb;
    property tpAmbHasValue: Boolean read FtpAmbHasValue write FtpAmbHasValue;
    property finNFe: Integer read FfinNFe write SetfinNFe;
    property finNFeHasValue: Boolean read FfinNFeHasValue write FfinNFeHasValue;
    property indFinal: Integer read FindFinal write SetindFinal;
    property indFinalHasValue: Boolean read FindFinalHasValue write FindFinalHasValue;
    property indPres: Integer read FindPres write SetindPres;
    property indPresHasValue: Boolean read FindPresHasValue write FindPresHasValue;
    property indIntermed: Integer read FindIntermed write SetindIntermed;
    property indIntermedHasValue: Boolean read FindIntermedHasValue write FindIntermedHasValue;
    property procEmi: Integer read FprocEmi write SetprocEmi;
    property procEmiHasValue: Boolean read FprocEmiHasValue write FprocEmiHasValue;
    property verProc: string read FverProc write SetverProc;
    property verProcHasValue: Boolean read FverProcHasValue write FverProcHasValue;
    property dhCont: TDateTime read FdhCont write SetdhCont;
    property dhContHasValue: Boolean read FdhContHasValue write FdhContHasValue;
    property xJust: string read FxJust write SetxJust;
    property xJustHasValue: Boolean read FxJustHasValue write FxJustHasValue;
    property NFref: TNfeSefazNFrefList read FNFref write SetNFref;
  end;
  
  TNfeSefazEnderEmi = class
  private
    FxLgr: string;
    FxLgrHasValue: Boolean;
    Fnro: string;
    FnroHasValue: Boolean;
    FxCpl: string;
    FxCplHasValue: Boolean;
    FxBairro: string;
    FxBairroHasValue: Boolean;
    FcMun: Integer;
    FcMunHasValue: Boolean;
    FxMun: string;
    FxMunHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FcPais: Integer;
    FcPaisHasValue: Boolean;
    FxPais: string;
    FxPaisHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    procedure SetxLgr(const Value: string);
    procedure Setnro(const Value: string);
    procedure SetxCpl(const Value: string);
    procedure SetxBairro(const Value: string);
    procedure SetcMun(const Value: Integer);
    procedure SetxMun(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetcPais(const Value: Integer);
    procedure SetxPais(const Value: string);
    procedure Setfone(const Value: string);
  public
    property xLgr: string read FxLgr write SetxLgr;
    property xLgrHasValue: Boolean read FxLgrHasValue write FxLgrHasValue;
    property nro: string read Fnro write Setnro;
    property nroHasValue: Boolean read FnroHasValue write FnroHasValue;
    property xCpl: string read FxCpl write SetxCpl;
    property xCplHasValue: Boolean read FxCplHasValue write FxCplHasValue;
    property xBairro: string read FxBairro write SetxBairro;
    property xBairroHasValue: Boolean read FxBairroHasValue write FxBairroHasValue;
    property cMun: Integer read FcMun write SetcMun;
    property cMunHasValue: Boolean read FcMunHasValue write FcMunHasValue;
    property xMun: string read FxMun write SetxMun;
    property xMunHasValue: Boolean read FxMunHasValue write FxMunHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property cPais: Integer read FcPais write SetcPais;
    property cPaisHasValue: Boolean read FcPaisHasValue write FcPaisHasValue;
    property xPais: string read FxPais write SetxPais;
    property xPaisHasValue: Boolean read FxPaisHasValue write FxPaisHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
  end;
  
  TNfeSefazEmit = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FxNome: string;
    FxNomeHasValue: Boolean;
    FxFant: string;
    FxFantHasValue: Boolean;
    FenderEmit: TNfeSefazEnderEmi;
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
    procedure SetxNome(const Value: string);
    procedure SetxFant(const Value: string);
    procedure SetenderEmit(const Value: TNfeSefazEnderEmi);
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
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property xFant: string read FxFant write SetxFant;
    property xFantHasValue: Boolean read FxFantHasValue write FxFantHasValue;
    property enderEmit: TNfeSefazEnderEmi read FenderEmit write SetenderEmit;
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
    FxOrgao: string;
    FxOrgaoHasValue: Boolean;
    Fmatr: string;
    FmatrHasValue: Boolean;
    FxAgente: string;
    FxAgenteHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FnDAR: string;
    FnDARHasValue: Boolean;
    FdEmi: TDate;
    FdEmiHasValue: Boolean;
    FvDAR: Double;
    FvDARHasValue: Boolean;
    FrepEmi: string;
    FrepEmiHasValue: Boolean;
    FdPag: TDate;
    FdPagHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetxOrgao(const Value: string);
    procedure Setmatr(const Value: string);
    procedure SetxAgente(const Value: string);
    procedure Setfone(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetnDAR(const Value: string);
    procedure SetdEmi(const Value: TDate);
    procedure SetvDAR(const Value: Double);
    procedure SetrepEmi(const Value: string);
    procedure SetdPag(const Value: TDate);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property xOrgao: string read FxOrgao write SetxOrgao;
    property xOrgaoHasValue: Boolean read FxOrgaoHasValue write FxOrgaoHasValue;
    property matr: string read Fmatr write Setmatr;
    property matrHasValue: Boolean read FmatrHasValue write FmatrHasValue;
    property xAgente: string read FxAgente write SetxAgente;
    property xAgenteHasValue: Boolean read FxAgenteHasValue write FxAgenteHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property nDAR: string read FnDAR write SetnDAR;
    property nDARHasValue: Boolean read FnDARHasValue write FnDARHasValue;
    property dEmi: TDate read FdEmi write SetdEmi;
    property dEmiHasValue: Boolean read FdEmiHasValue write FdEmiHasValue;
    property vDAR: Double read FvDAR write SetvDAR;
    property vDARHasValue: Boolean read FvDARHasValue write FvDARHasValue;
    property repEmi: string read FrepEmi write SetrepEmi;
    property repEmiHasValue: Boolean read FrepEmiHasValue write FrepEmiHasValue;
    property dPag: TDate read FdPag write SetdPag;
    property dPagHasValue: Boolean read FdPagHasValue write FdPagHasValue;
  end;
  
  TNfeSefazEndereco = class
  private
    FxLgr: string;
    FxLgrHasValue: Boolean;
    Fnro: string;
    FnroHasValue: Boolean;
    FxCpl: string;
    FxCplHasValue: Boolean;
    FxBairro: string;
    FxBairroHasValue: Boolean;
    FcMun: Integer;
    FcMunHasValue: Boolean;
    FxMun: string;
    FxMunHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FcPais: Integer;
    FcPaisHasValue: Boolean;
    FxPais: string;
    FxPaisHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    procedure SetxLgr(const Value: string);
    procedure Setnro(const Value: string);
    procedure SetxCpl(const Value: string);
    procedure SetxBairro(const Value: string);
    procedure SetcMun(const Value: Integer);
    procedure SetxMun(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetcPais(const Value: Integer);
    procedure SetxPais(const Value: string);
    procedure Setfone(const Value: string);
  public
    property xLgr: string read FxLgr write SetxLgr;
    property xLgrHasValue: Boolean read FxLgrHasValue write FxLgrHasValue;
    property nro: string read Fnro write Setnro;
    property nroHasValue: Boolean read FnroHasValue write FnroHasValue;
    property xCpl: string read FxCpl write SetxCpl;
    property xCplHasValue: Boolean read FxCplHasValue write FxCplHasValue;
    property xBairro: string read FxBairro write SetxBairro;
    property xBairroHasValue: Boolean read FxBairroHasValue write FxBairroHasValue;
    property cMun: Integer read FcMun write SetcMun;
    property cMunHasValue: Boolean read FcMunHasValue write FcMunHasValue;
    property xMun: string read FxMun write SetxMun;
    property xMunHasValue: Boolean read FxMunHasValue write FxMunHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property cPais: Integer read FcPais write SetcPais;
    property cPaisHasValue: Boolean read FcPaisHasValue write FcPaisHasValue;
    property xPais: string read FxPais write SetxPais;
    property xPaisHasValue: Boolean read FxPaisHasValue write FxPaisHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
  end;
  
  TNfeSefazDest = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FidEstrangeiro: string;
    FidEstrangeiroHasValue: Boolean;
    FxNome: string;
    FxNomeHasValue: Boolean;
    FenderDest: TNfeSefazEndereco;
    FindIEDest: Integer;
    FindIEDestHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FISUF: string;
    FISUFHasValue: Boolean;
    FIM: string;
    FIMHasValue: Boolean;
    Femail: string;
    FemailHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetidEstrangeiro(const Value: string);
    procedure SetxNome(const Value: string);
    procedure SetenderDest(const Value: TNfeSefazEndereco);
    procedure SetindIEDest(const Value: Integer);
    procedure SetIE(const Value: string);
    procedure SetISUF(const Value: string);
    procedure SetIM(const Value: string);
    procedure Setemail(const Value: string);
  public
    destructor Destroy; override;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property idEstrangeiro: string read FidEstrangeiro write SetidEstrangeiro;
    property idEstrangeiroHasValue: Boolean read FidEstrangeiroHasValue write FidEstrangeiroHasValue;
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property enderDest: TNfeSefazEndereco read FenderDest write SetenderDest;
    property indIEDest: Integer read FindIEDest write SetindIEDest;
    property indIEDestHasValue: Boolean read FindIEDestHasValue write FindIEDestHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property ISUF: string read FISUF write SetISUF;
    property ISUFHasValue: Boolean read FISUFHasValue write FISUFHasValue;
    property IM: string read FIM write SetIM;
    property IMHasValue: Boolean read FIMHasValue write FIMHasValue;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
  end;
  
  TNfeSefazLocal = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FxNome: string;
    FxNomeHasValue: Boolean;
    FxLgr: string;
    FxLgrHasValue: Boolean;
    Fnro: string;
    FnroHasValue: Boolean;
    FxCpl: string;
    FxCplHasValue: Boolean;
    FxBairro: string;
    FxBairroHasValue: Boolean;
    FcMun: Integer;
    FcMunHasValue: Boolean;
    FxMun: string;
    FxMunHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FCEP: Integer;
    FCEPHasValue: Boolean;
    FcPais: Integer;
    FcPaisHasValue: Boolean;
    FxPais: string;
    FxPaisHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    Femail: string;
    FemailHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetxNome(const Value: string);
    procedure SetxLgr(const Value: string);
    procedure Setnro(const Value: string);
    procedure SetxCpl(const Value: string);
    procedure SetxBairro(const Value: string);
    procedure SetcMun(const Value: Integer);
    procedure SetxMun(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetCEP(const Value: Integer);
    procedure SetcPais(const Value: Integer);
    procedure SetxPais(const Value: string);
    procedure Setfone(const Value: string);
    procedure Setemail(const Value: string);
    procedure SetIE(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property xLgr: string read FxLgr write SetxLgr;
    property xLgrHasValue: Boolean read FxLgrHasValue write FxLgrHasValue;
    property nro: string read Fnro write Setnro;
    property nroHasValue: Boolean read FnroHasValue write FnroHasValue;
    property xCpl: string read FxCpl write SetxCpl;
    property xCplHasValue: Boolean read FxCplHasValue write FxCplHasValue;
    property xBairro: string read FxBairro write SetxBairro;
    property xBairroHasValue: Boolean read FxBairroHasValue write FxBairroHasValue;
    property cMun: Integer read FcMun write SetcMun;
    property cMunHasValue: Boolean read FcMunHasValue write FcMunHasValue;
    property xMun: string read FxMun write SetxMun;
    property xMunHasValue: Boolean read FxMunHasValue write FxMunHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property CEP: Integer read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    property cPais: Integer read FcPais write SetcPais;
    property cPaisHasValue: Boolean read FcPaisHasValue write FcPaisHasValue;
    property xPais: string read FxPais write SetxPais;
    property xPaisHasValue: Boolean read FxPaisHasValue write FxPaisHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
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
    FnAdicao: Integer;
    FnAdicaoHasValue: Boolean;
    FnSeqAdic: Integer;
    FnSeqAdicHasValue: Boolean;
    FcFabricante: string;
    FcFabricanteHasValue: Boolean;
    FvDescDI: Double;
    FvDescDIHasValue: Boolean;
    FnDraw: string;
    FnDrawHasValue: Boolean;
    procedure SetnAdicao(const Value: Integer);
    procedure SetnSeqAdic(const Value: Integer);
    procedure SetcFabricante(const Value: string);
    procedure SetvDescDI(const Value: Double);
    procedure SetnDraw(const Value: string);
  public
    property nAdicao: Integer read FnAdicao write SetnAdicao;
    property nAdicaoHasValue: Boolean read FnAdicaoHasValue write FnAdicaoHasValue;
    property nSeqAdic: Integer read FnSeqAdic write SetnSeqAdic;
    property nSeqAdicHasValue: Boolean read FnSeqAdicHasValue write FnSeqAdicHasValue;
    property cFabricante: string read FcFabricante write SetcFabricante;
    property cFabricanteHasValue: Boolean read FcFabricanteHasValue write FcFabricanteHasValue;
    property vDescDI: Double read FvDescDI write SetvDescDI;
    property vDescDIHasValue: Boolean read FvDescDIHasValue write FvDescDIHasValue;
    property nDraw: string read FnDraw write SetnDraw;
    property nDrawHasValue: Boolean read FnDrawHasValue write FnDrawHasValue;
  end;
  
  TNfeSefazAdiList = class(TObjectList<TNfeSefazAdi>)
  end;
  
  TNfeSefazDI = class
  private
    FnDI: string;
    FnDIHasValue: Boolean;
    FdDI: TDate;
    FdDIHasValue: Boolean;
    FxLocDesemb: string;
    FxLocDesembHasValue: Boolean;
    FUFDesemb: string;
    FUFDesembHasValue: Boolean;
    FdDesemb: TDate;
    FdDesembHasValue: Boolean;
    FtpViaTransp: Integer;
    FtpViaTranspHasValue: Boolean;
    FvAFRMM: Double;
    FvAFRMMHasValue: Boolean;
    FtpIntermedio: Integer;
    FtpIntermedioHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FUFTerceiro: string;
    FUFTerceiroHasValue: Boolean;
    FcExportador: string;
    FcExportadorHasValue: Boolean;
    Fadi: TNfeSefazAdiList;
    procedure SetnDI(const Value: string);
    procedure SetdDI(const Value: TDate);
    procedure SetxLocDesemb(const Value: string);
    procedure SetUFDesemb(const Value: string);
    procedure SetdDesemb(const Value: TDate);
    procedure SettpViaTransp(const Value: Integer);
    procedure SetvAFRMM(const Value: Double);
    procedure SettpIntermedio(const Value: Integer);
    procedure SetCNPJ(const Value: string);
    procedure SetUFTerceiro(const Value: string);
    procedure SetcExportador(const Value: string);
    procedure Setadi(const Value: TNfeSefazAdiList);
  public
    destructor Destroy; override;
    property nDI: string read FnDI write SetnDI;
    property nDIHasValue: Boolean read FnDIHasValue write FnDIHasValue;
    property dDI: TDate read FdDI write SetdDI;
    property dDIHasValue: Boolean read FdDIHasValue write FdDIHasValue;
    property xLocDesemb: string read FxLocDesemb write SetxLocDesemb;
    property xLocDesembHasValue: Boolean read FxLocDesembHasValue write FxLocDesembHasValue;
    property UFDesemb: string read FUFDesemb write SetUFDesemb;
    property UFDesembHasValue: Boolean read FUFDesembHasValue write FUFDesembHasValue;
    property dDesemb: TDate read FdDesemb write SetdDesemb;
    property dDesembHasValue: Boolean read FdDesembHasValue write FdDesembHasValue;
    property tpViaTransp: Integer read FtpViaTransp write SettpViaTransp;
    property tpViaTranspHasValue: Boolean read FtpViaTranspHasValue write FtpViaTranspHasValue;
    property vAFRMM: Double read FvAFRMM write SetvAFRMM;
    property vAFRMMHasValue: Boolean read FvAFRMMHasValue write FvAFRMMHasValue;
    property tpIntermedio: Integer read FtpIntermedio write SettpIntermedio;
    property tpIntermedioHasValue: Boolean read FtpIntermedioHasValue write FtpIntermedioHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property UFTerceiro: string read FUFTerceiro write SetUFTerceiro;
    property UFTerceiroHasValue: Boolean read FUFTerceiroHasValue write FUFTerceiroHasValue;
    property cExportador: string read FcExportador write SetcExportador;
    property cExportadorHasValue: Boolean read FcExportadorHasValue write FcExportadorHasValue;
    property adi: TNfeSefazAdiList read Fadi write Setadi;
  end;
  
  TNfeSefazDIList = class(TObjectList<TNfeSefazDI>)
  end;
  
  TNfeSefazExportInd = class
  private
    FnRE: string;
    FnREHasValue: Boolean;
    FchNFe: string;
    FchNFeHasValue: Boolean;
    FqExport: Double;
    FqExportHasValue: Boolean;
    procedure SetnRE(const Value: string);
    procedure SetchNFe(const Value: string);
    procedure SetqExport(const Value: Double);
  public
    property nRE: string read FnRE write SetnRE;
    property nREHasValue: Boolean read FnREHasValue write FnREHasValue;
    property chNFe: string read FchNFe write SetchNFe;
    property chNFeHasValue: Boolean read FchNFeHasValue write FchNFeHasValue;
    property qExport: Double read FqExport write SetqExport;
    property qExportHasValue: Boolean read FqExportHasValue write FqExportHasValue;
  end;
  
  TNfeSefazDetExport = class
  private
    FnDraw: string;
    FnDrawHasValue: Boolean;
    FexportInd: TNfeSefazExportInd;
    procedure SetnDraw(const Value: string);
    procedure SetexportInd(const Value: TNfeSefazExportInd);
  public
    destructor Destroy; override;
    property nDraw: string read FnDraw write SetnDraw;
    property nDrawHasValue: Boolean read FnDrawHasValue write FnDrawHasValue;
    property exportInd: TNfeSefazExportInd read FexportInd write SetexportInd;
  end;
  
  TNfeSefazDetExportList = class(TObjectList<TNfeSefazDetExport>)
  end;
  
  TNfeSefazRastro = class
  private
    FnLote: string;
    FnLoteHasValue: Boolean;
    FqLote: Double;
    FqLoteHasValue: Boolean;
    FdFab: TDate;
    FdFabHasValue: Boolean;
    FdVal: TDate;
    FdValHasValue: Boolean;
    FcAgreg: string;
    FcAgregHasValue: Boolean;
    procedure SetnLote(const Value: string);
    procedure SetqLote(const Value: Double);
    procedure SetdFab(const Value: TDate);
    procedure SetdVal(const Value: TDate);
    procedure SetcAgreg(const Value: string);
  public
    property nLote: string read FnLote write SetnLote;
    property nLoteHasValue: Boolean read FnLoteHasValue write FnLoteHasValue;
    property qLote: Double read FqLote write SetqLote;
    property qLoteHasValue: Boolean read FqLoteHasValue write FqLoteHasValue;
    property dFab: TDate read FdFab write SetdFab;
    property dFabHasValue: Boolean read FdFabHasValue write FdFabHasValue;
    property dVal: TDate read FdVal write SetdVal;
    property dValHasValue: Boolean read FdValHasValue write FdValHasValue;
    property cAgreg: string read FcAgreg write SetcAgreg;
    property cAgregHasValue: Boolean read FcAgregHasValue write FcAgregHasValue;
  end;
  
  TNfeSefazRastroList = class(TObjectList<TNfeSefazRastro>)
  end;
  
  TNfeSefazInfProdNFF = class
  private
    FcProdFisco: string;
    FcProdFiscoHasValue: Boolean;
    FcOperNFF: string;
    FcOperNFFHasValue: Boolean;
    procedure SetcProdFisco(const Value: string);
    procedure SetcOperNFF(const Value: string);
  public
    property cProdFisco: string read FcProdFisco write SetcProdFisco;
    property cProdFiscoHasValue: Boolean read FcProdFiscoHasValue write FcProdFiscoHasValue;
    property cOperNFF: string read FcOperNFF write SetcOperNFF;
    property cOperNFFHasValue: Boolean read FcOperNFFHasValue write FcOperNFFHasValue;
  end;
  
  TNfeSefazInfProdEmb = class
  private
    FxEmb: string;
    FxEmbHasValue: Boolean;
    FqVolEmb: Double;
    FqVolEmbHasValue: Boolean;
    FuEmb: string;
    FuEmbHasValue: Boolean;
    procedure SetxEmb(const Value: string);
    procedure SetqVolEmb(const Value: Double);
    procedure SetuEmb(const Value: string);
  public
    property xEmb: string read FxEmb write SetxEmb;
    property xEmbHasValue: Boolean read FxEmbHasValue write FxEmbHasValue;
    property qVolEmb: Double read FqVolEmb write SetqVolEmb;
    property qVolEmbHasValue: Boolean read FqVolEmbHasValue write FqVolEmbHasValue;
    property uEmb: string read FuEmb write SetuEmb;
    property uEmbHasValue: Boolean read FuEmbHasValue write FuEmbHasValue;
  end;
  
  TNfeSefazVeicProd = class
  private
    FtpOp: Integer;
    FtpOpHasValue: Boolean;
    Fchassi: string;
    FchassiHasValue: Boolean;
    FcCor: string;
    FcCorHasValue: Boolean;
    FxCor: string;
    FxCorHasValue: Boolean;
    Fpot: string;
    FpotHasValue: Boolean;
    Fcilin: string;
    FcilinHasValue: Boolean;
    FpesoL: string;
    FpesoLHasValue: Boolean;
    FpesoB: string;
    FpesoBHasValue: Boolean;
    FnSerie: string;
    FnSerieHasValue: Boolean;
    FtpComb: string;
    FtpCombHasValue: Boolean;
    FnMotor: string;
    FnMotorHasValue: Boolean;
    FCMT: string;
    FCMTHasValue: Boolean;
    Fdist: string;
    FdistHasValue: Boolean;
    FanoMod: Integer;
    FanoModHasValue: Boolean;
    FanoFab: Integer;
    FanoFabHasValue: Boolean;
    FtpPint: string;
    FtpPintHasValue: Boolean;
    FtpVeic: Integer;
    FtpVeicHasValue: Boolean;
    FespVeic: Integer;
    FespVeicHasValue: Boolean;
    FVIN: string;
    FVINHasValue: Boolean;
    FcondVeic: Integer;
    FcondVeicHasValue: Boolean;
    FcMod: string;
    FcModHasValue: Boolean;
    FcCorDENATRAN: string;
    FcCorDENATRANHasValue: Boolean;
    Flota: Integer;
    FlotaHasValue: Boolean;
    FtpRest: Integer;
    FtpRestHasValue: Boolean;
    procedure SettpOp(const Value: Integer);
    procedure Setchassi(const Value: string);
    procedure SetcCor(const Value: string);
    procedure SetxCor(const Value: string);
    procedure Setpot(const Value: string);
    procedure Setcilin(const Value: string);
    procedure SetpesoL(const Value: string);
    procedure SetpesoB(const Value: string);
    procedure SetnSerie(const Value: string);
    procedure SettpComb(const Value: string);
    procedure SetnMotor(const Value: string);
    procedure SetCMT(const Value: string);
    procedure Setdist(const Value: string);
    procedure SetanoMod(const Value: Integer);
    procedure SetanoFab(const Value: Integer);
    procedure SettpPint(const Value: string);
    procedure SettpVeic(const Value: Integer);
    procedure SetespVeic(const Value: Integer);
    procedure SetVIN(const Value: string);
    procedure SetcondVeic(const Value: Integer);
    procedure SetcMod(const Value: string);
    procedure SetcCorDENATRAN(const Value: string);
    procedure Setlota(const Value: Integer);
    procedure SettpRest(const Value: Integer);
  public
    property tpOp: Integer read FtpOp write SettpOp;
    property tpOpHasValue: Boolean read FtpOpHasValue write FtpOpHasValue;
    property chassi: string read Fchassi write Setchassi;
    property chassiHasValue: Boolean read FchassiHasValue write FchassiHasValue;
    property cCor: string read FcCor write SetcCor;
    property cCorHasValue: Boolean read FcCorHasValue write FcCorHasValue;
    property xCor: string read FxCor write SetxCor;
    property xCorHasValue: Boolean read FxCorHasValue write FxCorHasValue;
    property pot: string read Fpot write Setpot;
    property potHasValue: Boolean read FpotHasValue write FpotHasValue;
    property cilin: string read Fcilin write Setcilin;
    property cilinHasValue: Boolean read FcilinHasValue write FcilinHasValue;
    property pesoL: string read FpesoL write SetpesoL;
    property pesoLHasValue: Boolean read FpesoLHasValue write FpesoLHasValue;
    property pesoB: string read FpesoB write SetpesoB;
    property pesoBHasValue: Boolean read FpesoBHasValue write FpesoBHasValue;
    property nSerie: string read FnSerie write SetnSerie;
    property nSerieHasValue: Boolean read FnSerieHasValue write FnSerieHasValue;
    property tpComb: string read FtpComb write SettpComb;
    property tpCombHasValue: Boolean read FtpCombHasValue write FtpCombHasValue;
    property nMotor: string read FnMotor write SetnMotor;
    property nMotorHasValue: Boolean read FnMotorHasValue write FnMotorHasValue;
    property CMT: string read FCMT write SetCMT;
    property CMTHasValue: Boolean read FCMTHasValue write FCMTHasValue;
    property dist: string read Fdist write Setdist;
    property distHasValue: Boolean read FdistHasValue write FdistHasValue;
    property anoMod: Integer read FanoMod write SetanoMod;
    property anoModHasValue: Boolean read FanoModHasValue write FanoModHasValue;
    property anoFab: Integer read FanoFab write SetanoFab;
    property anoFabHasValue: Boolean read FanoFabHasValue write FanoFabHasValue;
    property tpPint: string read FtpPint write SettpPint;
    property tpPintHasValue: Boolean read FtpPintHasValue write FtpPintHasValue;
    property tpVeic: Integer read FtpVeic write SettpVeic;
    property tpVeicHasValue: Boolean read FtpVeicHasValue write FtpVeicHasValue;
    property espVeic: Integer read FespVeic write SetespVeic;
    property espVeicHasValue: Boolean read FespVeicHasValue write FespVeicHasValue;
    property VIN: string read FVIN write SetVIN;
    property VINHasValue: Boolean read FVINHasValue write FVINHasValue;
    property condVeic: Integer read FcondVeic write SetcondVeic;
    property condVeicHasValue: Boolean read FcondVeicHasValue write FcondVeicHasValue;
    property cMod: string read FcMod write SetcMod;
    property cModHasValue: Boolean read FcModHasValue write FcModHasValue;
    property cCorDENATRAN: string read FcCorDENATRAN write SetcCorDENATRAN;
    property cCorDENATRANHasValue: Boolean read FcCorDENATRANHasValue write FcCorDENATRANHasValue;
    property lota: Integer read Flota write Setlota;
    property lotaHasValue: Boolean read FlotaHasValue write FlotaHasValue;
    property tpRest: Integer read FtpRest write SettpRest;
    property tpRestHasValue: Boolean read FtpRestHasValue write FtpRestHasValue;
  end;
  
  TNfeSefazMed = class
  private
    FcProdANVISA: string;
    FcProdANVISAHasValue: Boolean;
    FxMotivoIsencao: string;
    FxMotivoIsencaoHasValue: Boolean;
    FvPMC: Double;
    FvPMCHasValue: Boolean;
    procedure SetcProdANVISA(const Value: string);
    procedure SetxMotivoIsencao(const Value: string);
    procedure SetvPMC(const Value: Double);
  public
    property cProdANVISA: string read FcProdANVISA write SetcProdANVISA;
    property cProdANVISAHasValue: Boolean read FcProdANVISAHasValue write FcProdANVISAHasValue;
    property xMotivoIsencao: string read FxMotivoIsencao write SetxMotivoIsencao;
    property xMotivoIsencaoHasValue: Boolean read FxMotivoIsencaoHasValue write FxMotivoIsencaoHasValue;
    property vPMC: Double read FvPMC write SetvPMC;
    property vPMCHasValue: Boolean read FvPMCHasValue write FvPMCHasValue;
  end;
  
  TNfeSefazArma = class
  private
    FtpArma: Integer;
    FtpArmaHasValue: Boolean;
    FnSerie: string;
    FnSerieHasValue: Boolean;
    FnCano: string;
    FnCanoHasValue: Boolean;
    Fdescr: string;
    FdescrHasValue: Boolean;
    procedure SettpArma(const Value: Integer);
    procedure SetnSerie(const Value: string);
    procedure SetnCano(const Value: string);
    procedure Setdescr(const Value: string);
  public
    property tpArma: Integer read FtpArma write SettpArma;
    property tpArmaHasValue: Boolean read FtpArmaHasValue write FtpArmaHasValue;
    property nSerie: string read FnSerie write SetnSerie;
    property nSerieHasValue: Boolean read FnSerieHasValue write FnSerieHasValue;
    property nCano: string read FnCano write SetnCano;
    property nCanoHasValue: Boolean read FnCanoHasValue write FnCanoHasValue;
    property descr: string read Fdescr write Setdescr;
    property descrHasValue: Boolean read FdescrHasValue write FdescrHasValue;
  end;
  
  TNfeSefazArmaList = class(TObjectList<TNfeSefazArma>)
  end;
  
  TNfeSefazCIDE = class
  private
    FqBCProd: Double;
    FqBCProdHasValue: Boolean;
    FvAliqProd: Double;
    FvAliqProdHasValue: Boolean;
    FvCIDE: Double;
    FvCIDEHasValue: Boolean;
    procedure SetqBCProd(const Value: Double);
    procedure SetvAliqProd(const Value: Double);
    procedure SetvCIDE(const Value: Double);
  public
    property qBCProd: Double read FqBCProd write SetqBCProd;
    property qBCProdHasValue: Boolean read FqBCProdHasValue write FqBCProdHasValue;
    property vAliqProd: Double read FvAliqProd write SetvAliqProd;
    property vAliqProdHasValue: Boolean read FvAliqProdHasValue write FvAliqProdHasValue;
    property vCIDE: Double read FvCIDE write SetvCIDE;
    property vCIDEHasValue: Boolean read FvCIDEHasValue write FvCIDEHasValue;
  end;
  
  TNfeSefazEncerrante = class
  private
    FnBico: Integer;
    FnBicoHasValue: Boolean;
    FnBomba: Integer;
    FnBombaHasValue: Boolean;
    FnTanque: Integer;
    FnTanqueHasValue: Boolean;
    FvEncIni: Double;
    FvEncIniHasValue: Boolean;
    FvEncFin: Double;
    FvEncFinHasValue: Boolean;
    procedure SetnBico(const Value: Integer);
    procedure SetnBomba(const Value: Integer);
    procedure SetnTanque(const Value: Integer);
    procedure SetvEncIni(const Value: Double);
    procedure SetvEncFin(const Value: Double);
  public
    property nBico: Integer read FnBico write SetnBico;
    property nBicoHasValue: Boolean read FnBicoHasValue write FnBicoHasValue;
    property nBomba: Integer read FnBomba write SetnBomba;
    property nBombaHasValue: Boolean read FnBombaHasValue write FnBombaHasValue;
    property nTanque: Integer read FnTanque write SetnTanque;
    property nTanqueHasValue: Boolean read FnTanqueHasValue write FnTanqueHasValue;
    property vEncIni: Double read FvEncIni write SetvEncIni;
    property vEncIniHasValue: Boolean read FvEncIniHasValue write FvEncIniHasValue;
    property vEncFin: Double read FvEncFin write SetvEncFin;
    property vEncFinHasValue: Boolean read FvEncFinHasValue write FvEncFinHasValue;
  end;
  
  TNfeSefazComb = class
  private
    FcProdANP: Integer;
    FcProdANPHasValue: Boolean;
    FdescANP: string;
    FdescANPHasValue: Boolean;
    FpGLP: Double;
    FpGLPHasValue: Boolean;
    FpGNn: Double;
    FpGNnHasValue: Boolean;
    FpGNi: Double;
    FpGNiHasValue: Boolean;
    FvPart: Double;
    FvPartHasValue: Boolean;
    FCODIF: string;
    FCODIFHasValue: Boolean;
    FqTemp: Double;
    FqTempHasValue: Boolean;
    FUFCons: string;
    FUFConsHasValue: Boolean;
    FCIDE: TNfeSefazCIDE;
    Fencerrante: TNfeSefazEncerrante;
    procedure SetcProdANP(const Value: Integer);
    procedure SetdescANP(const Value: string);
    procedure SetpGLP(const Value: Double);
    procedure SetpGNn(const Value: Double);
    procedure SetpGNi(const Value: Double);
    procedure SetvPart(const Value: Double);
    procedure SetCODIF(const Value: string);
    procedure SetqTemp(const Value: Double);
    procedure SetUFCons(const Value: string);
    procedure SetCIDE(const Value: TNfeSefazCIDE);
    procedure Setencerrante(const Value: TNfeSefazEncerrante);
  public
    destructor Destroy; override;
    property cProdANP: Integer read FcProdANP write SetcProdANP;
    property cProdANPHasValue: Boolean read FcProdANPHasValue write FcProdANPHasValue;
    property descANP: string read FdescANP write SetdescANP;
    property descANPHasValue: Boolean read FdescANPHasValue write FdescANPHasValue;
    property pGLP: Double read FpGLP write SetpGLP;
    property pGLPHasValue: Boolean read FpGLPHasValue write FpGLPHasValue;
    property pGNn: Double read FpGNn write SetpGNn;
    property pGNnHasValue: Boolean read FpGNnHasValue write FpGNnHasValue;
    property pGNi: Double read FpGNi write SetpGNi;
    property pGNiHasValue: Boolean read FpGNiHasValue write FpGNiHasValue;
    property vPart: Double read FvPart write SetvPart;
    property vPartHasValue: Boolean read FvPartHasValue write FvPartHasValue;
    property CODIF: string read FCODIF write SetCODIF;
    property CODIFHasValue: Boolean read FCODIFHasValue write FCODIFHasValue;
    property qTemp: Double read FqTemp write SetqTemp;
    property qTempHasValue: Boolean read FqTempHasValue write FqTempHasValue;
    property UFCons: string read FUFCons write SetUFCons;
    property UFConsHasValue: Boolean read FUFConsHasValue write FUFConsHasValue;
    property CIDE: TNfeSefazCIDE read FCIDE write SetCIDE;
    property encerrante: TNfeSefazEncerrante read Fencerrante write Setencerrante;
  end;
  
  TNfeSefazProd = class
  private
    FcProd: string;
    FcProdHasValue: Boolean;
    FcEAN: string;
    FcEANHasValue: Boolean;
    FcBarra: string;
    FcBarraHasValue: Boolean;
    FxProd: string;
    FxProdHasValue: Boolean;
    FNCM: string;
    FNCMHasValue: Boolean;
    FNVE: stringList;
    FCEST: string;
    FCESTHasValue: Boolean;
    FindEscala: string;
    FindEscalaHasValue: Boolean;
    FCNPJFab: string;
    FCNPJFabHasValue: Boolean;
    FcBenef: string;
    FcBenefHasValue: Boolean;
    FEXTIPI: string;
    FEXTIPIHasValue: Boolean;
    FCFOP: Integer;
    FCFOPHasValue: Boolean;
    FuCom: string;
    FuComHasValue: Boolean;
    FqCom: Double;
    FqComHasValue: Boolean;
    FvUnCom: Double;
    FvUnComHasValue: Boolean;
    FvProd: Double;
    FvProdHasValue: Boolean;
    FcEANTrib: string;
    FcEANTribHasValue: Boolean;
    FcBarraTrib: string;
    FcBarraTribHasValue: Boolean;
    FuTrib: string;
    FuTribHasValue: Boolean;
    FqTrib: Double;
    FqTribHasValue: Boolean;
    FvUnTrib: Double;
    FvUnTribHasValue: Boolean;
    FvFrete: Double;
    FvFreteHasValue: Boolean;
    FvSeg: Double;
    FvSegHasValue: Boolean;
    FvDesc: Double;
    FvDescHasValue: Boolean;
    FvOutro: Double;
    FvOutroHasValue: Boolean;
    FindTot: Integer;
    FindTotHasValue: Boolean;
    FDI: TNfeSefazDIList;
    FdetExport: TNfeSefazDetExportList;
    FxPed: string;
    FxPedHasValue: Boolean;
    FnItemPed: Integer;
    FnItemPedHasValue: Boolean;
    FnFCI: string;
    FnFCIHasValue: Boolean;
    Frastro: TNfeSefazRastroList;
    FinfProdNFF: TNfeSefazInfProdNFF;
    FinfProdEmb: TNfeSefazInfProdEmb;
    FveicProd: TNfeSefazVeicProd;
    Fmed: TNfeSefazMed;
    Farma: TNfeSefazArmaList;
    Fcomb: TNfeSefazComb;
    FnRECOPI: string;
    FnRECOPIHasValue: Boolean;
    procedure SetcProd(const Value: string);
    procedure SetcEAN(const Value: string);
    procedure SetcBarra(const Value: string);
    procedure SetxProd(const Value: string);
    procedure SetNCM(const Value: string);
    procedure SetNVE(const Value: stringList);
    procedure SetCEST(const Value: string);
    procedure SetindEscala(const Value: string);
    procedure SetCNPJFab(const Value: string);
    procedure SetcBenef(const Value: string);
    procedure SetEXTIPI(const Value: string);
    procedure SetCFOP(const Value: Integer);
    procedure SetuCom(const Value: string);
    procedure SetqCom(const Value: Double);
    procedure SetvUnCom(const Value: Double);
    procedure SetvProd(const Value: Double);
    procedure SetcEANTrib(const Value: string);
    procedure SetcBarraTrib(const Value: string);
    procedure SetuTrib(const Value: string);
    procedure SetqTrib(const Value: Double);
    procedure SetvUnTrib(const Value: Double);
    procedure SetvFrete(const Value: Double);
    procedure SetvSeg(const Value: Double);
    procedure SetvDesc(const Value: Double);
    procedure SetvOutro(const Value: Double);
    procedure SetindTot(const Value: Integer);
    procedure SetDI(const Value: TNfeSefazDIList);
    procedure SetdetExport(const Value: TNfeSefazDetExportList);
    procedure SetxPed(const Value: string);
    procedure SetnItemPed(const Value: Integer);
    procedure SetnFCI(const Value: string);
    procedure Setrastro(const Value: TNfeSefazRastroList);
    procedure SetinfProdNFF(const Value: TNfeSefazInfProdNFF);
    procedure SetinfProdEmb(const Value: TNfeSefazInfProdEmb);
    procedure SetveicProd(const Value: TNfeSefazVeicProd);
    procedure Setmed(const Value: TNfeSefazMed);
    procedure Setarma(const Value: TNfeSefazArmaList);
    procedure Setcomb(const Value: TNfeSefazComb);
    procedure SetnRECOPI(const Value: string);
  public
    destructor Destroy; override;
    property cProd: string read FcProd write SetcProd;
    property cProdHasValue: Boolean read FcProdHasValue write FcProdHasValue;
    property cEAN: string read FcEAN write SetcEAN;
    property cEANHasValue: Boolean read FcEANHasValue write FcEANHasValue;
    property cBarra: string read FcBarra write SetcBarra;
    property cBarraHasValue: Boolean read FcBarraHasValue write FcBarraHasValue;
    property xProd: string read FxProd write SetxProd;
    property xProdHasValue: Boolean read FxProdHasValue write FxProdHasValue;
    property NCM: string read FNCM write SetNCM;
    property NCMHasValue: Boolean read FNCMHasValue write FNCMHasValue;
    property NVE: stringList read FNVE write SetNVE;
    property CEST: string read FCEST write SetCEST;
    property CESTHasValue: Boolean read FCESTHasValue write FCESTHasValue;
    property indEscala: string read FindEscala write SetindEscala;
    property indEscalaHasValue: Boolean read FindEscalaHasValue write FindEscalaHasValue;
    property CNPJFab: string read FCNPJFab write SetCNPJFab;
    property CNPJFabHasValue: Boolean read FCNPJFabHasValue write FCNPJFabHasValue;
    property cBenef: string read FcBenef write SetcBenef;
    property cBenefHasValue: Boolean read FcBenefHasValue write FcBenefHasValue;
    property EXTIPI: string read FEXTIPI write SetEXTIPI;
    property EXTIPIHasValue: Boolean read FEXTIPIHasValue write FEXTIPIHasValue;
    property CFOP: Integer read FCFOP write SetCFOP;
    property CFOPHasValue: Boolean read FCFOPHasValue write FCFOPHasValue;
    property uCom: string read FuCom write SetuCom;
    property uComHasValue: Boolean read FuComHasValue write FuComHasValue;
    property qCom: Double read FqCom write SetqCom;
    property qComHasValue: Boolean read FqComHasValue write FqComHasValue;
    property vUnCom: Double read FvUnCom write SetvUnCom;
    property vUnComHasValue: Boolean read FvUnComHasValue write FvUnComHasValue;
    property vProd: Double read FvProd write SetvProd;
    property vProdHasValue: Boolean read FvProdHasValue write FvProdHasValue;
    property cEANTrib: string read FcEANTrib write SetcEANTrib;
    property cEANTribHasValue: Boolean read FcEANTribHasValue write FcEANTribHasValue;
    property cBarraTrib: string read FcBarraTrib write SetcBarraTrib;
    property cBarraTribHasValue: Boolean read FcBarraTribHasValue write FcBarraTribHasValue;
    property uTrib: string read FuTrib write SetuTrib;
    property uTribHasValue: Boolean read FuTribHasValue write FuTribHasValue;
    property qTrib: Double read FqTrib write SetqTrib;
    property qTribHasValue: Boolean read FqTribHasValue write FqTribHasValue;
    property vUnTrib: Double read FvUnTrib write SetvUnTrib;
    property vUnTribHasValue: Boolean read FvUnTribHasValue write FvUnTribHasValue;
    property vFrete: Double read FvFrete write SetvFrete;
    property vFreteHasValue: Boolean read FvFreteHasValue write FvFreteHasValue;
    property vSeg: Double read FvSeg write SetvSeg;
    property vSegHasValue: Boolean read FvSegHasValue write FvSegHasValue;
    property vDesc: Double read FvDesc write SetvDesc;
    property vDescHasValue: Boolean read FvDescHasValue write FvDescHasValue;
    property vOutro: Double read FvOutro write SetvOutro;
    property vOutroHasValue: Boolean read FvOutroHasValue write FvOutroHasValue;
    property indTot: Integer read FindTot write SetindTot;
    property indTotHasValue: Boolean read FindTotHasValue write FindTotHasValue;
    property DI: TNfeSefazDIList read FDI write SetDI;
    property detExport: TNfeSefazDetExportList read FdetExport write SetdetExport;
    property xPed: string read FxPed write SetxPed;
    property xPedHasValue: Boolean read FxPedHasValue write FxPedHasValue;
    property nItemPed: Integer read FnItemPed write SetnItemPed;
    property nItemPedHasValue: Boolean read FnItemPedHasValue write FnItemPedHasValue;
    property nFCI: string read FnFCI write SetnFCI;
    property nFCIHasValue: Boolean read FnFCIHasValue write FnFCIHasValue;
    property rastro: TNfeSefazRastroList read Frastro write Setrastro;
    property infProdNFF: TNfeSefazInfProdNFF read FinfProdNFF write SetinfProdNFF;
    property infProdEmb: TNfeSefazInfProdEmb read FinfProdEmb write SetinfProdEmb;
    property veicProd: TNfeSefazVeicProd read FveicProd write SetveicProd;
    property med: TNfeSefazMed read Fmed write Setmed;
    property arma: TNfeSefazArmaList read Farma write Setarma;
    property comb: TNfeSefazComb read Fcomb write Setcomb;
    property nRECOPI: string read FnRECOPI write SetnRECOPI;
    property nRECOPIHasValue: Boolean read FnRECOPIHasValue write FnRECOPIHasValue;
  end;
  
  TNfeSefazICMS00 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FmodBC: Integer;
    FmodBCHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpICMS: Double;
    FpICMSHasValue: Boolean;
    FvICMS: Double;
    FvICMSHasValue: Boolean;
    FpFCP: Double;
    FpFCPHasValue: Boolean;
    FvFCP: Double;
    FvFCPHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetmodBC(const Value: Integer);
    procedure SetvBC(const Value: Double);
    procedure SetpICMS(const Value: Double);
    procedure SetvICMS(const Value: Double);
    procedure SetpFCP(const Value: Double);
    procedure SetvFCP(const Value: Double);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property modBC: Integer read FmodBC write SetmodBC;
    property modBCHasValue: Boolean read FmodBCHasValue write FmodBCHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pICMS: Double read FpICMS write SetpICMS;
    property pICMSHasValue: Boolean read FpICMSHasValue write FpICMSHasValue;
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
    property pFCP: Double read FpFCP write SetpFCP;
    property pFCPHasValue: Boolean read FpFCPHasValue write FpFCPHasValue;
    property vFCP: Double read FvFCP write SetvFCP;
    property vFCPHasValue: Boolean read FvFCPHasValue write FvFCPHasValue;
  end;
  
  TNfeSefazICMS10 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FmodBC: Integer;
    FmodBCHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpICMS: Double;
    FpICMSHasValue: Boolean;
    FvICMS: Double;
    FvICMSHasValue: Boolean;
    FvBCFCP: Double;
    FvBCFCPHasValue: Boolean;
    FpFCP: Double;
    FpFCPHasValue: Boolean;
    FvFCP: Double;
    FvFCPHasValue: Boolean;
    FmodBCST: Integer;
    FmodBCSTHasValue: Boolean;
    FpMVAST: Double;
    FpMVASTHasValue: Boolean;
    FpRedBCST: Double;
    FpRedBCSTHasValue: Boolean;
    FvBCST: Double;
    FvBCSTHasValue: Boolean;
    FpICMSST: Double;
    FpICMSSTHasValue: Boolean;
    FvICMSST: Double;
    FvICMSSTHasValue: Boolean;
    FvBCFCPST: Double;
    FvBCFCPSTHasValue: Boolean;
    FpFCPST: Double;
    FpFCPSTHasValue: Boolean;
    FvFCPST: Double;
    FvFCPSTHasValue: Boolean;
    FvICMSSTDeson: Double;
    FvICMSSTDesonHasValue: Boolean;
    FmotDesICMSST: Integer;
    FmotDesICMSSTHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetmodBC(const Value: Integer);
    procedure SetvBC(const Value: Double);
    procedure SetpICMS(const Value: Double);
    procedure SetvICMS(const Value: Double);
    procedure SetvBCFCP(const Value: Double);
    procedure SetpFCP(const Value: Double);
    procedure SetvFCP(const Value: Double);
    procedure SetmodBCST(const Value: Integer);
    procedure SetpMVAST(const Value: Double);
    procedure SetpRedBCST(const Value: Double);
    procedure SetvBCST(const Value: Double);
    procedure SetpICMSST(const Value: Double);
    procedure SetvICMSST(const Value: Double);
    procedure SetvBCFCPST(const Value: Double);
    procedure SetpFCPST(const Value: Double);
    procedure SetvFCPST(const Value: Double);
    procedure SetvICMSSTDeson(const Value: Double);
    procedure SetmotDesICMSST(const Value: Integer);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property modBC: Integer read FmodBC write SetmodBC;
    property modBCHasValue: Boolean read FmodBCHasValue write FmodBCHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pICMS: Double read FpICMS write SetpICMS;
    property pICMSHasValue: Boolean read FpICMSHasValue write FpICMSHasValue;
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
    property vBCFCP: Double read FvBCFCP write SetvBCFCP;
    property vBCFCPHasValue: Boolean read FvBCFCPHasValue write FvBCFCPHasValue;
    property pFCP: Double read FpFCP write SetpFCP;
    property pFCPHasValue: Boolean read FpFCPHasValue write FpFCPHasValue;
    property vFCP: Double read FvFCP write SetvFCP;
    property vFCPHasValue: Boolean read FvFCPHasValue write FvFCPHasValue;
    property modBCST: Integer read FmodBCST write SetmodBCST;
    property modBCSTHasValue: Boolean read FmodBCSTHasValue write FmodBCSTHasValue;
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    property vBCST: Double read FvBCST write SetvBCST;
    property vBCSTHasValue: Boolean read FvBCSTHasValue write FvBCSTHasValue;
    property pICMSST: Double read FpICMSST write SetpICMSST;
    property pICMSSTHasValue: Boolean read FpICMSSTHasValue write FpICMSSTHasValue;
    property vICMSST: Double read FvICMSST write SetvICMSST;
    property vICMSSTHasValue: Boolean read FvICMSSTHasValue write FvICMSSTHasValue;
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
    property vICMSSTDeson: Double read FvICMSSTDeson write SetvICMSSTDeson;
    property vICMSSTDesonHasValue: Boolean read FvICMSSTDesonHasValue write FvICMSSTDesonHasValue;
    property motDesICMSST: Integer read FmotDesICMSST write SetmotDesICMSST;
    property motDesICMSSTHasValue: Boolean read FmotDesICMSSTHasValue write FmotDesICMSSTHasValue;
  end;
  
  TNfeSefazICMS20 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FmodBC: Integer;
    FmodBCHasValue: Boolean;
    FpRedBC: Double;
    FpRedBCHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpICMS: Double;
    FpICMSHasValue: Boolean;
    FvICMS: Double;
    FvICMSHasValue: Boolean;
    FvBCFCP: Double;
    FvBCFCPHasValue: Boolean;
    FpFCP: Double;
    FpFCPHasValue: Boolean;
    FvFCP: Double;
    FvFCPHasValue: Boolean;
    FvICMSDeson: Double;
    FvICMSDesonHasValue: Boolean;
    FmotDesICMS: Integer;
    FmotDesICMSHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetmodBC(const Value: Integer);
    procedure SetpRedBC(const Value: Double);
    procedure SetvBC(const Value: Double);
    procedure SetpICMS(const Value: Double);
    procedure SetvICMS(const Value: Double);
    procedure SetvBCFCP(const Value: Double);
    procedure SetpFCP(const Value: Double);
    procedure SetvFCP(const Value: Double);
    procedure SetvICMSDeson(const Value: Double);
    procedure SetmotDesICMS(const Value: Integer);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property modBC: Integer read FmodBC write SetmodBC;
    property modBCHasValue: Boolean read FmodBCHasValue write FmodBCHasValue;
    property pRedBC: Double read FpRedBC write SetpRedBC;
    property pRedBCHasValue: Boolean read FpRedBCHasValue write FpRedBCHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pICMS: Double read FpICMS write SetpICMS;
    property pICMSHasValue: Boolean read FpICMSHasValue write FpICMSHasValue;
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
    property vBCFCP: Double read FvBCFCP write SetvBCFCP;
    property vBCFCPHasValue: Boolean read FvBCFCPHasValue write FvBCFCPHasValue;
    property pFCP: Double read FpFCP write SetpFCP;
    property pFCPHasValue: Boolean read FpFCPHasValue write FpFCPHasValue;
    property vFCP: Double read FvFCP write SetvFCP;
    property vFCPHasValue: Boolean read FvFCPHasValue write FvFCPHasValue;
    property vICMSDeson: Double read FvICMSDeson write SetvICMSDeson;
    property vICMSDesonHasValue: Boolean read FvICMSDesonHasValue write FvICMSDesonHasValue;
    property motDesICMS: Integer read FmotDesICMS write SetmotDesICMS;
    property motDesICMSHasValue: Boolean read FmotDesICMSHasValue write FmotDesICMSHasValue;
  end;
  
  TNfeSefazICMS30 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FmodBCST: Integer;
    FmodBCSTHasValue: Boolean;
    FpMVAST: Double;
    FpMVASTHasValue: Boolean;
    FpRedBCST: Double;
    FpRedBCSTHasValue: Boolean;
    FvBCST: Double;
    FvBCSTHasValue: Boolean;
    FpICMSST: Double;
    FpICMSSTHasValue: Boolean;
    FvICMSST: Double;
    FvICMSSTHasValue: Boolean;
    FvBCFCPST: Double;
    FvBCFCPSTHasValue: Boolean;
    FpFCPST: Double;
    FpFCPSTHasValue: Boolean;
    FvFCPST: Double;
    FvFCPSTHasValue: Boolean;
    FvICMSDeson: Double;
    FvICMSDesonHasValue: Boolean;
    FmotDesICMS: Integer;
    FmotDesICMSHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetmodBCST(const Value: Integer);
    procedure SetpMVAST(const Value: Double);
    procedure SetpRedBCST(const Value: Double);
    procedure SetvBCST(const Value: Double);
    procedure SetpICMSST(const Value: Double);
    procedure SetvICMSST(const Value: Double);
    procedure SetvBCFCPST(const Value: Double);
    procedure SetpFCPST(const Value: Double);
    procedure SetvFCPST(const Value: Double);
    procedure SetvICMSDeson(const Value: Double);
    procedure SetmotDesICMS(const Value: Integer);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property modBCST: Integer read FmodBCST write SetmodBCST;
    property modBCSTHasValue: Boolean read FmodBCSTHasValue write FmodBCSTHasValue;
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    property vBCST: Double read FvBCST write SetvBCST;
    property vBCSTHasValue: Boolean read FvBCSTHasValue write FvBCSTHasValue;
    property pICMSST: Double read FpICMSST write SetpICMSST;
    property pICMSSTHasValue: Boolean read FpICMSSTHasValue write FpICMSSTHasValue;
    property vICMSST: Double read FvICMSST write SetvICMSST;
    property vICMSSTHasValue: Boolean read FvICMSSTHasValue write FvICMSSTHasValue;
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
    property vICMSDeson: Double read FvICMSDeson write SetvICMSDeson;
    property vICMSDesonHasValue: Boolean read FvICMSDesonHasValue write FvICMSDesonHasValue;
    property motDesICMS: Integer read FmotDesICMS write SetmotDesICMS;
    property motDesICMSHasValue: Boolean read FmotDesICMSHasValue write FmotDesICMSHasValue;
  end;
  
  TNfeSefazICMS40 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FvICMSDeson: Double;
    FvICMSDesonHasValue: Boolean;
    FmotDesICMS: Integer;
    FmotDesICMSHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetvICMSDeson(const Value: Double);
    procedure SetmotDesICMS(const Value: Integer);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property vICMSDeson: Double read FvICMSDeson write SetvICMSDeson;
    property vICMSDesonHasValue: Boolean read FvICMSDesonHasValue write FvICMSDesonHasValue;
    property motDesICMS: Integer read FmotDesICMS write SetmotDesICMS;
    property motDesICMSHasValue: Boolean read FmotDesICMSHasValue write FmotDesICMSHasValue;
  end;
  
  TNfeSefazICMS51 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FmodBC: Integer;
    FmodBCHasValue: Boolean;
    FpRedBC: Double;
    FpRedBCHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpICMS: Double;
    FpICMSHasValue: Boolean;
    FvICMSOp: Double;
    FvICMSOpHasValue: Boolean;
    FpDif: Double;
    FpDifHasValue: Boolean;
    FvICMSDif: Double;
    FvICMSDifHasValue: Boolean;
    FvICMS: Double;
    FvICMSHasValue: Boolean;
    FvBCFCP: Double;
    FvBCFCPHasValue: Boolean;
    FpFCP: Double;
    FpFCPHasValue: Boolean;
    FvFCP: Double;
    FvFCPHasValue: Boolean;
    FpFCPDif: Double;
    FpFCPDifHasValue: Boolean;
    FvFCPDif: Double;
    FvFCPDifHasValue: Boolean;
    FvFCPEfet: Double;
    FvFCPEfetHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetmodBC(const Value: Integer);
    procedure SetpRedBC(const Value: Double);
    procedure SetvBC(const Value: Double);
    procedure SetpICMS(const Value: Double);
    procedure SetvICMSOp(const Value: Double);
    procedure SetpDif(const Value: Double);
    procedure SetvICMSDif(const Value: Double);
    procedure SetvICMS(const Value: Double);
    procedure SetvBCFCP(const Value: Double);
    procedure SetpFCP(const Value: Double);
    procedure SetvFCP(const Value: Double);
    procedure SetpFCPDif(const Value: Double);
    procedure SetvFCPDif(const Value: Double);
    procedure SetvFCPEfet(const Value: Double);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property modBC: Integer read FmodBC write SetmodBC;
    property modBCHasValue: Boolean read FmodBCHasValue write FmodBCHasValue;
    property pRedBC: Double read FpRedBC write SetpRedBC;
    property pRedBCHasValue: Boolean read FpRedBCHasValue write FpRedBCHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pICMS: Double read FpICMS write SetpICMS;
    property pICMSHasValue: Boolean read FpICMSHasValue write FpICMSHasValue;
    property vICMSOp: Double read FvICMSOp write SetvICMSOp;
    property vICMSOpHasValue: Boolean read FvICMSOpHasValue write FvICMSOpHasValue;
    property pDif: Double read FpDif write SetpDif;
    property pDifHasValue: Boolean read FpDifHasValue write FpDifHasValue;
    property vICMSDif: Double read FvICMSDif write SetvICMSDif;
    property vICMSDifHasValue: Boolean read FvICMSDifHasValue write FvICMSDifHasValue;
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
    property vBCFCP: Double read FvBCFCP write SetvBCFCP;
    property vBCFCPHasValue: Boolean read FvBCFCPHasValue write FvBCFCPHasValue;
    property pFCP: Double read FpFCP write SetpFCP;
    property pFCPHasValue: Boolean read FpFCPHasValue write FpFCPHasValue;
    property vFCP: Double read FvFCP write SetvFCP;
    property vFCPHasValue: Boolean read FvFCPHasValue write FvFCPHasValue;
    property pFCPDif: Double read FpFCPDif write SetpFCPDif;
    property pFCPDifHasValue: Boolean read FpFCPDifHasValue write FpFCPDifHasValue;
    property vFCPDif: Double read FvFCPDif write SetvFCPDif;
    property vFCPDifHasValue: Boolean read FvFCPDifHasValue write FvFCPDifHasValue;
    property vFCPEfet: Double read FvFCPEfet write SetvFCPEfet;
    property vFCPEfetHasValue: Boolean read FvFCPEfetHasValue write FvFCPEfetHasValue;
  end;
  
  TNfeSefazICMS60 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FvBCSTRet: Double;
    FvBCSTRetHasValue: Boolean;
    FpST: Double;
    FpSTHasValue: Boolean;
    FvICMSSubstituto: Double;
    FvICMSSubstitutoHasValue: Boolean;
    FvICMSSTRet: Double;
    FvICMSSTRetHasValue: Boolean;
    FvBCFCPSTRet: Double;
    FvBCFCPSTRetHasValue: Boolean;
    FpFCPSTRet: Double;
    FpFCPSTRetHasValue: Boolean;
    FvFCPSTRet: Double;
    FvFCPSTRetHasValue: Boolean;
    FpRedBCEfet: Double;
    FpRedBCEfetHasValue: Boolean;
    FvBCEfet: Double;
    FvBCEfetHasValue: Boolean;
    FpICMSEfet: Double;
    FpICMSEfetHasValue: Boolean;
    FvICMSEfet: Double;
    FvICMSEfetHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetvBCSTRet(const Value: Double);
    procedure SetpST(const Value: Double);
    procedure SetvICMSSubstituto(const Value: Double);
    procedure SetvICMSSTRet(const Value: Double);
    procedure SetvBCFCPSTRet(const Value: Double);
    procedure SetpFCPSTRet(const Value: Double);
    procedure SetvFCPSTRet(const Value: Double);
    procedure SetpRedBCEfet(const Value: Double);
    procedure SetvBCEfet(const Value: Double);
    procedure SetpICMSEfet(const Value: Double);
    procedure SetvICMSEfet(const Value: Double);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property vBCSTRet: Double read FvBCSTRet write SetvBCSTRet;
    property vBCSTRetHasValue: Boolean read FvBCSTRetHasValue write FvBCSTRetHasValue;
    property pST: Double read FpST write SetpST;
    property pSTHasValue: Boolean read FpSTHasValue write FpSTHasValue;
    property vICMSSubstituto: Double read FvICMSSubstituto write SetvICMSSubstituto;
    property vICMSSubstitutoHasValue: Boolean read FvICMSSubstitutoHasValue write FvICMSSubstitutoHasValue;
    property vICMSSTRet: Double read FvICMSSTRet write SetvICMSSTRet;
    property vICMSSTRetHasValue: Boolean read FvICMSSTRetHasValue write FvICMSSTRetHasValue;
    property vBCFCPSTRet: Double read FvBCFCPSTRet write SetvBCFCPSTRet;
    property vBCFCPSTRetHasValue: Boolean read FvBCFCPSTRetHasValue write FvBCFCPSTRetHasValue;
    property pFCPSTRet: Double read FpFCPSTRet write SetpFCPSTRet;
    property pFCPSTRetHasValue: Boolean read FpFCPSTRetHasValue write FpFCPSTRetHasValue;
    property vFCPSTRet: Double read FvFCPSTRet write SetvFCPSTRet;
    property vFCPSTRetHasValue: Boolean read FvFCPSTRetHasValue write FvFCPSTRetHasValue;
    property pRedBCEfet: Double read FpRedBCEfet write SetpRedBCEfet;
    property pRedBCEfetHasValue: Boolean read FpRedBCEfetHasValue write FpRedBCEfetHasValue;
    property vBCEfet: Double read FvBCEfet write SetvBCEfet;
    property vBCEfetHasValue: Boolean read FvBCEfetHasValue write FvBCEfetHasValue;
    property pICMSEfet: Double read FpICMSEfet write SetpICMSEfet;
    property pICMSEfetHasValue: Boolean read FpICMSEfetHasValue write FpICMSEfetHasValue;
    property vICMSEfet: Double read FvICMSEfet write SetvICMSEfet;
    property vICMSEfetHasValue: Boolean read FvICMSEfetHasValue write FvICMSEfetHasValue;
  end;
  
  TNfeSefazICMS70 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FmodBC: Integer;
    FmodBCHasValue: Boolean;
    FpRedBC: Double;
    FpRedBCHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpICMS: Double;
    FpICMSHasValue: Boolean;
    FvICMS: Double;
    FvICMSHasValue: Boolean;
    FvBCFCP: Double;
    FvBCFCPHasValue: Boolean;
    FpFCP: Double;
    FpFCPHasValue: Boolean;
    FvFCP: Double;
    FvFCPHasValue: Boolean;
    FmodBCST: Integer;
    FmodBCSTHasValue: Boolean;
    FpMVAST: Double;
    FpMVASTHasValue: Boolean;
    FpRedBCST: Double;
    FpRedBCSTHasValue: Boolean;
    FvBCST: Double;
    FvBCSTHasValue: Boolean;
    FpICMSST: Double;
    FpICMSSTHasValue: Boolean;
    FvICMSST: Double;
    FvICMSSTHasValue: Boolean;
    FvBCFCPST: Double;
    FvBCFCPSTHasValue: Boolean;
    FpFCPST: Double;
    FpFCPSTHasValue: Boolean;
    FvFCPST: Double;
    FvFCPSTHasValue: Boolean;
    FvICMSDeson: Double;
    FvICMSDesonHasValue: Boolean;
    FmotDesICMS: Integer;
    FmotDesICMSHasValue: Boolean;
    FvICMSSTDeson: Double;
    FvICMSSTDesonHasValue: Boolean;
    FmotDesICMSST: Integer;
    FmotDesICMSSTHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetmodBC(const Value: Integer);
    procedure SetpRedBC(const Value: Double);
    procedure SetvBC(const Value: Double);
    procedure SetpICMS(const Value: Double);
    procedure SetvICMS(const Value: Double);
    procedure SetvBCFCP(const Value: Double);
    procedure SetpFCP(const Value: Double);
    procedure SetvFCP(const Value: Double);
    procedure SetmodBCST(const Value: Integer);
    procedure SetpMVAST(const Value: Double);
    procedure SetpRedBCST(const Value: Double);
    procedure SetvBCST(const Value: Double);
    procedure SetpICMSST(const Value: Double);
    procedure SetvICMSST(const Value: Double);
    procedure SetvBCFCPST(const Value: Double);
    procedure SetpFCPST(const Value: Double);
    procedure SetvFCPST(const Value: Double);
    procedure SetvICMSDeson(const Value: Double);
    procedure SetmotDesICMS(const Value: Integer);
    procedure SetvICMSSTDeson(const Value: Double);
    procedure SetmotDesICMSST(const Value: Integer);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property modBC: Integer read FmodBC write SetmodBC;
    property modBCHasValue: Boolean read FmodBCHasValue write FmodBCHasValue;
    property pRedBC: Double read FpRedBC write SetpRedBC;
    property pRedBCHasValue: Boolean read FpRedBCHasValue write FpRedBCHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pICMS: Double read FpICMS write SetpICMS;
    property pICMSHasValue: Boolean read FpICMSHasValue write FpICMSHasValue;
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
    property vBCFCP: Double read FvBCFCP write SetvBCFCP;
    property vBCFCPHasValue: Boolean read FvBCFCPHasValue write FvBCFCPHasValue;
    property pFCP: Double read FpFCP write SetpFCP;
    property pFCPHasValue: Boolean read FpFCPHasValue write FpFCPHasValue;
    property vFCP: Double read FvFCP write SetvFCP;
    property vFCPHasValue: Boolean read FvFCPHasValue write FvFCPHasValue;
    property modBCST: Integer read FmodBCST write SetmodBCST;
    property modBCSTHasValue: Boolean read FmodBCSTHasValue write FmodBCSTHasValue;
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    property vBCST: Double read FvBCST write SetvBCST;
    property vBCSTHasValue: Boolean read FvBCSTHasValue write FvBCSTHasValue;
    property pICMSST: Double read FpICMSST write SetpICMSST;
    property pICMSSTHasValue: Boolean read FpICMSSTHasValue write FpICMSSTHasValue;
    property vICMSST: Double read FvICMSST write SetvICMSST;
    property vICMSSTHasValue: Boolean read FvICMSSTHasValue write FvICMSSTHasValue;
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
    property vICMSDeson: Double read FvICMSDeson write SetvICMSDeson;
    property vICMSDesonHasValue: Boolean read FvICMSDesonHasValue write FvICMSDesonHasValue;
    property motDesICMS: Integer read FmotDesICMS write SetmotDesICMS;
    property motDesICMSHasValue: Boolean read FmotDesICMSHasValue write FmotDesICMSHasValue;
    property vICMSSTDeson: Double read FvICMSSTDeson write SetvICMSSTDeson;
    property vICMSSTDesonHasValue: Boolean read FvICMSSTDesonHasValue write FvICMSSTDesonHasValue;
    property motDesICMSST: Integer read FmotDesICMSST write SetmotDesICMSST;
    property motDesICMSSTHasValue: Boolean read FmotDesICMSSTHasValue write FmotDesICMSSTHasValue;
  end;
  
  TNfeSefazICMS90 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FmodBC: Integer;
    FmodBCHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpRedBC: Double;
    FpRedBCHasValue: Boolean;
    FpICMS: Double;
    FpICMSHasValue: Boolean;
    FvICMS: Double;
    FvICMSHasValue: Boolean;
    FvBCFCP: Double;
    FvBCFCPHasValue: Boolean;
    FpFCP: Double;
    FpFCPHasValue: Boolean;
    FvFCP: Double;
    FvFCPHasValue: Boolean;
    FmodBCST: Integer;
    FmodBCSTHasValue: Boolean;
    FpMVAST: Double;
    FpMVASTHasValue: Boolean;
    FpRedBCST: Double;
    FpRedBCSTHasValue: Boolean;
    FvBCST: Double;
    FvBCSTHasValue: Boolean;
    FpICMSST: Double;
    FpICMSSTHasValue: Boolean;
    FvICMSST: Double;
    FvICMSSTHasValue: Boolean;
    FvBCFCPST: Double;
    FvBCFCPSTHasValue: Boolean;
    FpFCPST: Double;
    FpFCPSTHasValue: Boolean;
    FvFCPST: Double;
    FvFCPSTHasValue: Boolean;
    FvICMSDeson: Double;
    FvICMSDesonHasValue: Boolean;
    FmotDesICMS: Integer;
    FmotDesICMSHasValue: Boolean;
    FvICMSSTDeson: Double;
    FvICMSSTDesonHasValue: Boolean;
    FmotDesICMSST: Integer;
    FmotDesICMSSTHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetmodBC(const Value: Integer);
    procedure SetvBC(const Value: Double);
    procedure SetpRedBC(const Value: Double);
    procedure SetpICMS(const Value: Double);
    procedure SetvICMS(const Value: Double);
    procedure SetvBCFCP(const Value: Double);
    procedure SetpFCP(const Value: Double);
    procedure SetvFCP(const Value: Double);
    procedure SetmodBCST(const Value: Integer);
    procedure SetpMVAST(const Value: Double);
    procedure SetpRedBCST(const Value: Double);
    procedure SetvBCST(const Value: Double);
    procedure SetpICMSST(const Value: Double);
    procedure SetvICMSST(const Value: Double);
    procedure SetvBCFCPST(const Value: Double);
    procedure SetpFCPST(const Value: Double);
    procedure SetvFCPST(const Value: Double);
    procedure SetvICMSDeson(const Value: Double);
    procedure SetmotDesICMS(const Value: Integer);
    procedure SetvICMSSTDeson(const Value: Double);
    procedure SetmotDesICMSST(const Value: Integer);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property modBC: Integer read FmodBC write SetmodBC;
    property modBCHasValue: Boolean read FmodBCHasValue write FmodBCHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pRedBC: Double read FpRedBC write SetpRedBC;
    property pRedBCHasValue: Boolean read FpRedBCHasValue write FpRedBCHasValue;
    property pICMS: Double read FpICMS write SetpICMS;
    property pICMSHasValue: Boolean read FpICMSHasValue write FpICMSHasValue;
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
    property vBCFCP: Double read FvBCFCP write SetvBCFCP;
    property vBCFCPHasValue: Boolean read FvBCFCPHasValue write FvBCFCPHasValue;
    property pFCP: Double read FpFCP write SetpFCP;
    property pFCPHasValue: Boolean read FpFCPHasValue write FpFCPHasValue;
    property vFCP: Double read FvFCP write SetvFCP;
    property vFCPHasValue: Boolean read FvFCPHasValue write FvFCPHasValue;
    property modBCST: Integer read FmodBCST write SetmodBCST;
    property modBCSTHasValue: Boolean read FmodBCSTHasValue write FmodBCSTHasValue;
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    property vBCST: Double read FvBCST write SetvBCST;
    property vBCSTHasValue: Boolean read FvBCSTHasValue write FvBCSTHasValue;
    property pICMSST: Double read FpICMSST write SetpICMSST;
    property pICMSSTHasValue: Boolean read FpICMSSTHasValue write FpICMSSTHasValue;
    property vICMSST: Double read FvICMSST write SetvICMSST;
    property vICMSSTHasValue: Boolean read FvICMSSTHasValue write FvICMSSTHasValue;
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
    property vICMSDeson: Double read FvICMSDeson write SetvICMSDeson;
    property vICMSDesonHasValue: Boolean read FvICMSDesonHasValue write FvICMSDesonHasValue;
    property motDesICMS: Integer read FmotDesICMS write SetmotDesICMS;
    property motDesICMSHasValue: Boolean read FmotDesICMSHasValue write FmotDesICMSHasValue;
    property vICMSSTDeson: Double read FvICMSSTDeson write SetvICMSSTDeson;
    property vICMSSTDesonHasValue: Boolean read FvICMSSTDesonHasValue write FvICMSSTDesonHasValue;
    property motDesICMSST: Integer read FmotDesICMSST write SetmotDesICMSST;
    property motDesICMSSTHasValue: Boolean read FmotDesICMSSTHasValue write FmotDesICMSSTHasValue;
  end;
  
  TNfeSefazICMSPart = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FmodBC: Integer;
    FmodBCHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpRedBC: Double;
    FpRedBCHasValue: Boolean;
    FpICMS: Double;
    FpICMSHasValue: Boolean;
    FvICMS: Double;
    FvICMSHasValue: Boolean;
    FmodBCST: Integer;
    FmodBCSTHasValue: Boolean;
    FpMVAST: Double;
    FpMVASTHasValue: Boolean;
    FpRedBCST: Double;
    FpRedBCSTHasValue: Boolean;
    FvBCST: Double;
    FvBCSTHasValue: Boolean;
    FpICMSST: Double;
    FpICMSSTHasValue: Boolean;
    FvICMSST: Double;
    FvICMSSTHasValue: Boolean;
    FpBCOp: Double;
    FpBCOpHasValue: Boolean;
    FUFST: string;
    FUFSTHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetmodBC(const Value: Integer);
    procedure SetvBC(const Value: Double);
    procedure SetpRedBC(const Value: Double);
    procedure SetpICMS(const Value: Double);
    procedure SetvICMS(const Value: Double);
    procedure SetmodBCST(const Value: Integer);
    procedure SetpMVAST(const Value: Double);
    procedure SetpRedBCST(const Value: Double);
    procedure SetvBCST(const Value: Double);
    procedure SetpICMSST(const Value: Double);
    procedure SetvICMSST(const Value: Double);
    procedure SetpBCOp(const Value: Double);
    procedure SetUFST(const Value: string);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property modBC: Integer read FmodBC write SetmodBC;
    property modBCHasValue: Boolean read FmodBCHasValue write FmodBCHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pRedBC: Double read FpRedBC write SetpRedBC;
    property pRedBCHasValue: Boolean read FpRedBCHasValue write FpRedBCHasValue;
    property pICMS: Double read FpICMS write SetpICMS;
    property pICMSHasValue: Boolean read FpICMSHasValue write FpICMSHasValue;
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
    property modBCST: Integer read FmodBCST write SetmodBCST;
    property modBCSTHasValue: Boolean read FmodBCSTHasValue write FmodBCSTHasValue;
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    property vBCST: Double read FvBCST write SetvBCST;
    property vBCSTHasValue: Boolean read FvBCSTHasValue write FvBCSTHasValue;
    property pICMSST: Double read FpICMSST write SetpICMSST;
    property pICMSSTHasValue: Boolean read FpICMSSTHasValue write FpICMSSTHasValue;
    property vICMSST: Double read FvICMSST write SetvICMSST;
    property vICMSSTHasValue: Boolean read FvICMSSTHasValue write FvICMSSTHasValue;
    property pBCOp: Double read FpBCOp write SetpBCOp;
    property pBCOpHasValue: Boolean read FpBCOpHasValue write FpBCOpHasValue;
    property UFST: string read FUFST write SetUFST;
    property UFSTHasValue: Boolean read FUFSTHasValue write FUFSTHasValue;
  end;
  
  TNfeSefazICMSST = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCST: string;
    FCSTHasValue: Boolean;
    FvBCSTRet: Double;
    FvBCSTRetHasValue: Boolean;
    FpST: Double;
    FpSTHasValue: Boolean;
    FvICMSSubstituto: Double;
    FvICMSSubstitutoHasValue: Boolean;
    FvICMSSTRet: Double;
    FvICMSSTRetHasValue: Boolean;
    FvBCFCPSTRet: Double;
    FvBCFCPSTRetHasValue: Boolean;
    FpFCPSTRet: Double;
    FpFCPSTRetHasValue: Boolean;
    FvFCPSTRet: Double;
    FvFCPSTRetHasValue: Boolean;
    FvBCSTDest: Double;
    FvBCSTDestHasValue: Boolean;
    FvICMSSTDest: Double;
    FvICMSSTDestHasValue: Boolean;
    FpRedBCEfet: Double;
    FpRedBCEfetHasValue: Boolean;
    FvBCEfet: Double;
    FvBCEfetHasValue: Boolean;
    FpICMSEfet: Double;
    FpICMSEfetHasValue: Boolean;
    FvICMSEfet: Double;
    FvICMSEfetHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCST(const Value: string);
    procedure SetvBCSTRet(const Value: Double);
    procedure SetpST(const Value: Double);
    procedure SetvICMSSubstituto(const Value: Double);
    procedure SetvICMSSTRet(const Value: Double);
    procedure SetvBCFCPSTRet(const Value: Double);
    procedure SetpFCPSTRet(const Value: Double);
    procedure SetvFCPSTRet(const Value: Double);
    procedure SetvBCSTDest(const Value: Double);
    procedure SetvICMSSTDest(const Value: Double);
    procedure SetpRedBCEfet(const Value: Double);
    procedure SetvBCEfet(const Value: Double);
    procedure SetpICMSEfet(const Value: Double);
    procedure SetvICMSEfet(const Value: Double);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property vBCSTRet: Double read FvBCSTRet write SetvBCSTRet;
    property vBCSTRetHasValue: Boolean read FvBCSTRetHasValue write FvBCSTRetHasValue;
    property pST: Double read FpST write SetpST;
    property pSTHasValue: Boolean read FpSTHasValue write FpSTHasValue;
    property vICMSSubstituto: Double read FvICMSSubstituto write SetvICMSSubstituto;
    property vICMSSubstitutoHasValue: Boolean read FvICMSSubstitutoHasValue write FvICMSSubstitutoHasValue;
    property vICMSSTRet: Double read FvICMSSTRet write SetvICMSSTRet;
    property vICMSSTRetHasValue: Boolean read FvICMSSTRetHasValue write FvICMSSTRetHasValue;
    property vBCFCPSTRet: Double read FvBCFCPSTRet write SetvBCFCPSTRet;
    property vBCFCPSTRetHasValue: Boolean read FvBCFCPSTRetHasValue write FvBCFCPSTRetHasValue;
    property pFCPSTRet: Double read FpFCPSTRet write SetpFCPSTRet;
    property pFCPSTRetHasValue: Boolean read FpFCPSTRetHasValue write FpFCPSTRetHasValue;
    property vFCPSTRet: Double read FvFCPSTRet write SetvFCPSTRet;
    property vFCPSTRetHasValue: Boolean read FvFCPSTRetHasValue write FvFCPSTRetHasValue;
    property vBCSTDest: Double read FvBCSTDest write SetvBCSTDest;
    property vBCSTDestHasValue: Boolean read FvBCSTDestHasValue write FvBCSTDestHasValue;
    property vICMSSTDest: Double read FvICMSSTDest write SetvICMSSTDest;
    property vICMSSTDestHasValue: Boolean read FvICMSSTDestHasValue write FvICMSSTDestHasValue;
    property pRedBCEfet: Double read FpRedBCEfet write SetpRedBCEfet;
    property pRedBCEfetHasValue: Boolean read FpRedBCEfetHasValue write FpRedBCEfetHasValue;
    property vBCEfet: Double read FvBCEfet write SetvBCEfet;
    property vBCEfetHasValue: Boolean read FvBCEfetHasValue write FvBCEfetHasValue;
    property pICMSEfet: Double read FpICMSEfet write SetpICMSEfet;
    property pICMSEfetHasValue: Boolean read FpICMSEfetHasValue write FpICMSEfetHasValue;
    property vICMSEfet: Double read FvICMSEfet write SetvICMSEfet;
    property vICMSEfetHasValue: Boolean read FvICMSEfetHasValue write FvICMSEfetHasValue;
  end;
  
  TNfeSefazICMSSN101 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCSOSN: Integer;
    FCSOSNHasValue: Boolean;
    FpCredSN: Double;
    FpCredSNHasValue: Boolean;
    FvCredICMSSN: Double;
    FvCredICMSSNHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCSOSN(const Value: Integer);
    procedure SetpCredSN(const Value: Double);
    procedure SetvCredICMSSN(const Value: Double);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CSOSN: Integer read FCSOSN write SetCSOSN;
    property CSOSNHasValue: Boolean read FCSOSNHasValue write FCSOSNHasValue;
    property pCredSN: Double read FpCredSN write SetpCredSN;
    property pCredSNHasValue: Boolean read FpCredSNHasValue write FpCredSNHasValue;
    property vCredICMSSN: Double read FvCredICMSSN write SetvCredICMSSN;
    property vCredICMSSNHasValue: Boolean read FvCredICMSSNHasValue write FvCredICMSSNHasValue;
  end;
  
  TNfeSefazICMSSN102 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCSOSN: Integer;
    FCSOSNHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCSOSN(const Value: Integer);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CSOSN: Integer read FCSOSN write SetCSOSN;
    property CSOSNHasValue: Boolean read FCSOSNHasValue write FCSOSNHasValue;
  end;
  
  TNfeSefazICMSSN201 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCSOSN: Integer;
    FCSOSNHasValue: Boolean;
    FmodBCST: Integer;
    FmodBCSTHasValue: Boolean;
    FpMVAST: Double;
    FpMVASTHasValue: Boolean;
    FpRedBCST: Double;
    FpRedBCSTHasValue: Boolean;
    FvBCST: Double;
    FvBCSTHasValue: Boolean;
    FpICMSST: Double;
    FpICMSSTHasValue: Boolean;
    FvICMSST: Double;
    FvICMSSTHasValue: Boolean;
    FvBCFCPST: Double;
    FvBCFCPSTHasValue: Boolean;
    FpFCPST: Double;
    FpFCPSTHasValue: Boolean;
    FvFCPST: Double;
    FvFCPSTHasValue: Boolean;
    FpCredSN: Double;
    FpCredSNHasValue: Boolean;
    FvCredICMSSN: Double;
    FvCredICMSSNHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCSOSN(const Value: Integer);
    procedure SetmodBCST(const Value: Integer);
    procedure SetpMVAST(const Value: Double);
    procedure SetpRedBCST(const Value: Double);
    procedure SetvBCST(const Value: Double);
    procedure SetpICMSST(const Value: Double);
    procedure SetvICMSST(const Value: Double);
    procedure SetvBCFCPST(const Value: Double);
    procedure SetpFCPST(const Value: Double);
    procedure SetvFCPST(const Value: Double);
    procedure SetpCredSN(const Value: Double);
    procedure SetvCredICMSSN(const Value: Double);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CSOSN: Integer read FCSOSN write SetCSOSN;
    property CSOSNHasValue: Boolean read FCSOSNHasValue write FCSOSNHasValue;
    property modBCST: Integer read FmodBCST write SetmodBCST;
    property modBCSTHasValue: Boolean read FmodBCSTHasValue write FmodBCSTHasValue;
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    property vBCST: Double read FvBCST write SetvBCST;
    property vBCSTHasValue: Boolean read FvBCSTHasValue write FvBCSTHasValue;
    property pICMSST: Double read FpICMSST write SetpICMSST;
    property pICMSSTHasValue: Boolean read FpICMSSTHasValue write FpICMSSTHasValue;
    property vICMSST: Double read FvICMSST write SetvICMSST;
    property vICMSSTHasValue: Boolean read FvICMSSTHasValue write FvICMSSTHasValue;
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
    property pCredSN: Double read FpCredSN write SetpCredSN;
    property pCredSNHasValue: Boolean read FpCredSNHasValue write FpCredSNHasValue;
    property vCredICMSSN: Double read FvCredICMSSN write SetvCredICMSSN;
    property vCredICMSSNHasValue: Boolean read FvCredICMSSNHasValue write FvCredICMSSNHasValue;
  end;
  
  TNfeSefazICMSSN202 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCSOSN: Integer;
    FCSOSNHasValue: Boolean;
    FmodBCST: Integer;
    FmodBCSTHasValue: Boolean;
    FpMVAST: Double;
    FpMVASTHasValue: Boolean;
    FpRedBCST: Double;
    FpRedBCSTHasValue: Boolean;
    FvBCST: Double;
    FvBCSTHasValue: Boolean;
    FpICMSST: Double;
    FpICMSSTHasValue: Boolean;
    FvICMSST: Double;
    FvICMSSTHasValue: Boolean;
    FvBCFCPST: Double;
    FvBCFCPSTHasValue: Boolean;
    FpFCPST: Double;
    FpFCPSTHasValue: Boolean;
    FvFCPST: Double;
    FvFCPSTHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCSOSN(const Value: Integer);
    procedure SetmodBCST(const Value: Integer);
    procedure SetpMVAST(const Value: Double);
    procedure SetpRedBCST(const Value: Double);
    procedure SetvBCST(const Value: Double);
    procedure SetpICMSST(const Value: Double);
    procedure SetvICMSST(const Value: Double);
    procedure SetvBCFCPST(const Value: Double);
    procedure SetpFCPST(const Value: Double);
    procedure SetvFCPST(const Value: Double);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CSOSN: Integer read FCSOSN write SetCSOSN;
    property CSOSNHasValue: Boolean read FCSOSNHasValue write FCSOSNHasValue;
    property modBCST: Integer read FmodBCST write SetmodBCST;
    property modBCSTHasValue: Boolean read FmodBCSTHasValue write FmodBCSTHasValue;
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    property vBCST: Double read FvBCST write SetvBCST;
    property vBCSTHasValue: Boolean read FvBCSTHasValue write FvBCSTHasValue;
    property pICMSST: Double read FpICMSST write SetpICMSST;
    property pICMSSTHasValue: Boolean read FpICMSSTHasValue write FpICMSSTHasValue;
    property vICMSST: Double read FvICMSST write SetvICMSST;
    property vICMSSTHasValue: Boolean read FvICMSSTHasValue write FvICMSSTHasValue;
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
  end;
  
  TNfeSefazICMSSN500 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCSOSN: Integer;
    FCSOSNHasValue: Boolean;
    FvBCSTRet: Double;
    FvBCSTRetHasValue: Boolean;
    FpST: Double;
    FpSTHasValue: Boolean;
    FvICMSSubstituto: Double;
    FvICMSSubstitutoHasValue: Boolean;
    FvICMSSTRet: Double;
    FvICMSSTRetHasValue: Boolean;
    FvBCFCPSTRet: Double;
    FvBCFCPSTRetHasValue: Boolean;
    FpFCPSTRet: Double;
    FpFCPSTRetHasValue: Boolean;
    FvFCPSTRet: Double;
    FvFCPSTRetHasValue: Boolean;
    FpRedBCEfet: Double;
    FpRedBCEfetHasValue: Boolean;
    FvBCEfet: Double;
    FvBCEfetHasValue: Boolean;
    FpICMSEfet: Double;
    FpICMSEfetHasValue: Boolean;
    FvICMSEfet: Double;
    FvICMSEfetHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCSOSN(const Value: Integer);
    procedure SetvBCSTRet(const Value: Double);
    procedure SetpST(const Value: Double);
    procedure SetvICMSSubstituto(const Value: Double);
    procedure SetvICMSSTRet(const Value: Double);
    procedure SetvBCFCPSTRet(const Value: Double);
    procedure SetpFCPSTRet(const Value: Double);
    procedure SetvFCPSTRet(const Value: Double);
    procedure SetpRedBCEfet(const Value: Double);
    procedure SetvBCEfet(const Value: Double);
    procedure SetpICMSEfet(const Value: Double);
    procedure SetvICMSEfet(const Value: Double);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CSOSN: Integer read FCSOSN write SetCSOSN;
    property CSOSNHasValue: Boolean read FCSOSNHasValue write FCSOSNHasValue;
    property vBCSTRet: Double read FvBCSTRet write SetvBCSTRet;
    property vBCSTRetHasValue: Boolean read FvBCSTRetHasValue write FvBCSTRetHasValue;
    property pST: Double read FpST write SetpST;
    property pSTHasValue: Boolean read FpSTHasValue write FpSTHasValue;
    property vICMSSubstituto: Double read FvICMSSubstituto write SetvICMSSubstituto;
    property vICMSSubstitutoHasValue: Boolean read FvICMSSubstitutoHasValue write FvICMSSubstitutoHasValue;
    property vICMSSTRet: Double read FvICMSSTRet write SetvICMSSTRet;
    property vICMSSTRetHasValue: Boolean read FvICMSSTRetHasValue write FvICMSSTRetHasValue;
    property vBCFCPSTRet: Double read FvBCFCPSTRet write SetvBCFCPSTRet;
    property vBCFCPSTRetHasValue: Boolean read FvBCFCPSTRetHasValue write FvBCFCPSTRetHasValue;
    property pFCPSTRet: Double read FpFCPSTRet write SetpFCPSTRet;
    property pFCPSTRetHasValue: Boolean read FpFCPSTRetHasValue write FpFCPSTRetHasValue;
    property vFCPSTRet: Double read FvFCPSTRet write SetvFCPSTRet;
    property vFCPSTRetHasValue: Boolean read FvFCPSTRetHasValue write FvFCPSTRetHasValue;
    property pRedBCEfet: Double read FpRedBCEfet write SetpRedBCEfet;
    property pRedBCEfetHasValue: Boolean read FpRedBCEfetHasValue write FpRedBCEfetHasValue;
    property vBCEfet: Double read FvBCEfet write SetvBCEfet;
    property vBCEfetHasValue: Boolean read FvBCEfetHasValue write FvBCEfetHasValue;
    property pICMSEfet: Double read FpICMSEfet write SetpICMSEfet;
    property pICMSEfetHasValue: Boolean read FpICMSEfetHasValue write FpICMSEfetHasValue;
    property vICMSEfet: Double read FvICMSEfet write SetvICMSEfet;
    property vICMSEfetHasValue: Boolean read FvICMSEfetHasValue write FvICMSEfetHasValue;
  end;
  
  TNfeSefazICMSSN900 = class
  private
    Forig: Integer;
    ForigHasValue: Boolean;
    FCSOSN: Integer;
    FCSOSNHasValue: Boolean;
    FmodBC: Integer;
    FmodBCHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpRedBC: Double;
    FpRedBCHasValue: Boolean;
    FpICMS: Double;
    FpICMSHasValue: Boolean;
    FvICMS: Double;
    FvICMSHasValue: Boolean;
    FmodBCST: Integer;
    FmodBCSTHasValue: Boolean;
    FpMVAST: Double;
    FpMVASTHasValue: Boolean;
    FpRedBCST: Double;
    FpRedBCSTHasValue: Boolean;
    FvBCST: Double;
    FvBCSTHasValue: Boolean;
    FpICMSST: Double;
    FpICMSSTHasValue: Boolean;
    FvICMSST: Double;
    FvICMSSTHasValue: Boolean;
    FvBCFCPST: Double;
    FvBCFCPSTHasValue: Boolean;
    FpFCPST: Double;
    FpFCPSTHasValue: Boolean;
    FvFCPST: Double;
    FvFCPSTHasValue: Boolean;
    FpCredSN: Double;
    FpCredSNHasValue: Boolean;
    FvCredICMSSN: Double;
    FvCredICMSSNHasValue: Boolean;
    procedure Setorig(const Value: Integer);
    procedure SetCSOSN(const Value: Integer);
    procedure SetmodBC(const Value: Integer);
    procedure SetvBC(const Value: Double);
    procedure SetpRedBC(const Value: Double);
    procedure SetpICMS(const Value: Double);
    procedure SetvICMS(const Value: Double);
    procedure SetmodBCST(const Value: Integer);
    procedure SetpMVAST(const Value: Double);
    procedure SetpRedBCST(const Value: Double);
    procedure SetvBCST(const Value: Double);
    procedure SetpICMSST(const Value: Double);
    procedure SetvICMSST(const Value: Double);
    procedure SetvBCFCPST(const Value: Double);
    procedure SetpFCPST(const Value: Double);
    procedure SetvFCPST(const Value: Double);
    procedure SetpCredSN(const Value: Double);
    procedure SetvCredICMSSN(const Value: Double);
  public
    property orig: Integer read Forig write Setorig;
    property origHasValue: Boolean read ForigHasValue write ForigHasValue;
    property CSOSN: Integer read FCSOSN write SetCSOSN;
    property CSOSNHasValue: Boolean read FCSOSNHasValue write FCSOSNHasValue;
    property modBC: Integer read FmodBC write SetmodBC;
    property modBCHasValue: Boolean read FmodBCHasValue write FmodBCHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pRedBC: Double read FpRedBC write SetpRedBC;
    property pRedBCHasValue: Boolean read FpRedBCHasValue write FpRedBCHasValue;
    property pICMS: Double read FpICMS write SetpICMS;
    property pICMSHasValue: Boolean read FpICMSHasValue write FpICMSHasValue;
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
    property modBCST: Integer read FmodBCST write SetmodBCST;
    property modBCSTHasValue: Boolean read FmodBCSTHasValue write FmodBCSTHasValue;
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    property vBCST: Double read FvBCST write SetvBCST;
    property vBCSTHasValue: Boolean read FvBCSTHasValue write FvBCSTHasValue;
    property pICMSST: Double read FpICMSST write SetpICMSST;
    property pICMSSTHasValue: Boolean read FpICMSSTHasValue write FpICMSSTHasValue;
    property vICMSST: Double read FvICMSST write SetvICMSST;
    property vICMSSTHasValue: Boolean read FvICMSSTHasValue write FvICMSSTHasValue;
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
    property pCredSN: Double read FpCredSN write SetpCredSN;
    property pCredSNHasValue: Boolean read FpCredSNHasValue write FpCredSNHasValue;
    property vCredICMSSN: Double read FvCredICMSSN write SetvCredICMSSN;
    property vCredICMSSNHasValue: Boolean read FvCredICMSSNHasValue write FvCredICMSSNHasValue;
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
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpIPI: Double;
    FpIPIHasValue: Boolean;
    FqUnid: Double;
    FqUnidHasValue: Boolean;
    FvUnid: Double;
    FvUnidHasValue: Boolean;
    FvIPI: Double;
    FvIPIHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetvBC(const Value: Double);
    procedure SetpIPI(const Value: Double);
    procedure SetqUnid(const Value: Double);
    procedure SetvUnid(const Value: Double);
    procedure SetvIPI(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pIPI: Double read FpIPI write SetpIPI;
    property pIPIHasValue: Boolean read FpIPIHasValue write FpIPIHasValue;
    property qUnid: Double read FqUnid write SetqUnid;
    property qUnidHasValue: Boolean read FqUnidHasValue write FqUnidHasValue;
    property vUnid: Double read FvUnid write SetvUnid;
    property vUnidHasValue: Boolean read FvUnidHasValue write FvUnidHasValue;
    property vIPI: Double read FvIPI write SetvIPI;
    property vIPIHasValue: Boolean read FvIPIHasValue write FvIPIHasValue;
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
    FcSelo: string;
    FcSeloHasValue: Boolean;
    FqSelo: Integer;
    FqSeloHasValue: Boolean;
    FcEnq: string;
    FcEnqHasValue: Boolean;
    FIPITrib: TNfeSefazIPITrib;
    FIPINT: TNfeSefazIPINT;
    procedure SetCNPJProd(const Value: string);
    procedure SetcSelo(const Value: string);
    procedure SetqSelo(const Value: Integer);
    procedure SetcEnq(const Value: string);
    procedure SetIPITrib(const Value: TNfeSefazIPITrib);
    procedure SetIPINT(const Value: TNfeSefazIPINT);
  public
    destructor Destroy; override;
    property CNPJProd: string read FCNPJProd write SetCNPJProd;
    property CNPJProdHasValue: Boolean read FCNPJProdHasValue write FCNPJProdHasValue;
    property cSelo: string read FcSelo write SetcSelo;
    property cSeloHasValue: Boolean read FcSeloHasValue write FcSeloHasValue;
    property qSelo: Integer read FqSelo write SetqSelo;
    property qSeloHasValue: Boolean read FqSeloHasValue write FqSeloHasValue;
    property cEnq: string read FcEnq write SetcEnq;
    property cEnqHasValue: Boolean read FcEnqHasValue write FcEnqHasValue;
    property IPITrib: TNfeSefazIPITrib read FIPITrib write SetIPITrib;
    property IPINT: TNfeSefazIPINT read FIPINT write SetIPINT;
  end;
  
  TNfeSefazII = class
  private
    FvBC: Double;
    FvBCHasValue: Boolean;
    FvDespAdu: Double;
    FvDespAduHasValue: Boolean;
    FvII: Double;
    FvIIHasValue: Boolean;
    FvIOF: Double;
    FvIOFHasValue: Boolean;
    procedure SetvBC(const Value: Double);
    procedure SetvDespAdu(const Value: Double);
    procedure SetvII(const Value: Double);
    procedure SetvIOF(const Value: Double);
  public
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property vDespAdu: Double read FvDespAdu write SetvDespAdu;
    property vDespAduHasValue: Boolean read FvDespAduHasValue write FvDespAduHasValue;
    property vII: Double read FvII write SetvII;
    property vIIHasValue: Boolean read FvIIHasValue write FvIIHasValue;
    property vIOF: Double read FvIOF write SetvIOF;
    property vIOFHasValue: Boolean read FvIOFHasValue write FvIOFHasValue;
  end;
  
  TNfeSefazISSQN = class
  private
    FvBC: Double;
    FvBCHasValue: Boolean;
    FvAliq: Double;
    FvAliqHasValue: Boolean;
    FvISSQN: Double;
    FvISSQNHasValue: Boolean;
    FcMunFG: Integer;
    FcMunFGHasValue: Boolean;
    FcListServ: string;
    FcListServHasValue: Boolean;
    FvDeducao: Double;
    FvDeducaoHasValue: Boolean;
    FvOutro: Double;
    FvOutroHasValue: Boolean;
    FvDescIncond: Double;
    FvDescIncondHasValue: Boolean;
    FvDescCond: Double;
    FvDescCondHasValue: Boolean;
    FvISSRet: Double;
    FvISSRetHasValue: Boolean;
    FindISS: Integer;
    FindISSHasValue: Boolean;
    FcServico: string;
    FcServicoHasValue: Boolean;
    FcMun: Integer;
    FcMunHasValue: Boolean;
    FcPais: Integer;
    FcPaisHasValue: Boolean;
    FnProcesso: string;
    FnProcessoHasValue: Boolean;
    FindIncentivo: Integer;
    FindIncentivoHasValue: Boolean;
    procedure SetvBC(const Value: Double);
    procedure SetvAliq(const Value: Double);
    procedure SetvISSQN(const Value: Double);
    procedure SetcMunFG(const Value: Integer);
    procedure SetcListServ(const Value: string);
    procedure SetvDeducao(const Value: Double);
    procedure SetvOutro(const Value: Double);
    procedure SetvDescIncond(const Value: Double);
    procedure SetvDescCond(const Value: Double);
    procedure SetvISSRet(const Value: Double);
    procedure SetindISS(const Value: Integer);
    procedure SetcServico(const Value: string);
    procedure SetcMun(const Value: Integer);
    procedure SetcPais(const Value: Integer);
    procedure SetnProcesso(const Value: string);
    procedure SetindIncentivo(const Value: Integer);
  public
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property vAliq: Double read FvAliq write SetvAliq;
    property vAliqHasValue: Boolean read FvAliqHasValue write FvAliqHasValue;
    property vISSQN: Double read FvISSQN write SetvISSQN;
    property vISSQNHasValue: Boolean read FvISSQNHasValue write FvISSQNHasValue;
    property cMunFG: Integer read FcMunFG write SetcMunFG;
    property cMunFGHasValue: Boolean read FcMunFGHasValue write FcMunFGHasValue;
    property cListServ: string read FcListServ write SetcListServ;
    property cListServHasValue: Boolean read FcListServHasValue write FcListServHasValue;
    property vDeducao: Double read FvDeducao write SetvDeducao;
    property vDeducaoHasValue: Boolean read FvDeducaoHasValue write FvDeducaoHasValue;
    property vOutro: Double read FvOutro write SetvOutro;
    property vOutroHasValue: Boolean read FvOutroHasValue write FvOutroHasValue;
    property vDescIncond: Double read FvDescIncond write SetvDescIncond;
    property vDescIncondHasValue: Boolean read FvDescIncondHasValue write FvDescIncondHasValue;
    property vDescCond: Double read FvDescCond write SetvDescCond;
    property vDescCondHasValue: Boolean read FvDescCondHasValue write FvDescCondHasValue;
    property vISSRet: Double read FvISSRet write SetvISSRet;
    property vISSRetHasValue: Boolean read FvISSRetHasValue write FvISSRetHasValue;
    property indISS: Integer read FindISS write SetindISS;
    property indISSHasValue: Boolean read FindISSHasValue write FindISSHasValue;
    property cServico: string read FcServico write SetcServico;
    property cServicoHasValue: Boolean read FcServicoHasValue write FcServicoHasValue;
    property cMun: Integer read FcMun write SetcMun;
    property cMunHasValue: Boolean read FcMunHasValue write FcMunHasValue;
    property cPais: Integer read FcPais write SetcPais;
    property cPaisHasValue: Boolean read FcPaisHasValue write FcPaisHasValue;
    property nProcesso: string read FnProcesso write SetnProcesso;
    property nProcessoHasValue: Boolean read FnProcessoHasValue write FnProcessoHasValue;
    property indIncentivo: Integer read FindIncentivo write SetindIncentivo;
    property indIncentivoHasValue: Boolean read FindIncentivoHasValue write FindIncentivoHasValue;
  end;
  
  TNfeSefazPISAliq = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpPIS: Double;
    FpPISHasValue: Boolean;
    FvPIS: Double;
    FvPISHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetvBC(const Value: Double);
    procedure SetpPIS(const Value: Double);
    procedure SetvPIS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pPIS: Double read FpPIS write SetpPIS;
    property pPISHasValue: Boolean read FpPISHasValue write FpPISHasValue;
    property vPIS: Double read FvPIS write SetvPIS;
    property vPISHasValue: Boolean read FvPISHasValue write FvPISHasValue;
  end;
  
  TNfeSefazPISQtde = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FqBCProd: Double;
    FqBCProdHasValue: Boolean;
    FvAliqProd: Double;
    FvAliqProdHasValue: Boolean;
    FvPIS: Double;
    FvPISHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetqBCProd(const Value: Double);
    procedure SetvAliqProd(const Value: Double);
    procedure SetvPIS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property qBCProd: Double read FqBCProd write SetqBCProd;
    property qBCProdHasValue: Boolean read FqBCProdHasValue write FqBCProdHasValue;
    property vAliqProd: Double read FvAliqProd write SetvAliqProd;
    property vAliqProdHasValue: Boolean read FvAliqProdHasValue write FvAliqProdHasValue;
    property vPIS: Double read FvPIS write SetvPIS;
    property vPISHasValue: Boolean read FvPISHasValue write FvPISHasValue;
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
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpPIS: Double;
    FpPISHasValue: Boolean;
    FqBCProd: Double;
    FqBCProdHasValue: Boolean;
    FvAliqProd: Double;
    FvAliqProdHasValue: Boolean;
    FvPIS: Double;
    FvPISHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetvBC(const Value: Double);
    procedure SetpPIS(const Value: Double);
    procedure SetqBCProd(const Value: Double);
    procedure SetvAliqProd(const Value: Double);
    procedure SetvPIS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pPIS: Double read FpPIS write SetpPIS;
    property pPISHasValue: Boolean read FpPISHasValue write FpPISHasValue;
    property qBCProd: Double read FqBCProd write SetqBCProd;
    property qBCProdHasValue: Boolean read FqBCProdHasValue write FqBCProdHasValue;
    property vAliqProd: Double read FvAliqProd write SetvAliqProd;
    property vAliqProdHasValue: Boolean read FvAliqProdHasValue write FvAliqProdHasValue;
    property vPIS: Double read FvPIS write SetvPIS;
    property vPISHasValue: Boolean read FvPISHasValue write FvPISHasValue;
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
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpPIS: Double;
    FpPISHasValue: Boolean;
    FqBCProd: Double;
    FqBCProdHasValue: Boolean;
    FvAliqProd: Double;
    FvAliqProdHasValue: Boolean;
    FvPIS: Double;
    FvPISHasValue: Boolean;
    FindSomaPISST: Integer;
    FindSomaPISSTHasValue: Boolean;
    procedure SetvBC(const Value: Double);
    procedure SetpPIS(const Value: Double);
    procedure SetqBCProd(const Value: Double);
    procedure SetvAliqProd(const Value: Double);
    procedure SetvPIS(const Value: Double);
    procedure SetindSomaPISST(const Value: Integer);
  public
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pPIS: Double read FpPIS write SetpPIS;
    property pPISHasValue: Boolean read FpPISHasValue write FpPISHasValue;
    property qBCProd: Double read FqBCProd write SetqBCProd;
    property qBCProdHasValue: Boolean read FqBCProdHasValue write FqBCProdHasValue;
    property vAliqProd: Double read FvAliqProd write SetvAliqProd;
    property vAliqProdHasValue: Boolean read FvAliqProdHasValue write FvAliqProdHasValue;
    property vPIS: Double read FvPIS write SetvPIS;
    property vPISHasValue: Boolean read FvPISHasValue write FvPISHasValue;
    property indSomaPISST: Integer read FindSomaPISST write SetindSomaPISST;
    property indSomaPISSTHasValue: Boolean read FindSomaPISSTHasValue write FindSomaPISSTHasValue;
  end;
  
  TNfeSefazCOFINSAliq = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpCOFINS: Double;
    FpCOFINSHasValue: Boolean;
    FvCOFINS: Double;
    FvCOFINSHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetvBC(const Value: Double);
    procedure SetpCOFINS(const Value: Double);
    procedure SetvCOFINS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pCOFINS: Double read FpCOFINS write SetpCOFINS;
    property pCOFINSHasValue: Boolean read FpCOFINSHasValue write FpCOFINSHasValue;
    property vCOFINS: Double read FvCOFINS write SetvCOFINS;
    property vCOFINSHasValue: Boolean read FvCOFINSHasValue write FvCOFINSHasValue;
  end;
  
  TNfeSefazCOFINSQtde = class
  private
    FCST: string;
    FCSTHasValue: Boolean;
    FqBCProd: Double;
    FqBCProdHasValue: Boolean;
    FvAliqProd: Double;
    FvAliqProdHasValue: Boolean;
    FvCOFINS: Double;
    FvCOFINSHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetqBCProd(const Value: Double);
    procedure SetvAliqProd(const Value: Double);
    procedure SetvCOFINS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property qBCProd: Double read FqBCProd write SetqBCProd;
    property qBCProdHasValue: Boolean read FqBCProdHasValue write FqBCProdHasValue;
    property vAliqProd: Double read FvAliqProd write SetvAliqProd;
    property vAliqProdHasValue: Boolean read FvAliqProdHasValue write FvAliqProdHasValue;
    property vCOFINS: Double read FvCOFINS write SetvCOFINS;
    property vCOFINSHasValue: Boolean read FvCOFINSHasValue write FvCOFINSHasValue;
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
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpCOFINS: Double;
    FpCOFINSHasValue: Boolean;
    FqBCProd: Double;
    FqBCProdHasValue: Boolean;
    FvAliqProd: Double;
    FvAliqProdHasValue: Boolean;
    FvCOFINS: Double;
    FvCOFINSHasValue: Boolean;
    procedure SetCST(const Value: string);
    procedure SetvBC(const Value: Double);
    procedure SetpCOFINS(const Value: Double);
    procedure SetqBCProd(const Value: Double);
    procedure SetvAliqProd(const Value: Double);
    procedure SetvCOFINS(const Value: Double);
  public
    property CST: string read FCST write SetCST;
    property CSTHasValue: Boolean read FCSTHasValue write FCSTHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pCOFINS: Double read FpCOFINS write SetpCOFINS;
    property pCOFINSHasValue: Boolean read FpCOFINSHasValue write FpCOFINSHasValue;
    property qBCProd: Double read FqBCProd write SetqBCProd;
    property qBCProdHasValue: Boolean read FqBCProdHasValue write FqBCProdHasValue;
    property vAliqProd: Double read FvAliqProd write SetvAliqProd;
    property vAliqProdHasValue: Boolean read FvAliqProdHasValue write FvAliqProdHasValue;
    property vCOFINS: Double read FvCOFINS write SetvCOFINS;
    property vCOFINSHasValue: Boolean read FvCOFINSHasValue write FvCOFINSHasValue;
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
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpCOFINS: Double;
    FpCOFINSHasValue: Boolean;
    FqBCProd: Double;
    FqBCProdHasValue: Boolean;
    FvAliqProd: Double;
    FvAliqProdHasValue: Boolean;
    FvCOFINS: Double;
    FvCOFINSHasValue: Boolean;
    FindSomaCOFINSST: Integer;
    FindSomaCOFINSSTHasValue: Boolean;
    procedure SetvBC(const Value: Double);
    procedure SetpCOFINS(const Value: Double);
    procedure SetqBCProd(const Value: Double);
    procedure SetvAliqProd(const Value: Double);
    procedure SetvCOFINS(const Value: Double);
    procedure SetindSomaCOFINSST(const Value: Integer);
  public
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property pCOFINS: Double read FpCOFINS write SetpCOFINS;
    property pCOFINSHasValue: Boolean read FpCOFINSHasValue write FpCOFINSHasValue;
    property qBCProd: Double read FqBCProd write SetqBCProd;
    property qBCProdHasValue: Boolean read FqBCProdHasValue write FqBCProdHasValue;
    property vAliqProd: Double read FvAliqProd write SetvAliqProd;
    property vAliqProdHasValue: Boolean read FvAliqProdHasValue write FvAliqProdHasValue;
    property vCOFINS: Double read FvCOFINS write SetvCOFINS;
    property vCOFINSHasValue: Boolean read FvCOFINSHasValue write FvCOFINSHasValue;
    property indSomaCOFINSST: Integer read FindSomaCOFINSST write SetindSomaCOFINSST;
    property indSomaCOFINSSTHasValue: Boolean read FindSomaCOFINSSTHasValue write FindSomaCOFINSSTHasValue;
  end;
  
  TNfeSefazICMSUFDest = class
  private
    FvBCUFDest: Double;
    FvBCUFDestHasValue: Boolean;
    FvBCFCPUFDest: Double;
    FvBCFCPUFDestHasValue: Boolean;
    FpFCPUFDest: Double;
    FpFCPUFDestHasValue: Boolean;
    FpICMSUFDest: Double;
    FpICMSUFDestHasValue: Boolean;
    FpICMSInter: Double;
    FpICMSInterHasValue: Boolean;
    FpICMSInterPart: Double;
    FpICMSInterPartHasValue: Boolean;
    FvFCPUFDest: Double;
    FvFCPUFDestHasValue: Boolean;
    FvICMSUFDest: Double;
    FvICMSUFDestHasValue: Boolean;
    FvICMSUFRemet: Double;
    FvICMSUFRemetHasValue: Boolean;
    procedure SetvBCUFDest(const Value: Double);
    procedure SetvBCFCPUFDest(const Value: Double);
    procedure SetpFCPUFDest(const Value: Double);
    procedure SetpICMSUFDest(const Value: Double);
    procedure SetpICMSInter(const Value: Double);
    procedure SetpICMSInterPart(const Value: Double);
    procedure SetvFCPUFDest(const Value: Double);
    procedure SetvICMSUFDest(const Value: Double);
    procedure SetvICMSUFRemet(const Value: Double);
  public
    property vBCUFDest: Double read FvBCUFDest write SetvBCUFDest;
    property vBCUFDestHasValue: Boolean read FvBCUFDestHasValue write FvBCUFDestHasValue;
    property vBCFCPUFDest: Double read FvBCFCPUFDest write SetvBCFCPUFDest;
    property vBCFCPUFDestHasValue: Boolean read FvBCFCPUFDestHasValue write FvBCFCPUFDestHasValue;
    property pFCPUFDest: Double read FpFCPUFDest write SetpFCPUFDest;
    property pFCPUFDestHasValue: Boolean read FpFCPUFDestHasValue write FpFCPUFDestHasValue;
    property pICMSUFDest: Double read FpICMSUFDest write SetpICMSUFDest;
    property pICMSUFDestHasValue: Boolean read FpICMSUFDestHasValue write FpICMSUFDestHasValue;
    property pICMSInter: Double read FpICMSInter write SetpICMSInter;
    property pICMSInterHasValue: Boolean read FpICMSInterHasValue write FpICMSInterHasValue;
    property pICMSInterPart: Double read FpICMSInterPart write SetpICMSInterPart;
    property pICMSInterPartHasValue: Boolean read FpICMSInterPartHasValue write FpICMSInterPartHasValue;
    property vFCPUFDest: Double read FvFCPUFDest write SetvFCPUFDest;
    property vFCPUFDestHasValue: Boolean read FvFCPUFDestHasValue write FvFCPUFDestHasValue;
    property vICMSUFDest: Double read FvICMSUFDest write SetvICMSUFDest;
    property vICMSUFDestHasValue: Boolean read FvICMSUFDestHasValue write FvICMSUFDestHasValue;
    property vICMSUFRemet: Double read FvICMSUFRemet write SetvICMSUFRemet;
    property vICMSUFRemetHasValue: Boolean read FvICMSUFRemetHasValue write FvICMSUFRemetHasValue;
  end;
  
  TNfeSefazImposto = class
  private
    FvTotTrib: Double;
    FvTotTribHasValue: Boolean;
    FICMS: TNfeSefazICMS;
    FIPI: TNfeSefazIpi;
    FII: TNfeSefazII;
    FISSQN: TNfeSefazISSQN;
    FPIS: TNfeSefazPIS;
    FPISST: TNfeSefazPISST;
    FCOFINS: TNfeSefazCOFINS;
    FCOFINSST: TNfeSefazCOFINSST;
    FICMSUFDest: TNfeSefazICMSUFDest;
    procedure SetvTotTrib(const Value: Double);
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
    property vTotTrib: Double read FvTotTrib write SetvTotTrib;
    property vTotTribHasValue: Boolean read FvTotTribHasValue write FvTotTribHasValue;
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
    FvIPIDevol: Double;
    FvIPIDevolHasValue: Boolean;
    procedure SetvIPIDevol(const Value: Double);
  public
    property vIPIDevol: Double read FvIPIDevol write SetvIPIDevol;
    property vIPIDevolHasValue: Boolean read FvIPIDevolHasValue write FvIPIDevolHasValue;
  end;
  
  TNfeSefazImpostoDevol = class
  private
    FpDevol: Double;
    FpDevolHasValue: Boolean;
    FIPI: TNfeSefazImpostoDevolIPI;
    procedure SetpDevol(const Value: Double);
    procedure SetIPI(const Value: TNfeSefazImpostoDevolIPI);
  public
    destructor Destroy; override;
    property pDevol: Double read FpDevol write SetpDevol;
    property pDevolHasValue: Boolean read FpDevolHasValue write FpDevolHasValue;
    property IPI: TNfeSefazImpostoDevolIPI read FIPI write SetIPI;
  end;
  
  TNfeSefazDet = class
  private
    FnItem: Integer;
    FnItemHasValue: Boolean;
    Fprod: TNfeSefazProd;
    Fimposto: TNfeSefazImposto;
    FimpostoDevol: TNfeSefazImpostoDevol;
    FinfAdProd: string;
    FinfAdProdHasValue: Boolean;
    procedure SetnItem(const Value: Integer);
    procedure Setprod(const Value: TNfeSefazProd);
    procedure Setimposto(const Value: TNfeSefazImposto);
    procedure SetimpostoDevol(const Value: TNfeSefazImpostoDevol);
    procedure SetinfAdProd(const Value: string);
  public
    destructor Destroy; override;
    property nItem: Integer read FnItem write SetnItem;
    property nItemHasValue: Boolean read FnItemHasValue write FnItemHasValue;
    property prod: TNfeSefazProd read Fprod write Setprod;
    property imposto: TNfeSefazImposto read Fimposto write Setimposto;
    property impostoDevol: TNfeSefazImpostoDevol read FimpostoDevol write SetimpostoDevol;
    property infAdProd: string read FinfAdProd write SetinfAdProd;
    property infAdProdHasValue: Boolean read FinfAdProdHasValue write FinfAdProdHasValue;
  end;
  
  TNfeSefazDetList = class(TObjectList<TNfeSefazDet>)
  end;
  
  TNfeSefazICMSTot = class
  private
    FvBC: Double;
    FvBCHasValue: Boolean;
    FvICMS: Double;
    FvICMSHasValue: Boolean;
    FvICMSDeson: Double;
    FvICMSDesonHasValue: Boolean;
    FvFCPUFDest: Double;
    FvFCPUFDestHasValue: Boolean;
    FvICMSUFDest: Double;
    FvICMSUFDestHasValue: Boolean;
    FvICMSUFRemet: Double;
    FvICMSUFRemetHasValue: Boolean;
    FvFCP: Double;
    FvFCPHasValue: Boolean;
    FvBCST: Double;
    FvBCSTHasValue: Boolean;
    FvST: Double;
    FvSTHasValue: Boolean;
    FvFCPST: Double;
    FvFCPSTHasValue: Boolean;
    FvFCPSTRet: Double;
    FvFCPSTRetHasValue: Boolean;
    FvProd: Double;
    FvProdHasValue: Boolean;
    FvFrete: Double;
    FvFreteHasValue: Boolean;
    FvSeg: Double;
    FvSegHasValue: Boolean;
    FvDesc: Double;
    FvDescHasValue: Boolean;
    FvII: Double;
    FvIIHasValue: Boolean;
    FvIPI: Double;
    FvIPIHasValue: Boolean;
    FvIPIDevol: Double;
    FvIPIDevolHasValue: Boolean;
    FvPIS: Double;
    FvPISHasValue: Boolean;
    FvCOFINS: Double;
    FvCOFINSHasValue: Boolean;
    FvOutro: Double;
    FvOutroHasValue: Boolean;
    FvNF: Double;
    FvNFHasValue: Boolean;
    FvTotTrib: Double;
    FvTotTribHasValue: Boolean;
    procedure SetvBC(const Value: Double);
    procedure SetvICMS(const Value: Double);
    procedure SetvICMSDeson(const Value: Double);
    procedure SetvFCPUFDest(const Value: Double);
    procedure SetvICMSUFDest(const Value: Double);
    procedure SetvICMSUFRemet(const Value: Double);
    procedure SetvFCP(const Value: Double);
    procedure SetvBCST(const Value: Double);
    procedure SetvST(const Value: Double);
    procedure SetvFCPST(const Value: Double);
    procedure SetvFCPSTRet(const Value: Double);
    procedure SetvProd(const Value: Double);
    procedure SetvFrete(const Value: Double);
    procedure SetvSeg(const Value: Double);
    procedure SetvDesc(const Value: Double);
    procedure SetvII(const Value: Double);
    procedure SetvIPI(const Value: Double);
    procedure SetvIPIDevol(const Value: Double);
    procedure SetvPIS(const Value: Double);
    procedure SetvCOFINS(const Value: Double);
    procedure SetvOutro(const Value: Double);
    procedure SetvNF(const Value: Double);
    procedure SetvTotTrib(const Value: Double);
  public
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
    property vICMSDeson: Double read FvICMSDeson write SetvICMSDeson;
    property vICMSDesonHasValue: Boolean read FvICMSDesonHasValue write FvICMSDesonHasValue;
    property vFCPUFDest: Double read FvFCPUFDest write SetvFCPUFDest;
    property vFCPUFDestHasValue: Boolean read FvFCPUFDestHasValue write FvFCPUFDestHasValue;
    property vICMSUFDest: Double read FvICMSUFDest write SetvICMSUFDest;
    property vICMSUFDestHasValue: Boolean read FvICMSUFDestHasValue write FvICMSUFDestHasValue;
    property vICMSUFRemet: Double read FvICMSUFRemet write SetvICMSUFRemet;
    property vICMSUFRemetHasValue: Boolean read FvICMSUFRemetHasValue write FvICMSUFRemetHasValue;
    property vFCP: Double read FvFCP write SetvFCP;
    property vFCPHasValue: Boolean read FvFCPHasValue write FvFCPHasValue;
    property vBCST: Double read FvBCST write SetvBCST;
    property vBCSTHasValue: Boolean read FvBCSTHasValue write FvBCSTHasValue;
    property vST: Double read FvST write SetvST;
    property vSTHasValue: Boolean read FvSTHasValue write FvSTHasValue;
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
    property vFCPSTRet: Double read FvFCPSTRet write SetvFCPSTRet;
    property vFCPSTRetHasValue: Boolean read FvFCPSTRetHasValue write FvFCPSTRetHasValue;
    property vProd: Double read FvProd write SetvProd;
    property vProdHasValue: Boolean read FvProdHasValue write FvProdHasValue;
    property vFrete: Double read FvFrete write SetvFrete;
    property vFreteHasValue: Boolean read FvFreteHasValue write FvFreteHasValue;
    property vSeg: Double read FvSeg write SetvSeg;
    property vSegHasValue: Boolean read FvSegHasValue write FvSegHasValue;
    property vDesc: Double read FvDesc write SetvDesc;
    property vDescHasValue: Boolean read FvDescHasValue write FvDescHasValue;
    property vII: Double read FvII write SetvII;
    property vIIHasValue: Boolean read FvIIHasValue write FvIIHasValue;
    property vIPI: Double read FvIPI write SetvIPI;
    property vIPIHasValue: Boolean read FvIPIHasValue write FvIPIHasValue;
    property vIPIDevol: Double read FvIPIDevol write SetvIPIDevol;
    property vIPIDevolHasValue: Boolean read FvIPIDevolHasValue write FvIPIDevolHasValue;
    property vPIS: Double read FvPIS write SetvPIS;
    property vPISHasValue: Boolean read FvPISHasValue write FvPISHasValue;
    property vCOFINS: Double read FvCOFINS write SetvCOFINS;
    property vCOFINSHasValue: Boolean read FvCOFINSHasValue write FvCOFINSHasValue;
    property vOutro: Double read FvOutro write SetvOutro;
    property vOutroHasValue: Boolean read FvOutroHasValue write FvOutroHasValue;
    property vNF: Double read FvNF write SetvNF;
    property vNFHasValue: Boolean read FvNFHasValue write FvNFHasValue;
    property vTotTrib: Double read FvTotTrib write SetvTotTrib;
    property vTotTribHasValue: Boolean read FvTotTribHasValue write FvTotTribHasValue;
  end;
  
  TNfeSefazISSQNtot = class
  private
    FvServ: Double;
    FvServHasValue: Boolean;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FvISS: Double;
    FvISSHasValue: Boolean;
    FvPIS: Double;
    FvPISHasValue: Boolean;
    FvCOFINS: Double;
    FvCOFINSHasValue: Boolean;
    FdCompet: TDate;
    FdCompetHasValue: Boolean;
    FvDeducao: Double;
    FvDeducaoHasValue: Boolean;
    FvOutro: Double;
    FvOutroHasValue: Boolean;
    FvDescIncond: Double;
    FvDescIncondHasValue: Boolean;
    FvDescCond: Double;
    FvDescCondHasValue: Boolean;
    FvISSRet: Double;
    FvISSRetHasValue: Boolean;
    FcRegTrib: Integer;
    FcRegTribHasValue: Boolean;
    procedure SetvServ(const Value: Double);
    procedure SetvBC(const Value: Double);
    procedure SetvISS(const Value: Double);
    procedure SetvPIS(const Value: Double);
    procedure SetvCOFINS(const Value: Double);
    procedure SetdCompet(const Value: TDate);
    procedure SetvDeducao(const Value: Double);
    procedure SetvOutro(const Value: Double);
    procedure SetvDescIncond(const Value: Double);
    procedure SetvDescCond(const Value: Double);
    procedure SetvISSRet(const Value: Double);
    procedure SetcRegTrib(const Value: Integer);
  public
    property vServ: Double read FvServ write SetvServ;
    property vServHasValue: Boolean read FvServHasValue write FvServHasValue;
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    property vISS: Double read FvISS write SetvISS;
    property vISSHasValue: Boolean read FvISSHasValue write FvISSHasValue;
    property vPIS: Double read FvPIS write SetvPIS;
    property vPISHasValue: Boolean read FvPISHasValue write FvPISHasValue;
    property vCOFINS: Double read FvCOFINS write SetvCOFINS;
    property vCOFINSHasValue: Boolean read FvCOFINSHasValue write FvCOFINSHasValue;
    property dCompet: TDate read FdCompet write SetdCompet;
    property dCompetHasValue: Boolean read FdCompetHasValue write FdCompetHasValue;
    property vDeducao: Double read FvDeducao write SetvDeducao;
    property vDeducaoHasValue: Boolean read FvDeducaoHasValue write FvDeducaoHasValue;
    property vOutro: Double read FvOutro write SetvOutro;
    property vOutroHasValue: Boolean read FvOutroHasValue write FvOutroHasValue;
    property vDescIncond: Double read FvDescIncond write SetvDescIncond;
    property vDescIncondHasValue: Boolean read FvDescIncondHasValue write FvDescIncondHasValue;
    property vDescCond: Double read FvDescCond write SetvDescCond;
    property vDescCondHasValue: Boolean read FvDescCondHasValue write FvDescCondHasValue;
    property vISSRet: Double read FvISSRet write SetvISSRet;
    property vISSRetHasValue: Boolean read FvISSRetHasValue write FvISSRetHasValue;
    property cRegTrib: Integer read FcRegTrib write SetcRegTrib;
    property cRegTribHasValue: Boolean read FcRegTribHasValue write FcRegTribHasValue;
  end;
  
  TNfeSefazRetTrib = class
  private
    FvRetPIS: Double;
    FvRetPISHasValue: Boolean;
    FvRetCOFINS: Double;
    FvRetCOFINSHasValue: Boolean;
    FvRetCSLL: Double;
    FvRetCSLLHasValue: Boolean;
    FvBCIRRF: Double;
    FvBCIRRFHasValue: Boolean;
    FvIRRF: Double;
    FvIRRFHasValue: Boolean;
    FvBCRetPrev: Double;
    FvBCRetPrevHasValue: Boolean;
    FvRetPrev: Double;
    FvRetPrevHasValue: Boolean;
    procedure SetvRetPIS(const Value: Double);
    procedure SetvRetCOFINS(const Value: Double);
    procedure SetvRetCSLL(const Value: Double);
    procedure SetvBCIRRF(const Value: Double);
    procedure SetvIRRF(const Value: Double);
    procedure SetvBCRetPrev(const Value: Double);
    procedure SetvRetPrev(const Value: Double);
  public
    property vRetPIS: Double read FvRetPIS write SetvRetPIS;
    property vRetPISHasValue: Boolean read FvRetPISHasValue write FvRetPISHasValue;
    property vRetCOFINS: Double read FvRetCOFINS write SetvRetCOFINS;
    property vRetCOFINSHasValue: Boolean read FvRetCOFINSHasValue write FvRetCOFINSHasValue;
    property vRetCSLL: Double read FvRetCSLL write SetvRetCSLL;
    property vRetCSLLHasValue: Boolean read FvRetCSLLHasValue write FvRetCSLLHasValue;
    property vBCIRRF: Double read FvBCIRRF write SetvBCIRRF;
    property vBCIRRFHasValue: Boolean read FvBCIRRFHasValue write FvBCIRRFHasValue;
    property vIRRF: Double read FvIRRF write SetvIRRF;
    property vIRRFHasValue: Boolean read FvIRRFHasValue write FvIRRFHasValue;
    property vBCRetPrev: Double read FvBCRetPrev write SetvBCRetPrev;
    property vBCRetPrevHasValue: Boolean read FvBCRetPrevHasValue write FvBCRetPrevHasValue;
    property vRetPrev: Double read FvRetPrev write SetvRetPrev;
    property vRetPrevHasValue: Boolean read FvRetPrevHasValue write FvRetPrevHasValue;
  end;
  
  TNfeSefazTotal = class
  private
    FICMSTot: TNfeSefazICMSTot;
    FISSQNtot: TNfeSefazISSQNtot;
    FretTrib: TNfeSefazRetTrib;
    procedure SetICMSTot(const Value: TNfeSefazICMSTot);
    procedure SetISSQNtot(const Value: TNfeSefazISSQNtot);
    procedure SetretTrib(const Value: TNfeSefazRetTrib);
  public
    destructor Destroy; override;
    property ICMSTot: TNfeSefazICMSTot read FICMSTot write SetICMSTot;
    property ISSQNtot: TNfeSefazISSQNtot read FISSQNtot write SetISSQNtot;
    property retTrib: TNfeSefazRetTrib read FretTrib write SetretTrib;
  end;
  
  TNfeSefazTransporta = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FxNome: string;
    FxNomeHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FxEnder: string;
    FxEnderHasValue: Boolean;
    FxMun: string;
    FxMunHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetxNome(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetxEnder(const Value: string);
    procedure SetxMun(const Value: string);
    procedure SetUF(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    property xEnder: string read FxEnder write SetxEnder;
    property xEnderHasValue: Boolean read FxEnderHasValue write FxEnderHasValue;
    property xMun: string read FxMun write SetxMun;
    property xMunHasValue: Boolean read FxMunHasValue write FxMunHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
  end;
  
  TNfeSefazRetTransp = class
  private
    FvServ: Double;
    FvServHasValue: Boolean;
    FvBCRet: Double;
    FvBCRetHasValue: Boolean;
    FpICMSRet: Double;
    FpICMSRetHasValue: Boolean;
    FvICMSRet: Double;
    FvICMSRetHasValue: Boolean;
    FCFOP: Integer;
    FCFOPHasValue: Boolean;
    FcMunFG: Integer;
    FcMunFGHasValue: Boolean;
    procedure SetvServ(const Value: Double);
    procedure SetvBCRet(const Value: Double);
    procedure SetpICMSRet(const Value: Double);
    procedure SetvICMSRet(const Value: Double);
    procedure SetCFOP(const Value: Integer);
    procedure SetcMunFG(const Value: Integer);
  public
    property vServ: Double read FvServ write SetvServ;
    property vServHasValue: Boolean read FvServHasValue write FvServHasValue;
    property vBCRet: Double read FvBCRet write SetvBCRet;
    property vBCRetHasValue: Boolean read FvBCRetHasValue write FvBCRetHasValue;
    property pICMSRet: Double read FpICMSRet write SetpICMSRet;
    property pICMSRetHasValue: Boolean read FpICMSRetHasValue write FpICMSRetHasValue;
    property vICMSRet: Double read FvICMSRet write SetvICMSRet;
    property vICMSRetHasValue: Boolean read FvICMSRetHasValue write FvICMSRetHasValue;
    property CFOP: Integer read FCFOP write SetCFOP;
    property CFOPHasValue: Boolean read FCFOPHasValue write FCFOPHasValue;
    property cMunFG: Integer read FcMunFG write SetcMunFG;
    property cMunFGHasValue: Boolean read FcMunFGHasValue write FcMunFGHasValue;
  end;
  
  TNfeSefazVeiculo = class
  private
    Fplaca: string;
    FplacaHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FRNTC: string;
    FRNTCHasValue: Boolean;
    procedure Setplaca(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetRNTC(const Value: string);
  public
    property placa: string read Fplaca write Setplaca;
    property placaHasValue: Boolean read FplacaHasValue write FplacaHasValue;
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    property RNTC: string read FRNTC write SetRNTC;
    property RNTCHasValue: Boolean read FRNTCHasValue write FRNTCHasValue;
  end;
  
  TNfeSefazVeiculoList = class(TObjectList<TNfeSefazVeiculo>)
  end;
  
  TNfeSefazLacres = class
  private
    FnLacre: string;
    FnLacreHasValue: Boolean;
    procedure SetnLacre(const Value: string);
  public
    property nLacre: string read FnLacre write SetnLacre;
    property nLacreHasValue: Boolean read FnLacreHasValue write FnLacreHasValue;
  end;
  
  TNfeSefazLacresList = class(TObjectList<TNfeSefazLacres>)
  end;
  
  TNfeSefazVol = class
  private
    FqVol: Integer;
    FqVolHasValue: Boolean;
    Fesp: string;
    FespHasValue: Boolean;
    Fmarca: string;
    FmarcaHasValue: Boolean;
    FnVol: string;
    FnVolHasValue: Boolean;
    FpesoL: Double;
    FpesoLHasValue: Boolean;
    FpesoB: Double;
    FpesoBHasValue: Boolean;
    Flacres: TNfeSefazLacresList;
    procedure SetqVol(const Value: Integer);
    procedure Setesp(const Value: string);
    procedure Setmarca(const Value: string);
    procedure SetnVol(const Value: string);
    procedure SetpesoL(const Value: Double);
    procedure SetpesoB(const Value: Double);
    procedure Setlacres(const Value: TNfeSefazLacresList);
  public
    destructor Destroy; override;
    property qVol: Integer read FqVol write SetqVol;
    property qVolHasValue: Boolean read FqVolHasValue write FqVolHasValue;
    property esp: string read Fesp write Setesp;
    property espHasValue: Boolean read FespHasValue write FespHasValue;
    property marca: string read Fmarca write Setmarca;
    property marcaHasValue: Boolean read FmarcaHasValue write FmarcaHasValue;
    property nVol: string read FnVol write SetnVol;
    property nVolHasValue: Boolean read FnVolHasValue write FnVolHasValue;
    property pesoL: Double read FpesoL write SetpesoL;
    property pesoLHasValue: Boolean read FpesoLHasValue write FpesoLHasValue;
    property pesoB: Double read FpesoB write SetpesoB;
    property pesoBHasValue: Boolean read FpesoBHasValue write FpesoBHasValue;
    property lacres: TNfeSefazLacresList read Flacres write Setlacres;
  end;
  
  TNfeSefazVolList = class(TObjectList<TNfeSefazVol>)
  end;
  
  TNfeSefazTransp = class
  private
    FmodFrete: Integer;
    FmodFreteHasValue: Boolean;
    Ftransporta: TNfeSefazTransporta;
    FretTransp: TNfeSefazRetTransp;
    FveicTransp: TNfeSefazVeiculo;
    Freboque: TNfeSefazVeiculoList;
    Fvagao: string;
    FvagaoHasValue: Boolean;
    Fbalsa: string;
    FbalsaHasValue: Boolean;
    Fvol: TNfeSefazVolList;
    procedure SetmodFrete(const Value: Integer);
    procedure Settransporta(const Value: TNfeSefazTransporta);
    procedure SetretTransp(const Value: TNfeSefazRetTransp);
    procedure SetveicTransp(const Value: TNfeSefazVeiculo);
    procedure Setreboque(const Value: TNfeSefazVeiculoList);
    procedure Setvagao(const Value: string);
    procedure Setbalsa(const Value: string);
    procedure Setvol(const Value: TNfeSefazVolList);
  public
    destructor Destroy; override;
    property modFrete: Integer read FmodFrete write SetmodFrete;
    property modFreteHasValue: Boolean read FmodFreteHasValue write FmodFreteHasValue;
    property transporta: TNfeSefazTransporta read Ftransporta write Settransporta;
    property retTransp: TNfeSefazRetTransp read FretTransp write SetretTransp;
    property veicTransp: TNfeSefazVeiculo read FveicTransp write SetveicTransp;
    property reboque: TNfeSefazVeiculoList read Freboque write Setreboque;
    property vagao: string read Fvagao write Setvagao;
    property vagaoHasValue: Boolean read FvagaoHasValue write FvagaoHasValue;
    property balsa: string read Fbalsa write Setbalsa;
    property balsaHasValue: Boolean read FbalsaHasValue write FbalsaHasValue;
    property vol: TNfeSefazVolList read Fvol write Setvol;
  end;
  
  TNfeSefazFat = class
  private
    FnFat: string;
    FnFatHasValue: Boolean;
    FvOrig: Double;
    FvOrigHasValue: Boolean;
    FvDesc: Double;
    FvDescHasValue: Boolean;
    FvLiq: Double;
    FvLiqHasValue: Boolean;
    procedure SetnFat(const Value: string);
    procedure SetvOrig(const Value: Double);
    procedure SetvDesc(const Value: Double);
    procedure SetvLiq(const Value: Double);
  public
    property nFat: string read FnFat write SetnFat;
    property nFatHasValue: Boolean read FnFatHasValue write FnFatHasValue;
    property vOrig: Double read FvOrig write SetvOrig;
    property vOrigHasValue: Boolean read FvOrigHasValue write FvOrigHasValue;
    property vDesc: Double read FvDesc write SetvDesc;
    property vDescHasValue: Boolean read FvDescHasValue write FvDescHasValue;
    property vLiq: Double read FvLiq write SetvLiq;
    property vLiqHasValue: Boolean read FvLiqHasValue write FvLiqHasValue;
  end;
  
  TNfeSefazDup = class
  private
    FnDup: string;
    FnDupHasValue: Boolean;
    FdVenc: TDate;
    FdVencHasValue: Boolean;
    FvDup: Double;
    FvDupHasValue: Boolean;
    procedure SetnDup(const Value: string);
    procedure SetdVenc(const Value: TDate);
    procedure SetvDup(const Value: Double);
  public
    property nDup: string read FnDup write SetnDup;
    property nDupHasValue: Boolean read FnDupHasValue write FnDupHasValue;
    property dVenc: TDate read FdVenc write SetdVenc;
    property dVencHasValue: Boolean read FdVencHasValue write FdVencHasValue;
    property vDup: Double read FvDup write SetvDup;
    property vDupHasValue: Boolean read FvDupHasValue write FvDupHasValue;
  end;
  
  TNfeSefazDupList = class(TObjectList<TNfeSefazDup>)
  end;
  
  TNfeSefazCobr = class
  private
    Ffat: TNfeSefazFat;
    Fdup: TNfeSefazDupList;
    procedure Setfat(const Value: TNfeSefazFat);
    procedure Setdup(const Value: TNfeSefazDupList);
  public
    destructor Destroy; override;
    property fat: TNfeSefazFat read Ffat write Setfat;
    property dup: TNfeSefazDupList read Fdup write Setdup;
  end;
  
  TNfeSefazCard = class
  private
    FtpIntegra: Integer;
    FtpIntegraHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FtBand: string;
    FtBandHasValue: Boolean;
    FcAut: string;
    FcAutHasValue: Boolean;
    procedure SettpIntegra(const Value: Integer);
    procedure SetCNPJ(const Value: string);
    procedure SettBand(const Value: string);
    procedure SetcAut(const Value: string);
  public
    property tpIntegra: Integer read FtpIntegra write SettpIntegra;
    property tpIntegraHasValue: Boolean read FtpIntegraHasValue write FtpIntegraHasValue;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property tBand: string read FtBand write SettBand;
    property tBandHasValue: Boolean read FtBandHasValue write FtBandHasValue;
    property cAut: string read FcAut write SetcAut;
    property cAutHasValue: Boolean read FcAutHasValue write FcAutHasValue;
  end;
  
  TNfeSefazDetPag = class
  private
    FindPag: Integer;
    FindPagHasValue: Boolean;
    FtPag: string;
    FtPagHasValue: Boolean;
    FxPag: string;
    FxPagHasValue: Boolean;
    FvPag: Double;
    FvPagHasValue: Boolean;
    Fcard: TNfeSefazCard;
    procedure SetindPag(const Value: Integer);
    procedure SettPag(const Value: string);
    procedure SetxPag(const Value: string);
    procedure SetvPag(const Value: Double);
    procedure Setcard(const Value: TNfeSefazCard);
  public
    destructor Destroy; override;
    property indPag: Integer read FindPag write SetindPag;
    property indPagHasValue: Boolean read FindPagHasValue write FindPagHasValue;
    property tPag: string read FtPag write SettPag;
    property tPagHasValue: Boolean read FtPagHasValue write FtPagHasValue;
    property xPag: string read FxPag write SetxPag;
    property xPagHasValue: Boolean read FxPagHasValue write FxPagHasValue;
    property vPag: Double read FvPag write SetvPag;
    property vPagHasValue: Boolean read FvPagHasValue write FvPagHasValue;
    property card: TNfeSefazCard read Fcard write Setcard;
  end;
  
  TNfeSefazDetPagList = class(TObjectList<TNfeSefazDetPag>)
  end;
  
  TNfeSefazPag = class
  private
    FdetPag: TNfeSefazDetPagList;
    FvTroco: Double;
    FvTrocoHasValue: Boolean;
    procedure SetdetPag(const Value: TNfeSefazDetPagList);
    procedure SetvTroco(const Value: Double);
  public
    destructor Destroy; override;
    property detPag: TNfeSefazDetPagList read FdetPag write SetdetPag;
    property vTroco: Double read FvTroco write SetvTroco;
    property vTrocoHasValue: Boolean read FvTrocoHasValue write FvTrocoHasValue;
  end;
  
  TNfeSefazInfIntermed = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FidCadIntTran: string;
    FidCadIntTranHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetidCadIntTran(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property idCadIntTran: string read FidCadIntTran write SetidCadIntTran;
    property idCadIntTranHasValue: Boolean read FidCadIntTranHasValue write FidCadIntTranHasValue;
  end;
  
  TNfeSefazObsCont = class
  private
    FxCampo: string;
    FxCampoHasValue: Boolean;
    FxTexto: string;
    FxTextoHasValue: Boolean;
    procedure SetxCampo(const Value: string);
    procedure SetxTexto(const Value: string);
  public
    property xCampo: string read FxCampo write SetxCampo;
    property xCampoHasValue: Boolean read FxCampoHasValue write FxCampoHasValue;
    property xTexto: string read FxTexto write SetxTexto;
    property xTextoHasValue: Boolean read FxTextoHasValue write FxTextoHasValue;
  end;
  
  TNfeSefazObsContList = class(TObjectList<TNfeSefazObsCont>)
  end;
  
  TNfeSefazObsFisco = class
  private
    FxCampo: string;
    FxCampoHasValue: Boolean;
    FxTexto: string;
    FxTextoHasValue: Boolean;
    procedure SetxCampo(const Value: string);
    procedure SetxTexto(const Value: string);
  public
    property xCampo: string read FxCampo write SetxCampo;
    property xCampoHasValue: Boolean read FxCampoHasValue write FxCampoHasValue;
    property xTexto: string read FxTexto write SetxTexto;
    property xTextoHasValue: Boolean read FxTextoHasValue write FxTextoHasValue;
  end;
  
  TNfeSefazObsFiscoList = class(TObjectList<TNfeSefazObsFisco>)
  end;
  
  TNfeSefazProcRef = class
  private
    FnProc: string;
    FnProcHasValue: Boolean;
    FindProc: Integer;
    FindProcHasValue: Boolean;
    procedure SetnProc(const Value: string);
    procedure SetindProc(const Value: Integer);
  public
    property nProc: string read FnProc write SetnProc;
    property nProcHasValue: Boolean read FnProcHasValue write FnProcHasValue;
    property indProc: Integer read FindProc write SetindProc;
    property indProcHasValue: Boolean read FindProcHasValue write FindProcHasValue;
  end;
  
  TNfeSefazProcRefList = class(TObjectList<TNfeSefazProcRef>)
  end;
  
  TNfeSefazInfAdic = class
  private
    FinfAdFisco: string;
    FinfAdFiscoHasValue: Boolean;
    FinfCpl: string;
    FinfCplHasValue: Boolean;
    FobsCont: TNfeSefazObsContList;
    FobsFisco: TNfeSefazObsFiscoList;
    FprocRef: TNfeSefazProcRefList;
    procedure SetinfAdFisco(const Value: string);
    procedure SetinfCpl(const Value: string);
    procedure SetobsCont(const Value: TNfeSefazObsContList);
    procedure SetobsFisco(const Value: TNfeSefazObsFiscoList);
    procedure SetprocRef(const Value: TNfeSefazProcRefList);
  public
    destructor Destroy; override;
    property infAdFisco: string read FinfAdFisco write SetinfAdFisco;
    property infAdFiscoHasValue: Boolean read FinfAdFiscoHasValue write FinfAdFiscoHasValue;
    property infCpl: string read FinfCpl write SetinfCpl;
    property infCplHasValue: Boolean read FinfCplHasValue write FinfCplHasValue;
    property obsCont: TNfeSefazObsContList read FobsCont write SetobsCont;
    property obsFisco: TNfeSefazObsFiscoList read FobsFisco write SetobsFisco;
    property procRef: TNfeSefazProcRefList read FprocRef write SetprocRef;
  end;
  
  TNfeSefazExporta = class
  private
    FUFSaidaPais: string;
    FUFSaidaPaisHasValue: Boolean;
    FxLocExporta: string;
    FxLocExportaHasValue: Boolean;
    FxLocDespacho: string;
    FxLocDespachoHasValue: Boolean;
    procedure SetUFSaidaPais(const Value: string);
    procedure SetxLocExporta(const Value: string);
    procedure SetxLocDespacho(const Value: string);
  public
    property UFSaidaPais: string read FUFSaidaPais write SetUFSaidaPais;
    property UFSaidaPaisHasValue: Boolean read FUFSaidaPaisHasValue write FUFSaidaPaisHasValue;
    property xLocExporta: string read FxLocExporta write SetxLocExporta;
    property xLocExportaHasValue: Boolean read FxLocExportaHasValue write FxLocExportaHasValue;
    property xLocDespacho: string read FxLocDespacho write SetxLocDespacho;
    property xLocDespachoHasValue: Boolean read FxLocDespachoHasValue write FxLocDespachoHasValue;
  end;
  
  TNfeSefazCompra = class
  private
    FxNEmp: string;
    FxNEmpHasValue: Boolean;
    FxPed: string;
    FxPedHasValue: Boolean;
    FxCont: string;
    FxContHasValue: Boolean;
    procedure SetxNEmp(const Value: string);
    procedure SetxPed(const Value: string);
    procedure SetxCont(const Value: string);
  public
    property xNEmp: string read FxNEmp write SetxNEmp;
    property xNEmpHasValue: Boolean read FxNEmpHasValue write FxNEmpHasValue;
    property xPed: string read FxPed write SetxPed;
    property xPedHasValue: Boolean read FxPedHasValue write FxPedHasValue;
    property xCont: string read FxCont write SetxCont;
    property xContHasValue: Boolean read FxContHasValue write FxContHasValue;
  end;
  
  TNfeSefazForDia = class
  private
    Fdia: Integer;
    FdiaHasValue: Boolean;
    Fqtde: Double;
    FqtdeHasValue: Boolean;
    procedure Setdia(const Value: Integer);
    procedure Setqtde(const Value: Double);
  public
    property dia: Integer read Fdia write Setdia;
    property diaHasValue: Boolean read FdiaHasValue write FdiaHasValue;
    property qtde: Double read Fqtde write Setqtde;
    property qtdeHasValue: Boolean read FqtdeHasValue write FqtdeHasValue;
  end;
  
  TNfeSefazForDiaList = class(TObjectList<TNfeSefazForDia>)
  end;
  
  TNfeSefazDeduc = class
  private
    FxDed: string;
    FxDedHasValue: Boolean;
    FvDed: Double;
    FvDedHasValue: Boolean;
    procedure SetxDed(const Value: string);
    procedure SetvDed(const Value: Double);
  public
    property xDed: string read FxDed write SetxDed;
    property xDedHasValue: Boolean read FxDedHasValue write FxDedHasValue;
    property vDed: Double read FvDed write SetvDed;
    property vDedHasValue: Boolean read FvDedHasValue write FvDedHasValue;
  end;
  
  TNfeSefazDeducList = class(TObjectList<TNfeSefazDeduc>)
  end;
  
  TNfeSefazCana = class
  private
    Fsafra: string;
    FsafraHasValue: Boolean;
    Fref: string;
    FrefHasValue: Boolean;
    FforDia: TNfeSefazForDiaList;
    FqTotMes: Double;
    FqTotMesHasValue: Boolean;
    FqTotAnt: Double;
    FqTotAntHasValue: Boolean;
    FqTotGer: Double;
    FqTotGerHasValue: Boolean;
    Fdeduc: TNfeSefazDeducList;
    FvFor: Double;
    FvForHasValue: Boolean;
    FvTotDed: Double;
    FvTotDedHasValue: Boolean;
    FvLiqFor: Double;
    FvLiqForHasValue: Boolean;
    procedure Setsafra(const Value: string);
    procedure Setref(const Value: string);
    procedure SetforDia(const Value: TNfeSefazForDiaList);
    procedure SetqTotMes(const Value: Double);
    procedure SetqTotAnt(const Value: Double);
    procedure SetqTotGer(const Value: Double);
    procedure Setdeduc(const Value: TNfeSefazDeducList);
    procedure SetvFor(const Value: Double);
    procedure SetvTotDed(const Value: Double);
    procedure SetvLiqFor(const Value: Double);
  public
    destructor Destroy; override;
    property safra: string read Fsafra write Setsafra;
    property safraHasValue: Boolean read FsafraHasValue write FsafraHasValue;
    property ref: string read Fref write Setref;
    property refHasValue: Boolean read FrefHasValue write FrefHasValue;
    property forDia: TNfeSefazForDiaList read FforDia write SetforDia;
    property qTotMes: Double read FqTotMes write SetqTotMes;
    property qTotMesHasValue: Boolean read FqTotMesHasValue write FqTotMesHasValue;
    property qTotAnt: Double read FqTotAnt write SetqTotAnt;
    property qTotAntHasValue: Boolean read FqTotAntHasValue write FqTotAntHasValue;
    property qTotGer: Double read FqTotGer write SetqTotGer;
    property qTotGerHasValue: Boolean read FqTotGerHasValue write FqTotGerHasValue;
    property deduc: TNfeSefazDeducList read Fdeduc write Setdeduc;
    property vFor: Double read FvFor write SetvFor;
    property vForHasValue: Boolean read FvForHasValue write FvForHasValue;
    property vTotDed: Double read FvTotDed write SetvTotDed;
    property vTotDedHasValue: Boolean read FvTotDedHasValue write FvTotDedHasValue;
    property vLiqFor: Double read FvLiqFor write SetvLiqFor;
    property vLiqForHasValue: Boolean read FvLiqForHasValue write FvLiqForHasValue;
  end;
  
  TNfeSefazInfRespTec = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FxContato: string;
    FxContatoHasValue: Boolean;
    Femail: string;
    FemailHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    FidCSRT: Integer;
    FidCSRTHasValue: Boolean;
    FhashCSRT: string;
    FhashCSRTHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetxContato(const Value: string);
    procedure Setemail(const Value: string);
    procedure Setfone(const Value: string);
    procedure SetidCSRT(const Value: Integer);
    procedure SethashCSRT(const Value: string);
  public
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    property xContato: string read FxContato write SetxContato;
    property xContatoHasValue: Boolean read FxContatoHasValue write FxContatoHasValue;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    property idCSRT: Integer read FidCSRT write SetidCSRT;
    property idCSRTHasValue: Boolean read FidCSRTHasValue write FidCSRTHasValue;
    property hashCSRT: string read FhashCSRT write SethashCSRT;
    property hashCSRTHasValue: Boolean read FhashCSRTHasValue write FhashCSRTHasValue;
  end;
  
  TNfeSefazInfSolicNFF = class
  private
    FxSolic: string;
    FxSolicHasValue: Boolean;
    procedure SetxSolic(const Value: string);
  public
    property xSolic: string read FxSolic write SetxSolic;
    property xSolicHasValue: Boolean read FxSolicHasValue write FxSolicHasValue;
  end;
  
  TNfeSefazInfNFe = class
  private
    Fversao: string;
    FversaoHasValue: Boolean;
    FId: string;
    FIdHasValue: Boolean;
    Fide: TNfeSefazIde;
    Femit: TNfeSefazEmit;
    Favulsa: TNfeSefazAvulsa;
    Fdest: TNfeSefazDest;
    Fretirada: TNfeSefazLocal;
    Fentrega: TNfeSefazLocal;
    FautXML: TNfeSefazAutXMLList;
    Fdet: TNfeSefazDetList;
    Ftotal: TNfeSefazTotal;
    Ftransp: TNfeSefazTransp;
    Fcobr: TNfeSefazCobr;
    Fpag: TNfeSefazPag;
    FinfIntermed: TNfeSefazInfIntermed;
    FinfAdic: TNfeSefazInfAdic;
    Fexporta: TNfeSefazExporta;
    Fcompra: TNfeSefazCompra;
    Fcana: TNfeSefazCana;
    FinfRespTec: TNfeSefazInfRespTec;
    FinfSolicNFF: TNfeSefazInfSolicNFF;
    procedure Setversao(const Value: string);
    procedure SetId(const Value: string);
    procedure Setide(const Value: TNfeSefazIde);
    procedure Setemit(const Value: TNfeSefazEmit);
    procedure Setavulsa(const Value: TNfeSefazAvulsa);
    procedure Setdest(const Value: TNfeSefazDest);
    procedure Setretirada(const Value: TNfeSefazLocal);
    procedure Setentrega(const Value: TNfeSefazLocal);
    procedure SetautXML(const Value: TNfeSefazAutXMLList);
    procedure Setdet(const Value: TNfeSefazDetList);
    procedure Settotal(const Value: TNfeSefazTotal);
    procedure Settransp(const Value: TNfeSefazTransp);
    procedure Setcobr(const Value: TNfeSefazCobr);
    procedure Setpag(const Value: TNfeSefazPag);
    procedure SetinfIntermed(const Value: TNfeSefazInfIntermed);
    procedure SetinfAdic(const Value: TNfeSefazInfAdic);
    procedure Setexporta(const Value: TNfeSefazExporta);
    procedure Setcompra(const Value: TNfeSefazCompra);
    procedure Setcana(const Value: TNfeSefazCana);
    procedure SetinfRespTec(const Value: TNfeSefazInfRespTec);
    procedure SetinfSolicNFF(const Value: TNfeSefazInfSolicNFF);
  public
    destructor Destroy; override;
    property versao: string read Fversao write Setversao;
    property versaoHasValue: Boolean read FversaoHasValue write FversaoHasValue;
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    property ide: TNfeSefazIde read Fide write Setide;
    property emit: TNfeSefazEmit read Femit write Setemit;
    property avulsa: TNfeSefazAvulsa read Favulsa write Setavulsa;
    property dest: TNfeSefazDest read Fdest write Setdest;
    property retirada: TNfeSefazLocal read Fretirada write Setretirada;
    property entrega: TNfeSefazLocal read Fentrega write Setentrega;
    property autXML: TNfeSefazAutXMLList read FautXML write SetautXML;
    property det: TNfeSefazDetList read Fdet write Setdet;
    property total: TNfeSefazTotal read Ftotal write Settotal;
    property transp: TNfeSefazTransp read Ftransp write Settransp;
    property cobr: TNfeSefazCobr read Fcobr write Setcobr;
    property pag: TNfeSefazPag read Fpag write Setpag;
    property infIntermed: TNfeSefazInfIntermed read FinfIntermed write SetinfIntermed;
    property infAdic: TNfeSefazInfAdic read FinfAdic write SetinfAdic;
    property exporta: TNfeSefazExporta read Fexporta write Setexporta;
    property compra: TNfeSefazCompra read Fcompra write Setcompra;
    property cana: TNfeSefazCana read Fcana write Setcana;
    property infRespTec: TNfeSefazInfRespTec read FinfRespTec write SetinfRespTec;
    property infSolicNFF: TNfeSefazInfSolicNFF read FinfSolicNFF write SetinfSolicNFF;
  end;
  
  TNfeSefazInfNFeSupl = class
  private
    FqrCode: string;
    FqrCodeHasValue: Boolean;
    FurlChave: string;
    FurlChaveHasValue: Boolean;
    procedure SetqrCode(const Value: string);
    procedure SeturlChave(const Value: string);
  public
    property qrCode: string read FqrCode write SetqrCode;
    property qrCodeHasValue: Boolean read FqrCodeHasValue write FqrCodeHasValue;
    property urlChave: string read FurlChave write SeturlChave;
    property urlChaveHasValue: Boolean read FurlChaveHasValue write FurlChaveHasValue;
  end;
  
  TNfePedidoEmissao = class
  private
    FinfNFe: TNfeSefazInfNFe;
    FinfNFeSupl: TNfeSefazInfNFeSupl;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    procedure SetinfNFe(const Value: TNfeSefazInfNFe);
    procedure SetinfNFeSupl(const Value: TNfeSefazInfNFeSupl);
    procedure Setambiente(const Value: string);
    procedure Setreferencia(const Value: string);
  public
    destructor Destroy; override;
    property infNFe: TNfeSefazInfNFe read FinfNFe write SetinfNFe;
    property infNFeSupl: TNfeSefazInfNFeSupl read FinfNFeSupl write SetinfNFeSupl;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
  end;
  
  TNfePedidoEmissaoList = class(TObjectList<TNfePedidoEmissao>)
  end;
  
  TNfePedidoEmissaoLote = class
  private
    Fdocumentos: TNfePedidoEmissaoList;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    Fid_lote: string;
    Fid_loteHasValue: Boolean;
    procedure Setdocumentos(const Value: TNfePedidoEmissaoList);
    procedure Setambiente(const Value: string);
    procedure Setreferencia(const Value: string);
    procedure Setid_lote(const Value: string);
  public
    destructor Destroy; override;
    property documentos: TNfePedidoEmissaoList read Fdocumentos write Setdocumentos;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
    property id_lote: string read Fid_lote write Setid_lote;
    property id_loteHasValue: Boolean read Fid_loteHasValue write Fid_loteHasValue;
  end;
  
  TNfePedidoCancelamento = class
  private
    Fjustificativa: string;
    FjustificativaHasValue: Boolean;
    procedure Setjustificativa(const Value: string);
  public
    property justificativa: string read Fjustificativa write Setjustificativa;
    property justificativaHasValue: Boolean read FjustificativaHasValue write FjustificativaHasValue;
  end;
  
  TNfePedidoCartaCorrecao = class
  private
    Fcorrecao: string;
    FcorrecaoHasValue: Boolean;
    procedure Setcorrecao(const Value: string);
  public
    property correcao: string read Fcorrecao write Setcorrecao;
    property correcaoHasValue: Boolean read FcorrecaoHasValue write FcorrecaoHasValue;
  end;
  
  TDfeCartaCorrecao = class
  private
    Fcorrecao: string;
    FcorrecaoHasValue: Boolean;
    Fid: string;
    FidHasValue: Boolean;
    Fambiente: string;
    FambienteHasValue: Boolean;
    Fstatus: string;
    FstatusHasValue: Boolean;
    Fautor: TDfeAutorEvento;
    Fchave_acesso: string;
    Fchave_acessoHasValue: Boolean;
    Fdata_evento: TDateTime;
    Fdata_eventoHasValue: Boolean;
    Fnumero_sequencial: Integer;
    Fnumero_sequencialHasValue: Boolean;
    Fdata_recebimento: TDateTime;
    Fdata_recebimentoHasValue: Boolean;
    Fcodigo_status: Integer;
    Fcodigo_statusHasValue: Boolean;
    Fmotivo_status: string;
    Fmotivo_statusHasValue: Boolean;
    Fnumero_protocolo: string;
    Fnumero_protocoloHasValue: Boolean;
    Fcodigo_mensagem: Integer;
    Fcodigo_mensagemHasValue: Boolean;
    Fmensagem: string;
    FmensagemHasValue: Boolean;
    Ftipo_evento: string;
    Ftipo_eventoHasValue: Boolean;
    procedure Setcorrecao(const Value: string);
    procedure Setid(const Value: string);
    procedure Setambiente(const Value: string);
    procedure Setstatus(const Value: string);
    procedure Setautor(const Value: TDfeAutorEvento);
    procedure Setchave_acesso(const Value: string);
    procedure Setdata_evento(const Value: TDateTime);
    procedure Setnumero_sequencial(const Value: Integer);
    procedure Setdata_recebimento(const Value: TDateTime);
    procedure Setcodigo_status(const Value: Integer);
    procedure Setmotivo_status(const Value: string);
    procedure Setnumero_protocolo(const Value: string);
    procedure Setcodigo_mensagem(const Value: Integer);
    procedure Setmensagem(const Value: string);
    procedure Settipo_evento(const Value: string);
  public
    destructor Destroy; override;
    property correcao: string read Fcorrecao write Setcorrecao;
    property correcaoHasValue: Boolean read FcorrecaoHasValue write FcorrecaoHasValue;
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property autor: TDfeAutorEvento read Fautor write Setautor;
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TCnpjNaturezaJuridica = class
  private
    Fcodigo: string;
    FcodigoHasValue: Boolean;
    Fdescricao: string;
    FdescricaoHasValue: Boolean;
    procedure Setcodigo(const Value: string);
    procedure Setdescricao(const Value: string);
  public
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    property descricao: string read Fdescricao write Setdescricao;
    property descricaoHasValue: Boolean read FdescricaoHasValue write FdescricaoHasValue;
  end;
  
  TCnpjPorteEmpresa = class
  private
    Fcodigo: string;
    FcodigoHasValue: Boolean;
    Fdescricao: string;
    FdescricaoHasValue: Boolean;
    procedure Setcodigo(const Value: string);
    procedure Setdescricao(const Value: string);
  public
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    property descricao: string read Fdescricao write Setdescricao;
    property descricaoHasValue: Boolean read FdescricaoHasValue write FdescricaoHasValue;
  end;
  
  TCnpjSituacaoCadastral = class
  private
    Fdata: TDate;
    FdataHasValue: Boolean;
    Fcodigo: string;
    FcodigoHasValue: Boolean;
    Fdescricao: string;
    FdescricaoHasValue: Boolean;
    procedure Setdata(const Value: TDate);
    procedure Setcodigo(const Value: string);
    procedure Setdescricao(const Value: string);
  public
    property data: TDate read Fdata write Setdata;
    property dataHasValue: Boolean read FdataHasValue write FdataHasValue;
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    property descricao: string read Fdescricao write Setdescricao;
    property descricaoHasValue: Boolean read FdescricaoHasValue write FdescricaoHasValue;
  end;
  
  TCnpjPais = class
  private
    Fcodigo: string;
    FcodigoHasValue: Boolean;
    Fdescricao: string;
    FdescricaoHasValue: Boolean;
    procedure Setcodigo(const Value: string);
    procedure Setdescricao(const Value: string);
  public
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    property descricao: string read Fdescricao write Setdescricao;
    property descricaoHasValue: Boolean read FdescricaoHasValue write FdescricaoHasValue;
  end;
  
  TCnpjCnae = class
  private
    Fcodigo: string;
    FcodigoHasValue: Boolean;
    Fdescricao: string;
    FdescricaoHasValue: Boolean;
    procedure Setcodigo(const Value: string);
    procedure Setdescricao(const Value: string);
  public
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    property descricao: string read Fdescricao write Setdescricao;
    property descricaoHasValue: Boolean read FdescricaoHasValue write FdescricaoHasValue;
  end;
  
  TCnpjCnaeList = class(TObjectList<TCnpjCnae>)
  end;
  
  TCnpjMunicipio = class
  private
    Fcodigo_tom: string;
    Fcodigo_tomHasValue: Boolean;
    Fcodigo_ibge: string;
    Fcodigo_ibgeHasValue: Boolean;
    Fdescricao: string;
    FdescricaoHasValue: Boolean;
    procedure Setcodigo_tom(const Value: string);
    procedure Setcodigo_ibge(const Value: string);
    procedure Setdescricao(const Value: string);
  public
    property codigo_tom: string read Fcodigo_tom write Setcodigo_tom;
    property codigo_tomHasValue: Boolean read Fcodigo_tomHasValue write Fcodigo_tomHasValue;
    property codigo_ibge: string read Fcodigo_ibge write Setcodigo_ibge;
    property codigo_ibgeHasValue: Boolean read Fcodigo_ibgeHasValue write Fcodigo_ibgeHasValue;
    property descricao: string read Fdescricao write Setdescricao;
    property descricaoHasValue: Boolean read FdescricaoHasValue write FdescricaoHasValue;
  end;
  
  TCnpjEndereco = class
  private
    Ftipo_logradouro: string;
    Ftipo_logradouroHasValue: Boolean;
    Flogradouro: string;
    FlogradouroHasValue: Boolean;
    Fnumero: string;
    FnumeroHasValue: Boolean;
    Fcomplemento: string;
    FcomplementoHasValue: Boolean;
    Fbairro: string;
    FbairroHasValue: Boolean;
    Fcep: string;
    FcepHasValue: Boolean;
    Fuf: string;
    FufHasValue: Boolean;
    Fmunicipio: TCnpjMunicipio;
    procedure Settipo_logradouro(const Value: string);
    procedure Setlogradouro(const Value: string);
    procedure Setnumero(const Value: string);
    procedure Setcomplemento(const Value: string);
    procedure Setbairro(const Value: string);
    procedure Setcep(const Value: string);
    procedure Setuf(const Value: string);
    procedure Setmunicipio(const Value: TCnpjMunicipio);
  public
    destructor Destroy; override;
    property tipo_logradouro: string read Ftipo_logradouro write Settipo_logradouro;
    property tipo_logradouroHasValue: Boolean read Ftipo_logradouroHasValue write Ftipo_logradouroHasValue;
    property logradouro: string read Flogradouro write Setlogradouro;
    property logradouroHasValue: Boolean read FlogradouroHasValue write FlogradouroHasValue;
    property numero: string read Fnumero write Setnumero;
    property numeroHasValue: Boolean read FnumeroHasValue write FnumeroHasValue;
    property complemento: string read Fcomplemento write Setcomplemento;
    property complementoHasValue: Boolean read FcomplementoHasValue write FcomplementoHasValue;
    property bairro: string read Fbairro write Setbairro;
    property bairroHasValue: Boolean read FbairroHasValue write FbairroHasValue;
    property cep: string read Fcep write Setcep;
    property cepHasValue: Boolean read FcepHasValue write FcepHasValue;
    property uf: string read Fuf write Setuf;
    property ufHasValue: Boolean read FufHasValue write FufHasValue;
    property municipio: TCnpjMunicipio read Fmunicipio write Setmunicipio;
  end;
  
  TCnpjTelefone = class
  private
    Fddd: string;
    FdddHasValue: Boolean;
    Fnumero: string;
    FnumeroHasValue: Boolean;
    procedure Setddd(const Value: string);
    procedure Setnumero(const Value: string);
  public
    property ddd: string read Fddd write Setddd;
    property dddHasValue: Boolean read FdddHasValue write FdddHasValue;
    property numero: string read Fnumero write Setnumero;
    property numeroHasValue: Boolean read FnumeroHasValue write FnumeroHasValue;
  end;
  
  TCnpjTelefoneList = class(TObjectList<TCnpjTelefone>)
  end;
  
  TCnpjOpcaoSimples = class
  private
    Foptante: Boolean;
    FoptanteHasValue: Boolean;
    Fdata_opcao: TDate;
    Fdata_opcaoHasValue: Boolean;
    Fdata_exclusao: TDate;
    Fdata_exclusaoHasValue: Boolean;
    procedure Setoptante(const Value: Boolean);
    procedure Setdata_opcao(const Value: TDate);
    procedure Setdata_exclusao(const Value: TDate);
  public
    property optante: Boolean read Foptante write Setoptante;
    property optanteHasValue: Boolean read FoptanteHasValue write FoptanteHasValue;
    property data_opcao: TDate read Fdata_opcao write Setdata_opcao;
    property data_opcaoHasValue: Boolean read Fdata_opcaoHasValue write Fdata_opcaoHasValue;
    property data_exclusao: TDate read Fdata_exclusao write Setdata_exclusao;
    property data_exclusaoHasValue: Boolean read Fdata_exclusaoHasValue write Fdata_exclusaoHasValue;
  end;
  
  TCnpjIdentificadorSocio = class
  private
    Fcodigo: string;
    FcodigoHasValue: Boolean;
    Fdescricao: string;
    FdescricaoHasValue: Boolean;
    procedure Setcodigo(const Value: string);
    procedure Setdescricao(const Value: string);
  public
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    property descricao: string read Fdescricao write Setdescricao;
    property descricaoHasValue: Boolean read FdescricaoHasValue write FdescricaoHasValue;
  end;
  
  TCnpjQualificacaoSocio = class
  private
    Fcodigo: string;
    FcodigoHasValue: Boolean;
    Fdescricao: string;
    FdescricaoHasValue: Boolean;
    procedure Setcodigo(const Value: string);
    procedure Setdescricao(const Value: string);
  public
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    property descricao: string read Fdescricao write Setdescricao;
    property descricaoHasValue: Boolean read FdescricaoHasValue write FdescricaoHasValue;
  end;
  
  TCnpjRepresentanteLegal = class
  private
    Fcpf: string;
    FcpfHasValue: Boolean;
    Fnome: string;
    FnomeHasValue: Boolean;
    Fqualificacao: TCnpjQualificacaoSocio;
    procedure Setcpf(const Value: string);
    procedure Setnome(const Value: string);
    procedure Setqualificacao(const Value: TCnpjQualificacaoSocio);
  public
    destructor Destroy; override;
    property cpf: string read Fcpf write Setcpf;
    property cpfHasValue: Boolean read FcpfHasValue write FcpfHasValue;
    property nome: string read Fnome write Setnome;
    property nomeHasValue: Boolean read FnomeHasValue write FnomeHasValue;
    property qualificacao: TCnpjQualificacaoSocio read Fqualificacao write Setqualificacao;
  end;
  
  TCnpjFaixaEtaria = class
  private
    Fcodigo: string;
    FcodigoHasValue: Boolean;
    Fdescricao: string;
    FdescricaoHasValue: Boolean;
    procedure Setcodigo(const Value: string);
    procedure Setdescricao(const Value: string);
  public
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    property descricao: string read Fdescricao write Setdescricao;
    property descricaoHasValue: Boolean read FdescricaoHasValue write FdescricaoHasValue;
  end;
  
  TCnpjSocio = class
  private
    Fidentificador_socio: TCnpjIdentificadorSocio;
    Fnome: string;
    FnomeHasValue: Boolean;
    Fcpf_cnpj: string;
    Fcpf_cnpjHasValue: Boolean;
    Fqualificacao: TCnpjQualificacaoSocio;
    Fdata_entrada_sociedade: TDate;
    Fdata_entrada_sociedadeHasValue: Boolean;
    Fpais: TCnpjPais;
    Frepresentante_legal: TCnpjRepresentanteLegal;
    Ffaixa_etaria: TCnpjFaixaEtaria;
    procedure Setidentificador_socio(const Value: TCnpjIdentificadorSocio);
    procedure Setnome(const Value: string);
    procedure Setcpf_cnpj(const Value: string);
    procedure Setqualificacao(const Value: TCnpjQualificacaoSocio);
    procedure Setdata_entrada_sociedade(const Value: TDate);
    procedure Setpais(const Value: TCnpjPais);
    procedure Setrepresentante_legal(const Value: TCnpjRepresentanteLegal);
    procedure Setfaixa_etaria(const Value: TCnpjFaixaEtaria);
  public
    destructor Destroy; override;
    property identificador_socio: TCnpjIdentificadorSocio read Fidentificador_socio write Setidentificador_socio;
    property nome: string read Fnome write Setnome;
    property nomeHasValue: Boolean read FnomeHasValue write FnomeHasValue;
    property cpf_cnpj: string read Fcpf_cnpj write Setcpf_cnpj;
    property cpf_cnpjHasValue: Boolean read Fcpf_cnpjHasValue write Fcpf_cnpjHasValue;
    property qualificacao: TCnpjQualificacaoSocio read Fqualificacao write Setqualificacao;
    property data_entrada_sociedade: TDate read Fdata_entrada_sociedade write Setdata_entrada_sociedade;
    property data_entrada_sociedadeHasValue: Boolean read Fdata_entrada_sociedadeHasValue write Fdata_entrada_sociedadeHasValue;
    property pais: TCnpjPais read Fpais write Setpais;
    property representante_legal: TCnpjRepresentanteLegal read Frepresentante_legal write Setrepresentante_legal;
    property faixa_etaria: TCnpjFaixaEtaria read Ffaixa_etaria write Setfaixa_etaria;
  end;
  
  TCnpjSocioList = class(TObjectList<TCnpjSocio>)
  end;
  
  TCnpjEmpresa = class
  private
    Fcnpj: string;
    FcnpjHasValue: Boolean;
    Frazao_social: string;
    Frazao_socialHasValue: Boolean;
    Fnome_fantasia: string;
    Fnome_fantasiaHasValue: Boolean;
    Fdata_inicio_atividade: TDate;
    Fdata_inicio_atividadeHasValue: Boolean;
    Fmatriz: Boolean;
    FmatrizHasValue: Boolean;
    Fnatureza_juridica: TCnpjNaturezaJuridica;
    Fcapital_social: Double;
    Fcapital_socialHasValue: Boolean;
    Fporte: TCnpjPorteEmpresa;
    Fente_federativo_responsavel: string;
    Fente_federativo_responsavelHasValue: Boolean;
    Fsituacao_cadastral: TCnpjSituacaoCadastral;
    Fmotivo_situacao_cadastral: TCnpjSituacaoCadastral;
    Fnome_da_cidade_no_exterior: string;
    Fnome_da_cidade_no_exteriorHasValue: Boolean;
    Fpais: TCnpjPais;
    Fatividade_principal: TCnpjCnae;
    Fatividades_secundarias: TCnpjCnaeList;
    Fendereco: TCnpjEndereco;
    Ftelefones: TCnpjTelefoneList;
    Femail: string;
    FemailHasValue: Boolean;
    Fsituacao_especial: TCnpjSituacaoCadastral;
    Fsimples: TCnpjOpcaoSimples;
    Fsimei: TCnpjOpcaoSimples;
    Fsocios: TCnpjSocioList;
    procedure Setcnpj(const Value: string);
    procedure Setrazao_social(const Value: string);
    procedure Setnome_fantasia(const Value: string);
    procedure Setdata_inicio_atividade(const Value: TDate);
    procedure Setmatriz(const Value: Boolean);
    procedure Setnatureza_juridica(const Value: TCnpjNaturezaJuridica);
    procedure Setcapital_social(const Value: Double);
    procedure Setporte(const Value: TCnpjPorteEmpresa);
    procedure Setente_federativo_responsavel(const Value: string);
    procedure Setsituacao_cadastral(const Value: TCnpjSituacaoCadastral);
    procedure Setmotivo_situacao_cadastral(const Value: TCnpjSituacaoCadastral);
    procedure Setnome_da_cidade_no_exterior(const Value: string);
    procedure Setpais(const Value: TCnpjPais);
    procedure Setatividade_principal(const Value: TCnpjCnae);
    procedure Setatividades_secundarias(const Value: TCnpjCnaeList);
    procedure Setendereco(const Value: TCnpjEndereco);
    procedure Settelefones(const Value: TCnpjTelefoneList);
    procedure Setemail(const Value: string);
    procedure Setsituacao_especial(const Value: TCnpjSituacaoCadastral);
    procedure Setsimples(const Value: TCnpjOpcaoSimples);
    procedure Setsimei(const Value: TCnpjOpcaoSimples);
    procedure Setsocios(const Value: TCnpjSocioList);
  public
    destructor Destroy; override;
    property cnpj: string read Fcnpj write Setcnpj;
    property cnpjHasValue: Boolean read FcnpjHasValue write FcnpjHasValue;
    property razao_social: string read Frazao_social write Setrazao_social;
    property razao_socialHasValue: Boolean read Frazao_socialHasValue write Frazao_socialHasValue;
    property nome_fantasia: string read Fnome_fantasia write Setnome_fantasia;
    property nome_fantasiaHasValue: Boolean read Fnome_fantasiaHasValue write Fnome_fantasiaHasValue;
    property data_inicio_atividade: TDate read Fdata_inicio_atividade write Setdata_inicio_atividade;
    property data_inicio_atividadeHasValue: Boolean read Fdata_inicio_atividadeHasValue write Fdata_inicio_atividadeHasValue;
    property matriz: Boolean read Fmatriz write Setmatriz;
    property matrizHasValue: Boolean read FmatrizHasValue write FmatrizHasValue;
    property natureza_juridica: TCnpjNaturezaJuridica read Fnatureza_juridica write Setnatureza_juridica;
    property capital_social: Double read Fcapital_social write Setcapital_social;
    property capital_socialHasValue: Boolean read Fcapital_socialHasValue write Fcapital_socialHasValue;
    property porte: TCnpjPorteEmpresa read Fporte write Setporte;
    property ente_federativo_responsavel: string read Fente_federativo_responsavel write Setente_federativo_responsavel;
    property ente_federativo_responsavelHasValue: Boolean read Fente_federativo_responsavelHasValue write Fente_federativo_responsavelHasValue;
    property situacao_cadastral: TCnpjSituacaoCadastral read Fsituacao_cadastral write Setsituacao_cadastral;
    property motivo_situacao_cadastral: TCnpjSituacaoCadastral read Fmotivo_situacao_cadastral write Setmotivo_situacao_cadastral;
    property nome_da_cidade_no_exterior: string read Fnome_da_cidade_no_exterior write Setnome_da_cidade_no_exterior;
    property nome_da_cidade_no_exteriorHasValue: Boolean read Fnome_da_cidade_no_exteriorHasValue write Fnome_da_cidade_no_exteriorHasValue;
    property pais: TCnpjPais read Fpais write Setpais;
    property atividade_principal: TCnpjCnae read Fatividade_principal write Setatividade_principal;
    property atividades_secundarias: TCnpjCnaeList read Fatividades_secundarias write Setatividades_secundarias;
    property endereco: TCnpjEndereco read Fendereco write Setendereco;
    property telefones: TCnpjTelefoneList read Ftelefones write Settelefones;
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
    property situacao_especial: TCnpjSituacaoCadastral read Fsituacao_especial write Setsituacao_especial;
    property simples: TCnpjOpcaoSimples read Fsimples write Setsimples;
    property simei: TCnpjOpcaoSimples read Fsimei write Setsimei;
    property socios: TCnpjSocioList read Fsocios write Setsocios;
  end;
  
  TCepEndereco = class
  private
    Fbairro: string;
    FbairroHasValue: Boolean;
    Fcep: string;
    FcepHasValue: Boolean;
    Fcodigo_ibge: string;
    Fcodigo_ibgeHasValue: Boolean;
    Fcomplemento: string;
    FcomplementoHasValue: Boolean;
    Flogradouro: string;
    FlogradouroHasValue: Boolean;
    Fmunicipio: string;
    FmunicipioHasValue: Boolean;
    Ftipo_logradouro: string;
    Ftipo_logradouroHasValue: Boolean;
    Fuf: string;
    FufHasValue: Boolean;
    procedure Setbairro(const Value: string);
    procedure Setcep(const Value: string);
    procedure Setcodigo_ibge(const Value: string);
    procedure Setcomplemento(const Value: string);
    procedure Setlogradouro(const Value: string);
    procedure Setmunicipio(const Value: string);
    procedure Settipo_logradouro(const Value: string);
    procedure Setuf(const Value: string);
  public
    property bairro: string read Fbairro write Setbairro;
    property bairroHasValue: Boolean read FbairroHasValue write FbairroHasValue;
    property cep: string read Fcep write Setcep;
    property cepHasValue: Boolean read FcepHasValue write FcepHasValue;
    property codigo_ibge: string read Fcodigo_ibge write Setcodigo_ibge;
    property codigo_ibgeHasValue: Boolean read Fcodigo_ibgeHasValue write Fcodigo_ibgeHasValue;
    property complemento: string read Fcomplemento write Setcomplemento;
    property complementoHasValue: Boolean read FcomplementoHasValue write FcomplementoHasValue;
    property logradouro: string read Flogradouro write Setlogradouro;
    property logradouroHasValue: Boolean read FlogradouroHasValue write FlogradouroHasValue;
    property municipio: string read Fmunicipio write Setmunicipio;
    property municipioHasValue: Boolean read FmunicipioHasValue write FmunicipioHasValue;
    property tipo_logradouro: string read Ftipo_logradouro write Settipo_logradouro;
    property tipo_logradouroHasValue: Boolean read Ftipo_logradouroHasValue write Ftipo_logradouroHasValue;
    property uf: string read Fuf write Setuf;
    property ufHasValue: Boolean read FufHasValue write FufHasValue;
  end;
  
implementation

{ TEmpresaEndereco }

procedure TEmpresaEndereco.Setlogradouro(const Value: string);
begin
  Flogradouro := Value;
  FlogradouroHasValue := True;
end;

procedure TEmpresaEndereco.Setnumero(const Value: string);
begin
  Fnumero := Value;
  FnumeroHasValue := True;
end;

procedure TEmpresaEndereco.Setcomplemento(const Value: string);
begin
  Fcomplemento := Value;
  FcomplementoHasValue := True;
end;

procedure TEmpresaEndereco.Setbairro(const Value: string);
begin
  Fbairro := Value;
  FbairroHasValue := True;
end;

procedure TEmpresaEndereco.Setcodigo_municipio(const Value: string);
begin
  Fcodigo_municipio := Value;
  Fcodigo_municipioHasValue := True;
end;

procedure TEmpresaEndereco.Setcidade(const Value: string);
begin
  Fcidade := Value;
  FcidadeHasValue := True;
end;

procedure TEmpresaEndereco.Setuf(const Value: string);
begin
  Fuf := Value;
  FufHasValue := True;
end;

procedure TEmpresaEndereco.Setcodigo_pais(const Value: string);
begin
  Fcodigo_pais := Value;
  Fcodigo_paisHasValue := True;
end;

procedure TEmpresaEndereco.Setpais(const Value: string);
begin
  Fpais := Value;
  FpaisHasValue := True;
end;

procedure TEmpresaEndereco.Setcep(const Value: string);
begin
  Fcep := Value;
  FcepHasValue := True;
end;

{ TEmpresaConfigNfe }

procedure TEmpresaConfigNfe.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

{ TEmpresaConfigNfceSefaz }

procedure TEmpresaConfigNfceSefaz.Setid_csc(const Value: Integer);
begin
  Fid_csc := Value;
  Fid_cscHasValue := True;
end;

procedure TEmpresaConfigNfceSefaz.Setcsc(const Value: string);
begin
  Fcsc := Value;
  FcscHasValue := True;
end;

{ TEmpresaConfigNfce }

destructor TEmpresaConfigNfce.Destroy;
begin
  Fsefaz.Free;
  inherited;
end;

procedure TEmpresaConfigNfce.Setsefaz(const Value: TEmpresaConfigNfceSefaz);
begin
  if Value <> Fsefaz then
  begin
    Fsefaz.Free;
    Fsefaz := Value;
  end;
end;

procedure TEmpresaConfigNfce.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

{ TEmpresaConfigMdfe }

procedure TEmpresaConfigMdfe.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

{ TEmpresaConfigCte }

procedure TEmpresaConfigCte.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

{ TEmpresaConfigCteOs }

procedure TEmpresaConfigCteOs.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

{ TEmpresaConfigRps }

procedure TEmpresaConfigRps.Setlote(const Value: Integer);
begin
  Flote := Value;
  FloteHasValue := True;
end;

procedure TEmpresaConfigRps.Setserie(const Value: string);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TEmpresaConfigRps.Setnumero(const Value: Integer);
begin
  Fnumero := Value;
  FnumeroHasValue := True;
end;

{ TEmpresaConfigPrefeitura }

procedure TEmpresaConfigPrefeitura.Setlogin(const Value: string);
begin
  Flogin := Value;
  FloginHasValue := True;
end;

procedure TEmpresaConfigPrefeitura.Setsenha(const Value: string);
begin
  Fsenha := Value;
  FsenhaHasValue := True;
end;

procedure TEmpresaConfigPrefeitura.Settoken(const Value: string);
begin
  Ftoken := Value;
  FtokenHasValue := True;
end;

{ TEmpresaConfigNfse }

destructor TEmpresaConfigNfse.Destroy;
begin
  Fprefeitura.Free;
  Frps.Free;
  inherited;
end;

procedure TEmpresaConfigNfse.Setrps(const Value: TEmpresaConfigRps);
begin
  if Value <> Frps then
  begin
    Frps.Free;
    Frps := Value;
  end;
end;

procedure TEmpresaConfigNfse.Setprefeitura(const Value: TEmpresaConfigPrefeitura);
begin
  if Value <> Fprefeitura then
  begin
    Fprefeitura.Free;
    Fprefeitura := Value;
  end;
end;

procedure TEmpresaConfigNfse.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

{ TEmpresa }

destructor TEmpresa.Destroy;
begin
  Fnfse.Free;
  Fcte_os.Free;
  Fcte.Free;
  Fmdfe.Free;
  Fnfce.Free;
  Fnfe.Free;
  Fendereco.Free;
  inherited;
end;

procedure TEmpresa.Setcpf_cnpj(const Value: string);
begin
  Fcpf_cnpj := Value;
  Fcpf_cnpjHasValue := True;
end;

procedure TEmpresa.Setcreated_at(const Value: TDateTime);
begin
  Fcreated_at := Value;
  Fcreated_atHasValue := True;
end;

procedure TEmpresa.Setupdated_at(const Value: TDateTime);
begin
  Fupdated_at := Value;
  Fupdated_atHasValue := True;
end;

procedure TEmpresa.Setinscricao_estadual(const Value: string);
begin
  Finscricao_estadual := Value;
  Finscricao_estadualHasValue := True;
end;

procedure TEmpresa.Setinscricao_municipal(const Value: string);
begin
  Finscricao_municipal := Value;
  Finscricao_municipalHasValue := True;
end;

procedure TEmpresa.Setnome_razao_social(const Value: string);
begin
  Fnome_razao_social := Value;
  Fnome_razao_socialHasValue := True;
end;

procedure TEmpresa.Setnome_fantasia(const Value: string);
begin
  Fnome_fantasia := Value;
  Fnome_fantasiaHasValue := True;
end;

procedure TEmpresa.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

procedure TEmpresa.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
end;

procedure TEmpresa.Setendereco(const Value: TEmpresaEndereco);
begin
  if Value <> Fendereco then
  begin
    Fendereco.Free;
    Fendereco := Value;
  end;
end;

procedure TEmpresa.Setoptante_simples_nacional(const Value: Boolean);
begin
  Foptante_simples_nacional := Value;
  Foptante_simples_nacionalHasValue := True;
end;

procedure TEmpresa.Setregime_tributacao(const Value: Integer);
begin
  Fregime_tributacao := Value;
  Fregime_tributacaoHasValue := True;
end;

procedure TEmpresa.Setregime_especial_tributacao(const Value: Integer);
begin
  Fregime_especial_tributacao := Value;
  Fregime_especial_tributacaoHasValue := True;
end;

procedure TEmpresa.Setincentivo_fiscal(const Value: Boolean);
begin
  Fincentivo_fiscal := Value;
  Fincentivo_fiscalHasValue := True;
end;

procedure TEmpresa.Setincentivador_cultural(const Value: Boolean);
begin
  Fincentivador_cultural := Value;
  Fincentivador_culturalHasValue := True;
end;

procedure TEmpresa.Setnfe(const Value: TEmpresaConfigNfe);
begin
  if Value <> Fnfe then
  begin
    Fnfe.Free;
    Fnfe := Value;
  end;
end;

procedure TEmpresa.Setnfce(const Value: TEmpresaConfigNfce);
begin
  if Value <> Fnfce then
  begin
    Fnfce.Free;
    Fnfce := Value;
  end;
end;

procedure TEmpresa.Setmdfe(const Value: TEmpresaConfigMdfe);
begin
  if Value <> Fmdfe then
  begin
    Fmdfe.Free;
    Fmdfe := Value;
  end;
end;

procedure TEmpresa.Setcte(const Value: TEmpresaConfigCte);
begin
  if Value <> Fcte then
  begin
    Fcte.Free;
    Fcte := Value;
  end;
end;

procedure TEmpresa.Setcte_os(const Value: TEmpresaConfigCteOs);
begin
  if Value <> Fcte_os then
  begin
    Fcte_os.Free;
    Fcte_os := Value;
  end;
end;

procedure TEmpresa.Setnfse(const Value: TEmpresaConfigNfse);
begin
  if Value <> Fnfse then
  begin
    Fnfse.Free;
    Fnfse := Value;
  end;
end;

{ TEmpresaListagem }

destructor TEmpresaListagem.Destroy;
begin
  Fdata.Free;
  inherited;
end;

procedure TEmpresaListagem.Set_count(const Value: Integer);
begin
  F_count := Value;
  F_countHasValue := True;
end;

procedure TEmpresaListagem.Setdata(const Value: TEmpresaList);
begin
  if Value <> Fdata then
  begin
    Fdata.Free;
    Fdata := Value;
  end;
end;

{ TEmpresaPedidoCadastroCertificado }

procedure TEmpresaPedidoCadastroCertificado.Setcertificado(const Value: TBytes);
begin
  Fcertificado := Value;
  FcertificadoHasValue := True;
end;

procedure TEmpresaPedidoCadastroCertificado.Setpassword(const Value: string);
begin
  Fpassword := Value;
  FpasswordHasValue := True;
end;

{ TEmpresaCertificado }

procedure TEmpresaCertificado.Setserial_number(const Value: string);
begin
  Fserial_number := Value;
  Fserial_numberHasValue := True;
end;

procedure TEmpresaCertificado.Setissuer_name(const Value: string);
begin
  Fissuer_name := Value;
  Fissuer_nameHasValue := True;
end;

procedure TEmpresaCertificado.Setnot_valid_before(const Value: TDateTime);
begin
  Fnot_valid_before := Value;
  Fnot_valid_beforeHasValue := True;
end;

procedure TEmpresaCertificado.Setnot_valid_after(const Value: TDateTime);
begin
  Fnot_valid_after := Value;
  Fnot_valid_afterHasValue := True;
end;

procedure TEmpresaCertificado.Setthumbprint(const Value: string);
begin
  Fthumbprint := Value;
  FthumbprintHasValue := True;
end;

procedure TEmpresaCertificado.Setsubject_name(const Value: string);
begin
  Fsubject_name := Value;
  Fsubject_nameHasValue := True;
end;

procedure TEmpresaCertificado.Setcpf_cnpj(const Value: string);
begin
  Fcpf_cnpj := Value;
  Fcpf_cnpjHasValue := True;
end;

procedure TEmpresaCertificado.Setnome_razao_social(const Value: string);
begin
  Fnome_razao_social := Value;
  Fnome_razao_socialHasValue := True;
end;

{ TRpsIdentificacaoPrestador }

procedure TRpsIdentificacaoPrestador.Setcpf_cnpj(const Value: string);
begin
  Fcpf_cnpj := Value;
  Fcpf_cnpjHasValue := True;
end;

{ TRpsDadosTomador }

destructor TRpsDadosTomador.Destroy;
begin
  Fendereco.Free;
  inherited;
end;

procedure TRpsDadosTomador.Setcpf_cnpj(const Value: string);
begin
  Fcpf_cnpj := Value;
  Fcpf_cnpjHasValue := True;
end;

procedure TRpsDadosTomador.Setinscricao_municipal(const Value: string);
begin
  Finscricao_municipal := Value;
  Finscricao_municipalHasValue := True;
end;

procedure TRpsDadosTomador.Setnome_razao_social(const Value: string);
begin
  Fnome_razao_social := Value;
  Fnome_razao_socialHasValue := True;
end;

procedure TRpsDadosTomador.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

procedure TRpsDadosTomador.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
end;

procedure TRpsDadosTomador.Setendereco(const Value: TEmpresaEndereco);
begin
  if Value <> Fendereco then
  begin
    Fendereco.Free;
    Fendereco := Value;
  end;
end;

{ TRpsDadosIntermediario }

procedure TRpsDadosIntermediario.Setcpf_cnpj(const Value: string);
begin
  Fcpf_cnpj := Value;
  Fcpf_cnpjHasValue := True;
end;

procedure TRpsDadosIntermediario.Setnome_razao_social(const Value: string);
begin
  Fnome_razao_social := Value;
  Fnome_razao_socialHasValue := True;
end;

procedure TRpsDadosIntermediario.Setinscricao_municipal(const Value: string);
begin
  Finscricao_municipal := Value;
  Finscricao_municipalHasValue := True;
end;

{ TRpsDadosConstrucaoCivil }

procedure TRpsDadosConstrucaoCivil.Setcodigo_obra(const Value: string);
begin
  Fcodigo_obra := Value;
  Fcodigo_obraHasValue := True;
end;

procedure TRpsDadosConstrucaoCivil.Setart(const Value: string);
begin
  Fart := Value;
  FartHasValue := True;
end;

{ TRpsServicoValores }

procedure TRpsServicoValores.Setvalor_unitario(const Value: Double);
begin
  Fvalor_unitario := Value;
  Fvalor_unitarioHasValue := True;
end;

procedure TRpsServicoValores.Setvalor_servicos(const Value: Double);
begin
  Fvalor_servicos := Value;
  Fvalor_servicosHasValue := True;
end;

procedure TRpsServicoValores.Setvalor_deducoes(const Value: Double);
begin
  Fvalor_deducoes := Value;
  Fvalor_deducoesHasValue := True;
end;

procedure TRpsServicoValores.Setvalor_pis(const Value: Double);
begin
  Fvalor_pis := Value;
  Fvalor_pisHasValue := True;
end;

procedure TRpsServicoValores.Setvalor_cofins(const Value: Double);
begin
  Fvalor_cofins := Value;
  Fvalor_cofinsHasValue := True;
end;

procedure TRpsServicoValores.Setvalor_inss(const Value: Double);
begin
  Fvalor_inss := Value;
  Fvalor_inssHasValue := True;
end;

procedure TRpsServicoValores.Setvalor_ir(const Value: Double);
begin
  Fvalor_ir := Value;
  Fvalor_irHasValue := True;
end;

procedure TRpsServicoValores.Setvalor_csll(const Value: Double);
begin
  Fvalor_csll := Value;
  Fvalor_csllHasValue := True;
end;

procedure TRpsServicoValores.Setvalor_outras_retencoes(const Value: Double);
begin
  Fvalor_outras_retencoes := Value;
  Fvalor_outras_retencoesHasValue := True;
end;

procedure TRpsServicoValores.Setvalor_iss(const Value: Double);
begin
  Fvalor_iss := Value;
  Fvalor_issHasValue := True;
end;

procedure TRpsServicoValores.Setvalor_iss_retido(const Value: Double);
begin
  Fvalor_iss_retido := Value;
  Fvalor_iss_retidoHasValue := True;
end;

procedure TRpsServicoValores.Setvalor_liquido(const Value: Double);
begin
  Fvalor_liquido := Value;
  Fvalor_liquidoHasValue := True;
end;

procedure TRpsServicoValores.Setaliquota_iss(const Value: Double);
begin
  Faliquota_iss := Value;
  Faliquota_issHasValue := True;
end;

procedure TRpsServicoValores.Setaliquota_pis(const Value: Double);
begin
  Faliquota_pis := Value;
  Faliquota_pisHasValue := True;
end;

procedure TRpsServicoValores.Setaliquota_cofins(const Value: Double);
begin
  Faliquota_cofins := Value;
  Faliquota_cofinsHasValue := True;
end;

procedure TRpsServicoValores.Setaliquota_inss(const Value: Double);
begin
  Faliquota_inss := Value;
  Faliquota_inssHasValue := True;
end;

procedure TRpsServicoValores.Setaliquota_ir(const Value: Double);
begin
  Faliquota_ir := Value;
  Faliquota_irHasValue := True;
end;

procedure TRpsServicoValores.Setaliquota_csll(const Value: Double);
begin
  Faliquota_csll := Value;
  Faliquota_csllHasValue := True;
end;

procedure TRpsServicoValores.Setdesconto_incondicionado(const Value: Double);
begin
  Fdesconto_incondicionado := Value;
  Fdesconto_incondicionadoHasValue := True;
end;

procedure TRpsServicoValores.Setdesconto_condicionado(const Value: Double);
begin
  Fdesconto_condicionado := Value;
  Fdesconto_condicionadoHasValue := True;
end;

{ TRpsDadosServico }

destructor TRpsDadosServico.Destroy;
begin
  Fvalores.Free;
  inherited;
end;

procedure TRpsDadosServico.Setiss_retido(const Value: Boolean);
begin
  Fiss_retido := Value;
  Fiss_retidoHasValue := True;
end;

procedure TRpsDadosServico.Setresponsavel_retencao(const Value: Integer);
begin
  Fresponsavel_retencao := Value;
  Fresponsavel_retencaoHasValue := True;
end;

procedure TRpsDadosServico.Setitem_lista_servico(const Value: string);
begin
  Fitem_lista_servico := Value;
  Fitem_lista_servicoHasValue := True;
end;

procedure TRpsDadosServico.Setcodigo_cnae(const Value: string);
begin
  Fcodigo_cnae := Value;
  Fcodigo_cnaeHasValue := True;
end;

procedure TRpsDadosServico.Setcodigo_tributacao_municipio(const Value: string);
begin
  Fcodigo_tributacao_municipio := Value;
  Fcodigo_tributacao_municipioHasValue := True;
end;

procedure TRpsDadosServico.Setdiscriminacao(const Value: string);
begin
  Fdiscriminacao := Value;
  FdiscriminacaoHasValue := True;
end;

procedure TRpsDadosServico.Setcodigo_municipio(const Value: string);
begin
  Fcodigo_municipio := Value;
  Fcodigo_municipioHasValue := True;
end;

procedure TRpsDadosServico.Setcodigo_pais(const Value: string);
begin
  Fcodigo_pais := Value;
  Fcodigo_paisHasValue := True;
end;

procedure TRpsDadosServico.Settipo_tributacao(const Value: Integer);
begin
  Ftipo_tributacao := Value;
  Ftipo_tributacaoHasValue := True;
end;

procedure TRpsDadosServico.Setexigibilidade_iss(const Value: Integer);
begin
  Fexigibilidade_iss := Value;
  Fexigibilidade_issHasValue := True;
end;

procedure TRpsDadosServico.Setcodigo_municipio_incidencia(const Value: string);
begin
  Fcodigo_municipio_incidencia := Value;
  Fcodigo_municipio_incidenciaHasValue := True;
end;

procedure TRpsDadosServico.Setnumero_processo(const Value: string);
begin
  Fnumero_processo := Value;
  Fnumero_processoHasValue := True;
end;

procedure TRpsDadosServico.Setunidade(const Value: string);
begin
  Funidade := Value;
  FunidadeHasValue := True;
end;

procedure TRpsDadosServico.Setquantidade(const Value: Double);
begin
  Fquantidade := Value;
  FquantidadeHasValue := True;
end;

procedure TRpsDadosServico.Setvalores(const Value: TRpsServicoValores);
begin
  if Value <> Fvalores then
  begin
    Fvalores.Free;
    Fvalores := Value;
  end;
end;

{ TRpsPedidoEmissao }

destructor TRpsPedidoEmissao.Destroy;
begin
  Fservicos.Free;
  Fconstrucao_civil.Free;
  Fintermediario.Free;
  Ftomador.Free;
  Fprestador.Free;
  inherited;
end;

procedure TRpsPedidoEmissao.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
end;

procedure TRpsPedidoEmissao.Setdata_emissao(const Value: TDateTime);
begin
  Fdata_emissao := Value;
  Fdata_emissaoHasValue := True;
end;

procedure TRpsPedidoEmissao.Setcompetencia(const Value: TDate);
begin
  Fcompetencia := Value;
  FcompetenciaHasValue := True;
end;

procedure TRpsPedidoEmissao.Setnatureza_tributacao(const Value: Integer);
begin
  Fnatureza_tributacao := Value;
  Fnatureza_tributacaoHasValue := True;
end;

procedure TRpsPedidoEmissao.Setprestador(const Value: TRpsIdentificacaoPrestador);
begin
  if Value <> Fprestador then
  begin
    Fprestador.Free;
    Fprestador := Value;
  end;
end;

procedure TRpsPedidoEmissao.Settomador(const Value: TRpsDadosTomador);
begin
  if Value <> Ftomador then
  begin
    Ftomador.Free;
    Ftomador := Value;
  end;
end;

procedure TRpsPedidoEmissao.Setintermediario(const Value: TRpsDadosIntermediario);
begin
  if Value <> Fintermediario then
  begin
    Fintermediario.Free;
    Fintermediario := Value;
  end;
end;

procedure TRpsPedidoEmissao.Setconstrucao_civil(const Value: TRpsDadosConstrucaoCivil);
begin
  if Value <> Fconstrucao_civil then
  begin
    Fconstrucao_civil.Free;
    Fconstrucao_civil := Value;
  end;
end;

procedure TRpsPedidoEmissao.Setservicos(const Value: TRpsDadosServicoList);
begin
  if Value <> Fservicos then
  begin
    Fservicos.Free;
    Fservicos := Value;
  end;
end;

{ TRpsPedidoEmissaoLote }

destructor TRpsPedidoEmissaoLote.Destroy;
begin
  Flista_rps.Free;
  inherited;
end;

procedure TRpsPedidoEmissaoLote.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TRpsPedidoEmissaoLote.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
end;

procedure TRpsPedidoEmissaoLote.Setlista_rps(const Value: TRpsPedidoEmissaoList);
begin
  if Value <> Flista_rps then
  begin
    Flista_rps.Free;
    Flista_rps := Value;
  end;
end;

{ TRpsIdentificacao }

procedure TRpsIdentificacao.Setnumero(const Value: string);
begin
  Fnumero := Value;
  FnumeroHasValue := True;
end;

procedure TRpsIdentificacao.Setserie(const Value: string);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TRpsIdentificacao.Settipo(const Value: string);
begin
  Ftipo := Value;
  FtipoHasValue := True;
end;

{ TRpsDados }

destructor TRpsDados.Destroy;
begin
  Fidentificacao_rps.Free;
  inherited;
end;

procedure TRpsDados.Setidentificacao_rps(const Value: TRpsIdentificacao);
begin
  if Value <> Fidentificacao_rps then
  begin
    Fidentificacao_rps.Free;
    Fidentificacao_rps := Value;
  end;
end;

procedure TRpsDados.Setdata_emissao(const Value: TDateTime);
begin
  Fdata_emissao := Value;
  Fdata_emissaoHasValue := True;
end;

{ TRpsDadosPrestador }

destructor TRpsDadosPrestador.Destroy;
begin
  Fendereco.Free;
  inherited;
end;

procedure TRpsDadosPrestador.Setcpf_cnpj(const Value: string);
begin
  Fcpf_cnpj := Value;
  Fcpf_cnpjHasValue := True;
end;

procedure TRpsDadosPrestador.Setinscricao_municipal(const Value: string);
begin
  Finscricao_municipal := Value;
  Finscricao_municipalHasValue := True;
end;

procedure TRpsDadosPrestador.Setnome_razao_social(const Value: string);
begin
  Fnome_razao_social := Value;
  Fnome_razao_socialHasValue := True;
end;

procedure TRpsDadosPrestador.Setnome_fantasia(const Value: string);
begin
  Fnome_fantasia := Value;
  Fnome_fantasiaHasValue := True;
end;

procedure TRpsDadosPrestador.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

procedure TRpsDadosPrestador.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
end;

procedure TRpsDadosPrestador.Setendereco(const Value: TEmpresaEndereco);
begin
  if Value <> Fendereco then
  begin
    Fendereco.Free;
    Fendereco := Value;
  end;
end;

procedure TRpsDadosPrestador.Setoptante_simples_nacional(const Value: Boolean);
begin
  Foptante_simples_nacional := Value;
  Foptante_simples_nacionalHasValue := True;
end;

procedure TRpsDadosPrestador.Setregime_tributacao(const Value: Integer);
begin
  Fregime_tributacao := Value;
  Fregime_tributacaoHasValue := True;
end;

procedure TRpsDadosPrestador.Setregime_especial_tributacao(const Value: Integer);
begin
  Fregime_especial_tributacao := Value;
  Fregime_especial_tributacaoHasValue := True;
end;

procedure TRpsDadosPrestador.Setincentivo_fiscal(const Value: Boolean);
begin
  Fincentivo_fiscal := Value;
  Fincentivo_fiscalHasValue := True;
end;

procedure TRpsDadosPrestador.Setincentivador_cultural(const Value: Boolean);
begin
  Fincentivador_cultural := Value;
  Fincentivador_culturalHasValue := True;
end;

{ TRps }

destructor TRps.Destroy;
begin
  Fservicos.Free;
  Fconstrucao_civil.Free;
  Fintermediario.Free;
  Ftomador.Free;
  Fprestador.Free;
  Frps.Free;
  inherited;
end;

procedure TRps.Setrps(const Value: TRpsDados);
begin
  if Value <> Frps then
  begin
    Frps.Free;
    Frps := Value;
  end;
end;

procedure TRps.Setcompetencia(const Value: TDate);
begin
  Fcompetencia := Value;
  FcompetenciaHasValue := True;
end;

procedure TRps.Setnatureza_tributacao(const Value: Integer);
begin
  Fnatureza_tributacao := Value;
  Fnatureza_tributacaoHasValue := True;
end;

procedure TRps.Setprestador(const Value: TRpsDadosPrestador);
begin
  if Value <> Fprestador then
  begin
    Fprestador.Free;
    Fprestador := Value;
  end;
end;

procedure TRps.Settomador(const Value: TRpsDadosTomador);
begin
  if Value <> Ftomador then
  begin
    Ftomador.Free;
    Ftomador := Value;
  end;
end;

procedure TRps.Setintermediario(const Value: TRpsDadosIntermediario);
begin
  if Value <> Fintermediario then
  begin
    Fintermediario.Free;
    Fintermediario := Value;
  end;
end;

procedure TRps.Setconstrucao_civil(const Value: TRpsDadosConstrucaoCivil);
begin
  if Value <> Fconstrucao_civil then
  begin
    Fconstrucao_civil.Free;
    Fconstrucao_civil := Value;
  end;
end;

procedure TRps.Setservicos(const Value: TRpsDadosServicoList);
begin
  if Value <> Fservicos then
  begin
    Fservicos.Free;
    Fservicos := Value;
  end;
end;

{ TNfseMensagemRetorno }

procedure TNfseMensagemRetorno.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
  FcodigoHasValue := True;
end;

procedure TNfseMensagemRetorno.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
  FdescricaoHasValue := True;
end;

procedure TNfseMensagemRetorno.Setcorrecao(const Value: string);
begin
  Fcorrecao := Value;
  FcorrecaoHasValue := True;
end;

{ TNfseCancelamento }

destructor TNfseCancelamento.Destroy;
begin
  Fmensagens.Free;
  inherited;
end;

procedure TNfseCancelamento.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TNfseCancelamento.Setstatus(const Value: string);
begin
  Fstatus := Value;
  FstatusHasValue := True;
end;

procedure TNfseCancelamento.Setdata_hora(const Value: TDateTime);
begin
  Fdata_hora := Value;
  Fdata_horaHasValue := True;
end;

procedure TNfseCancelamento.Setmensagens(const Value: TNfseMensagemRetornoList);
begin
  if Value <> Fmensagens then
  begin
    Fmensagens.Free;
    Fmensagens := Value;
  end;
end;

{ TNfse }

destructor TNfse.Destroy;
begin
  Fmensagens.Free;
  Fcancelamento.Free;
  Fdeclaracao_prestacao_servico.Free;
  inherited;
end;

procedure TNfse.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TNfse.Setcreated_at(const Value: TDateTime);
begin
  Fcreated_at := Value;
  Fcreated_atHasValue := True;
end;

procedure TNfse.Setstatus(const Value: string);
begin
  Fstatus := Value;
  FstatusHasValue := True;
end;

procedure TNfse.Setnumero(const Value: string);
begin
  Fnumero := Value;
  FnumeroHasValue := True;
end;

procedure TNfse.Setcodigo_verificacao(const Value: string);
begin
  Fcodigo_verificacao := Value;
  Fcodigo_verificacaoHasValue := True;
end;

procedure TNfse.Setlink_url(const Value: string);
begin
  Flink_url := Value;
  Flink_urlHasValue := True;
end;

procedure TNfse.Setdata_emissao(const Value: TDateTime);
begin
  Fdata_emissao := Value;
  Fdata_emissaoHasValue := True;
end;

procedure TNfse.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TNfse.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
end;

procedure TNfse.Setdeclaracao_prestacao_servico(const Value: TRps);
begin
  if Value <> Fdeclaracao_prestacao_servico then
  begin
    Fdeclaracao_prestacao_servico.Free;
    Fdeclaracao_prestacao_servico := Value;
  end;
end;

procedure TNfse.Setcancelamento(const Value: TNfseCancelamento);
begin
  if Value <> Fcancelamento then
  begin
    Fcancelamento.Free;
    Fcancelamento := Value;
  end;
end;

procedure TNfse.Setmensagens(const Value: TNfseMensagemRetornoList);
begin
  if Value <> Fmensagens then
  begin
    Fmensagens.Free;
    Fmensagens := Value;
  end;
end;

{ TRpsLote }

destructor TRpsLote.Destroy;
begin
  Fnotas.Free;
  inherited;
end;

procedure TRpsLote.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TRpsLote.Setcreated_at(const Value: TDateTime);
begin
  Fcreated_at := Value;
  Fcreated_atHasValue := True;
end;

procedure TRpsLote.Setstatus(const Value: string);
begin
  Fstatus := Value;
  FstatusHasValue := True;
end;

procedure TRpsLote.Setnumero(const Value: string);
begin
  Fnumero := Value;
  FnumeroHasValue := True;
end;

procedure TRpsLote.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TRpsLote.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
end;

procedure TRpsLote.Setnotas(const Value: TNfseList);
begin
  if Value <> Fnotas then
  begin
    Fnotas.Free;
    Fnotas := Value;
  end;
end;

{ TRpsLoteListagem }

destructor TRpsLoteListagem.Destroy;
begin
  Fdata.Free;
  inherited;
end;

procedure TRpsLoteListagem.Set_count(const Value: Integer);
begin
  F_count := Value;
  F_countHasValue := True;
end;

procedure TRpsLoteListagem.Setdata(const Value: TRpsLoteList);
begin
  if Value <> Fdata then
  begin
    Fdata.Free;
    Fdata := Value;
  end;
end;

{ TNfsePedidoEmissao }

destructor TNfsePedidoEmissao.Destroy;
begin
  Frps.Free;
  inherited;
end;

procedure TNfsePedidoEmissao.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TNfsePedidoEmissao.Setrps(const Value: TRpsPedidoEmissao);
begin
  if Value <> Frps then
  begin
    Frps.Free;
    Frps := Value;
  end;
end;

{ TNfseListagem }

destructor TNfseListagem.Destroy;
begin
  Fdata.Free;
  inherited;
end;

procedure TNfseListagem.Set_count(const Value: Integer);
begin
  F_count := Value;
  F_countHasValue := True;
end;

procedure TNfseListagem.Setdata(const Value: TNfseList);
begin
  if Value <> Fdata then
  begin
    Fdata.Free;
    Fdata := Value;
  end;
end;

{ TDfeSefazStatus }

procedure TDfeSefazStatus.Setautorizador(const Value: string);
begin
  Fautorizador := Value;
  FautorizadorHasValue := True;
end;

procedure TDfeSefazStatus.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TDfeSefazStatus.Setdata_hora_consulta(const Value: TDateTime);
begin
  Fdata_hora_consulta := Value;
  Fdata_hora_consultaHasValue := True;
end;

procedure TDfeSefazStatus.Setcodigo_status(const Value: Integer);
begin
  Fcodigo_status := Value;
  Fcodigo_statusHasValue := True;
end;

procedure TDfeSefazStatus.Setmotivo_status(const Value: string);
begin
  Fmotivo_status := Value;
  Fmotivo_statusHasValue := True;
end;

procedure TDfeSefazStatus.Settempo_medio_resposta(const Value: Integer);
begin
  Ftempo_medio_resposta := Value;
  Ftempo_medio_respostaHasValue := True;
end;

procedure TDfeSefazStatus.Setdata_hora_retorno(const Value: TDateTime);
begin
  Fdata_hora_retorno := Value;
  Fdata_hora_retornoHasValue := True;
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

procedure TCteSefazToma3.Settoma(const Value: Integer);
begin
  Ftoma := Value;
  FtomaHasValue := True;
end;

{ TCteSefazEndereco }

procedure TCteSefazEndereco.SetxLgr(const Value: string);
begin
  FxLgr := Value;
  FxLgrHasValue := True;
end;

procedure TCteSefazEndereco.Setnro(const Value: string);
begin
  Fnro := Value;
  FnroHasValue := True;
end;

procedure TCteSefazEndereco.SetxCpl(const Value: string);
begin
  FxCpl := Value;
  FxCplHasValue := True;
end;

procedure TCteSefazEndereco.SetxBairro(const Value: string);
begin
  FxBairro := Value;
  FxBairroHasValue := True;
end;

procedure TCteSefazEndereco.SetcMun(const Value: Integer);
begin
  FcMun := Value;
  FcMunHasValue := True;
end;

procedure TCteSefazEndereco.SetxMun(const Value: string);
begin
  FxMun := Value;
  FxMunHasValue := True;
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

procedure TCteSefazEndereco.SetcPais(const Value: Integer);
begin
  FcPais := Value;
  FcPaisHasValue := True;
end;

procedure TCteSefazEndereco.SetxPais(const Value: string);
begin
  FxPais := Value;
  FxPaisHasValue := True;
end;

{ TCteSefazToma4 }

destructor TCteSefazToma4.Destroy;
begin
  FenderToma.Free;
  inherited;
end;

procedure TCteSefazToma4.Settoma(const Value: Integer);
begin
  Ftoma := Value;
  FtomaHasValue := True;
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

procedure TCteSefazToma4.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TCteSefazToma4.SetxFant(const Value: string);
begin
  FxFant := Value;
  FxFantHasValue := True;
end;

procedure TCteSefazToma4.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

procedure TCteSefazToma4.SetenderToma(const Value: TCteSefazEndereco);
begin
  if Value <> FenderToma then
  begin
    FenderToma.Free;
    FenderToma := Value;
  end;
end;

procedure TCteSefazToma4.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
end;

{ TCteSefazIde }

destructor TCteSefazIde.Destroy;
begin
  Ftoma4.Free;
  Ftoma3.Free;
  inherited;
end;

procedure TCteSefazIde.SetcUF(const Value: Integer);
begin
  FcUF := Value;
  FcUFHasValue := True;
end;

procedure TCteSefazIde.SetcCT(const Value: Integer);
begin
  FcCT := Value;
  FcCTHasValue := True;
end;

procedure TCteSefazIde.SetCFOP(const Value: Integer);
begin
  FCFOP := Value;
  FCFOPHasValue := True;
end;

procedure TCteSefazIde.SetnatOp(const Value: string);
begin
  FnatOp := Value;
  FnatOpHasValue := True;
end;

procedure TCteSefazIde.Setmod(const Value: Integer);
begin
  Fmod := Value;
  FmodHasValue := True;
end;

procedure TCteSefazIde.Setserie(const Value: Integer);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TCteSefazIde.SetnCT(const Value: Integer);
begin
  FnCT := Value;
  FnCTHasValue := True;
end;

procedure TCteSefazIde.SetdhEmi(const Value: TDateTime);
begin
  FdhEmi := Value;
  FdhEmiHasValue := True;
end;

procedure TCteSefazIde.SettpImp(const Value: Integer);
begin
  FtpImp := Value;
  FtpImpHasValue := True;
end;

procedure TCteSefazIde.SettpEmis(const Value: Integer);
begin
  FtpEmis := Value;
  FtpEmisHasValue := True;
end;

procedure TCteSefazIde.SetcDV(const Value: Integer);
begin
  FcDV := Value;
  FcDVHasValue := True;
end;

procedure TCteSefazIde.SettpAmb(const Value: Integer);
begin
  FtpAmb := Value;
  FtpAmbHasValue := True;
end;

procedure TCteSefazIde.SettpCTe(const Value: Integer);
begin
  FtpCTe := Value;
  FtpCTeHasValue := True;
end;

procedure TCteSefazIde.SetprocEmi(const Value: Integer);
begin
  FprocEmi := Value;
  FprocEmiHasValue := True;
end;

procedure TCteSefazIde.SetverProc(const Value: string);
begin
  FverProc := Value;
  FverProcHasValue := True;
end;

procedure TCteSefazIde.SetindGlobalizado(const Value: Integer);
begin
  FindGlobalizado := Value;
  FindGlobalizadoHasValue := True;
end;

procedure TCteSefazIde.SetcMunEnv(const Value: Integer);
begin
  FcMunEnv := Value;
  FcMunEnvHasValue := True;
end;

procedure TCteSefazIde.SetxMunEnv(const Value: string);
begin
  FxMunEnv := Value;
  FxMunEnvHasValue := True;
end;

procedure TCteSefazIde.SetUFEnv(const Value: string);
begin
  FUFEnv := Value;
  FUFEnvHasValue := True;
end;

procedure TCteSefazIde.Setmodal(const Value: string);
begin
  Fmodal := Value;
  FmodalHasValue := True;
end;

procedure TCteSefazIde.SettpServ(const Value: Integer);
begin
  FtpServ := Value;
  FtpServHasValue := True;
end;

procedure TCteSefazIde.SetcMunIni(const Value: Integer);
begin
  FcMunIni := Value;
  FcMunIniHasValue := True;
end;

procedure TCteSefazIde.SetxMunIni(const Value: string);
begin
  FxMunIni := Value;
  FxMunIniHasValue := True;
end;

procedure TCteSefazIde.SetUFIni(const Value: string);
begin
  FUFIni := Value;
  FUFIniHasValue := True;
end;

procedure TCteSefazIde.SetcMunFim(const Value: Integer);
begin
  FcMunFim := Value;
  FcMunFimHasValue := True;
end;

procedure TCteSefazIde.SetxMunFim(const Value: string);
begin
  FxMunFim := Value;
  FxMunFimHasValue := True;
end;

procedure TCteSefazIde.SetUFFim(const Value: string);
begin
  FUFFim := Value;
  FUFFimHasValue := True;
end;

procedure TCteSefazIde.Setretira(const Value: Integer);
begin
  Fretira := Value;
  FretiraHasValue := True;
end;

procedure TCteSefazIde.SetxDetRetira(const Value: string);
begin
  FxDetRetira := Value;
  FxDetRetiraHasValue := True;
end;

procedure TCteSefazIde.SetindIEToma(const Value: Integer);
begin
  FindIEToma := Value;
  FindIETomaHasValue := True;
end;

procedure TCteSefazIde.Settoma3(const Value: TCteSefazToma3);
begin
  if Value <> Ftoma3 then
  begin
    Ftoma3.Free;
    Ftoma3 := Value;
  end;
end;

procedure TCteSefazIde.Settoma4(const Value: TCteSefazToma4);
begin
  if Value <> Ftoma4 then
  begin
    Ftoma4.Free;
    Ftoma4 := Value;
  end;
end;

procedure TCteSefazIde.SetdhCont(const Value: TDateTime);
begin
  FdhCont := Value;
  FdhContHasValue := True;
end;

procedure TCteSefazIde.SetxJust(const Value: string);
begin
  FxJust := Value;
  FxJustHasValue := True;
end;

{ TCteSefazPass }

procedure TCteSefazPass.SetxPass(const Value: string);
begin
  FxPass := Value;
  FxPassHasValue := True;
end;

{ TCteSefazFluxo }

destructor TCteSefazFluxo.Destroy;
begin
  Fpass.Free;
  inherited;
end;

procedure TCteSefazFluxo.SetxOrig(const Value: string);
begin
  FxOrig := Value;
  FxOrigHasValue := True;
end;

procedure TCteSefazFluxo.Setpass(const Value: TCteSefazPassList);
begin
  if Value <> Fpass then
  begin
    Fpass.Free;
    Fpass := Value;
  end;
end;

procedure TCteSefazFluxo.SetxDest(const Value: string);
begin
  FxDest := Value;
  FxDestHasValue := True;
end;

procedure TCteSefazFluxo.SetxRota(const Value: string);
begin
  FxRota := Value;
  FxRotaHasValue := True;
end;

{ TCteSefazSemData }

procedure TCteSefazSemData.SettpPer(const Value: Integer);
begin
  FtpPer := Value;
  FtpPerHasValue := True;
end;

{ TCteSefazComData }

procedure TCteSefazComData.SettpPer(const Value: Integer);
begin
  FtpPer := Value;
  FtpPerHasValue := True;
end;

procedure TCteSefazComData.SetdProg(const Value: TDate);
begin
  FdProg := Value;
  FdProgHasValue := True;
end;

{ TCteSefazNoPeriodo }

procedure TCteSefazNoPeriodo.SettpPer(const Value: Integer);
begin
  FtpPer := Value;
  FtpPerHasValue := True;
end;

procedure TCteSefazNoPeriodo.SetdIni(const Value: TDate);
begin
  FdIni := Value;
  FdIniHasValue := True;
end;

procedure TCteSefazNoPeriodo.SetdFim(const Value: TDate);
begin
  FdFim := Value;
  FdFimHasValue := True;
end;

{ TCteSefazSemHora }

procedure TCteSefazSemHora.SettpHor(const Value: Integer);
begin
  FtpHor := Value;
  FtpHorHasValue := True;
end;

{ TCteSefazComHora }

procedure TCteSefazComHora.SettpHor(const Value: Integer);
begin
  FtpHor := Value;
  FtpHorHasValue := True;
end;

procedure TCteSefazComHora.SethProg(const Value: string);
begin
  FhProg := Value;
  FhProgHasValue := True;
end;

{ TCteSefazNoInter }

procedure TCteSefazNoInter.SettpHor(const Value: Integer);
begin
  FtpHor := Value;
  FtpHorHasValue := True;
end;

procedure TCteSefazNoInter.SethIni(const Value: string);
begin
  FhIni := Value;
  FhIniHasValue := True;
end;

procedure TCteSefazNoInter.SethFim(const Value: string);
begin
  FhFim := Value;
  FhFimHasValue := True;
end;

{ TCteSefazEntrega }

destructor TCteSefazEntrega.Destroy;
begin
  FnoInter.Free;
  FcomHora.Free;
  FsemHora.Free;
  FnoPeriodo.Free;
  FcomData.Free;
  FsemData.Free;
  inherited;
end;

procedure TCteSefazEntrega.SetsemData(const Value: TCteSefazSemData);
begin
  if Value <> FsemData then
  begin
    FsemData.Free;
    FsemData := Value;
  end;
end;

procedure TCteSefazEntrega.SetcomData(const Value: TCteSefazComData);
begin
  if Value <> FcomData then
  begin
    FcomData.Free;
    FcomData := Value;
  end;
end;

procedure TCteSefazEntrega.SetnoPeriodo(const Value: TCteSefazNoPeriodo);
begin
  if Value <> FnoPeriodo then
  begin
    FnoPeriodo.Free;
    FnoPeriodo := Value;
  end;
end;

procedure TCteSefazEntrega.SetsemHora(const Value: TCteSefazSemHora);
begin
  if Value <> FsemHora then
  begin
    FsemHora.Free;
    FsemHora := Value;
  end;
end;

procedure TCteSefazEntrega.SetcomHora(const Value: TCteSefazComHora);
begin
  if Value <> FcomHora then
  begin
    FcomHora.Free;
    FcomHora := Value;
  end;
end;

procedure TCteSefazEntrega.SetnoInter(const Value: TCteSefazNoInter);
begin
  if Value <> FnoInter then
  begin
    FnoInter.Free;
    FnoInter := Value;
  end;
end;

{ TCteSefazObsCont }

procedure TCteSefazObsCont.SetxCampo(const Value: string);
begin
  FxCampo := Value;
  FxCampoHasValue := True;
end;

procedure TCteSefazObsCont.SetxTexto(const Value: string);
begin
  FxTexto := Value;
  FxTextoHasValue := True;
end;

{ TCteSefazObsFisco }

procedure TCteSefazObsFisco.SetxCampo(const Value: string);
begin
  FxCampo := Value;
  FxCampoHasValue := True;
end;

procedure TCteSefazObsFisco.SetxTexto(const Value: string);
begin
  FxTexto := Value;
  FxTextoHasValue := True;
end;

{ TCteSefazCompl }

destructor TCteSefazCompl.Destroy;
begin
  FObsFisco.Free;
  FObsCont.Free;
  FEntrega.Free;
  Ffluxo.Free;
  inherited;
end;

procedure TCteSefazCompl.SetxCaracAd(const Value: string);
begin
  FxCaracAd := Value;
  FxCaracAdHasValue := True;
end;

procedure TCteSefazCompl.SetxCaracSer(const Value: string);
begin
  FxCaracSer := Value;
  FxCaracSerHasValue := True;
end;

procedure TCteSefazCompl.SetxEmi(const Value: string);
begin
  FxEmi := Value;
  FxEmiHasValue := True;
end;

procedure TCteSefazCompl.Setfluxo(const Value: TCteSefazFluxo);
begin
  if Value <> Ffluxo then
  begin
    Ffluxo.Free;
    Ffluxo := Value;
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

procedure TCteSefazCompl.SetorigCalc(const Value: string);
begin
  ForigCalc := Value;
  ForigCalcHasValue := True;
end;

procedure TCteSefazCompl.SetdestCalc(const Value: string);
begin
  FdestCalc := Value;
  FdestCalcHasValue := True;
end;

procedure TCteSefazCompl.SetxObs(const Value: string);
begin
  FxObs := Value;
  FxObsHasValue := True;
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

procedure TCteSefazEndeEmi.SetxLgr(const Value: string);
begin
  FxLgr := Value;
  FxLgrHasValue := True;
end;

procedure TCteSefazEndeEmi.Setnro(const Value: string);
begin
  Fnro := Value;
  FnroHasValue := True;
end;

procedure TCteSefazEndeEmi.SetxCpl(const Value: string);
begin
  FxCpl := Value;
  FxCplHasValue := True;
end;

procedure TCteSefazEndeEmi.SetxBairro(const Value: string);
begin
  FxBairro := Value;
  FxBairroHasValue := True;
end;

procedure TCteSefazEndeEmi.SetcMun(const Value: Integer);
begin
  FcMun := Value;
  FcMunHasValue := True;
end;

procedure TCteSefazEndeEmi.SetxMun(const Value: string);
begin
  FxMun := Value;
  FxMunHasValue := True;
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

procedure TCteSefazEndeEmi.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

{ TCteSefazEmit }

destructor TCteSefazEmit.Destroy;
begin
  FenderEmit.Free;
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

procedure TCteSefazEmit.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TCteSefazEmit.SetxFant(const Value: string);
begin
  FxFant := Value;
  FxFantHasValue := True;
end;

procedure TCteSefazEmit.SetenderEmit(const Value: TCteSefazEndeEmi);
begin
  if Value <> FenderEmit then
  begin
    FenderEmit.Free;
    FenderEmit := Value;
  end;
end;

{ TCteSefazRem }

destructor TCteSefazRem.Destroy;
begin
  FenderReme.Free;
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

procedure TCteSefazRem.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TCteSefazRem.SetxFant(const Value: string);
begin
  FxFant := Value;
  FxFantHasValue := True;
end;

procedure TCteSefazRem.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

procedure TCteSefazRem.SetenderReme(const Value: TCteSefazEndereco);
begin
  if Value <> FenderReme then
  begin
    FenderReme.Free;
    FenderReme := Value;
  end;
end;

procedure TCteSefazRem.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
end;

{ TCteSefazExped }

destructor TCteSefazExped.Destroy;
begin
  FenderExped.Free;
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

procedure TCteSefazExped.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TCteSefazExped.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

procedure TCteSefazExped.SetenderExped(const Value: TCteSefazEndereco);
begin
  if Value <> FenderExped then
  begin
    FenderExped.Free;
    FenderExped := Value;
  end;
end;

procedure TCteSefazExped.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
end;

{ TCteSefazReceb }

destructor TCteSefazReceb.Destroy;
begin
  FenderReceb.Free;
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

procedure TCteSefazReceb.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TCteSefazReceb.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

procedure TCteSefazReceb.SetenderReceb(const Value: TCteSefazEndereco);
begin
  if Value <> FenderReceb then
  begin
    FenderReceb.Free;
    FenderReceb := Value;
  end;
end;

procedure TCteSefazReceb.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
end;

{ TCteSefazDest }

destructor TCteSefazDest.Destroy;
begin
  FenderDest.Free;
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

procedure TCteSefazDest.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TCteSefazDest.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

procedure TCteSefazDest.SetISUF(const Value: string);
begin
  FISUF := Value;
  FISUFHasValue := True;
end;

procedure TCteSefazDest.SetenderDest(const Value: TCteSefazEndereco);
begin
  if Value <> FenderDest then
  begin
    FenderDest.Free;
    FenderDest := Value;
  end;
end;

procedure TCteSefazDest.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
end;

{ TCteSefazComp }

procedure TCteSefazComp.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TCteSefazComp.SetvComp(const Value: Double);
begin
  FvComp := Value;
  FvCompHasValue := True;
end;

{ TCteSefazVPrest }

destructor TCteSefazVPrest.Destroy;
begin
  FComp.Free;
  inherited;
end;

procedure TCteSefazVPrest.SetvTPrest(const Value: Double);
begin
  FvTPrest := Value;
  FvTPrestHasValue := True;
end;

procedure TCteSefazVPrest.SetvRec(const Value: Double);
begin
  FvRec := Value;
  FvRecHasValue := True;
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

procedure TCteSefazICMS00.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TCteSefazICMS00.SetpICMS(const Value: Double);
begin
  FpICMS := Value;
  FpICMSHasValue := True;
end;

procedure TCteSefazICMS00.SetvICMS(const Value: Double);
begin
  FvICMS := Value;
  FvICMSHasValue := True;
end;

{ TCteSefazICMS20 }

procedure TCteSefazICMS20.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TCteSefazICMS20.SetpRedBC(const Value: Double);
begin
  FpRedBC := Value;
  FpRedBCHasValue := True;
end;

procedure TCteSefazICMS20.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TCteSefazICMS20.SetpICMS(const Value: Double);
begin
  FpICMS := Value;
  FpICMSHasValue := True;
end;

procedure TCteSefazICMS20.SetvICMS(const Value: Double);
begin
  FvICMS := Value;
  FvICMSHasValue := True;
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

procedure TCteSefazICMS60.SetvBCSTRet(const Value: Double);
begin
  FvBCSTRet := Value;
  FvBCSTRetHasValue := True;
end;

procedure TCteSefazICMS60.SetvICMSSTRet(const Value: Double);
begin
  FvICMSSTRet := Value;
  FvICMSSTRetHasValue := True;
end;

procedure TCteSefazICMS60.SetpICMSSTRet(const Value: Double);
begin
  FpICMSSTRet := Value;
  FpICMSSTRetHasValue := True;
end;

procedure TCteSefazICMS60.SetvCred(const Value: Double);
begin
  FvCred := Value;
  FvCredHasValue := True;
end;

{ TCteSefazICMS90 }

procedure TCteSefazICMS90.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TCteSefazICMS90.SetpRedBC(const Value: Double);
begin
  FpRedBC := Value;
  FpRedBCHasValue := True;
end;

procedure TCteSefazICMS90.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TCteSefazICMS90.SetpICMS(const Value: Double);
begin
  FpICMS := Value;
  FpICMSHasValue := True;
end;

procedure TCteSefazICMS90.SetvICMS(const Value: Double);
begin
  FvICMS := Value;
  FvICMSHasValue := True;
end;

procedure TCteSefazICMS90.SetvCred(const Value: Double);
begin
  FvCred := Value;
  FvCredHasValue := True;
end;

{ TCteSefazICMSOutraUF }

procedure TCteSefazICMSOutraUF.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TCteSefazICMSOutraUF.SetpRedBCOutraUF(const Value: Double);
begin
  FpRedBCOutraUF := Value;
  FpRedBCOutraUFHasValue := True;
end;

procedure TCteSefazICMSOutraUF.SetvBCOutraUF(const Value: Double);
begin
  FvBCOutraUF := Value;
  FvBCOutraUFHasValue := True;
end;

procedure TCteSefazICMSOutraUF.SetpICMSOutraUF(const Value: Double);
begin
  FpICMSOutraUF := Value;
  FpICMSOutraUFHasValue := True;
end;

procedure TCteSefazICMSOutraUF.SetvICMSOutraUF(const Value: Double);
begin
  FvICMSOutraUF := Value;
  FvICMSOutraUFHasValue := True;
end;

{ TCteSefazICMSSN }

procedure TCteSefazICMSSN.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TCteSefazICMSSN.SetindSN(const Value: Integer);
begin
  FindSN := Value;
  FindSNHasValue := True;
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

procedure TCteSefazICMSUFFim.SetvBCUFFim(const Value: Double);
begin
  FvBCUFFim := Value;
  FvBCUFFimHasValue := True;
end;

procedure TCteSefazICMSUFFim.SetpFCPUFFim(const Value: Double);
begin
  FpFCPUFFim := Value;
  FpFCPUFFimHasValue := True;
end;

procedure TCteSefazICMSUFFim.SetpICMSUFFim(const Value: Double);
begin
  FpICMSUFFim := Value;
  FpICMSUFFimHasValue := True;
end;

procedure TCteSefazICMSUFFim.SetpICMSInter(const Value: Double);
begin
  FpICMSInter := Value;
  FpICMSInterHasValue := True;
end;

procedure TCteSefazICMSUFFim.SetvFCPUFFim(const Value: Double);
begin
  FvFCPUFFim := Value;
  FvFCPUFFimHasValue := True;
end;

procedure TCteSefazICMSUFFim.SetvICMSUFFim(const Value: Double);
begin
  FvICMSUFFim := Value;
  FvICMSUFFimHasValue := True;
end;

procedure TCteSefazICMSUFFim.SetvICMSUFIni(const Value: Double);
begin
  FvICMSUFIni := Value;
  FvICMSUFIniHasValue := True;
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

procedure TCteSefazInfCteImp.SetvTotTrib(const Value: Double);
begin
  FvTotTrib := Value;
  FvTotTribHasValue := True;
end;

procedure TCteSefazInfCteImp.SetinfAdFisco(const Value: string);
begin
  FinfAdFisco := Value;
  FinfAdFiscoHasValue := True;
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

procedure TCteSefazInfQ.SetcUnid(const Value: string);
begin
  FcUnid := Value;
  FcUnidHasValue := True;
end;

procedure TCteSefazInfQ.SettpMed(const Value: string);
begin
  FtpMed := Value;
  FtpMedHasValue := True;
end;

procedure TCteSefazInfQ.SetqCarga(const Value: Double);
begin
  FqCarga := Value;
  FqCargaHasValue := True;
end;

{ TCteSefazInfCarga }

destructor TCteSefazInfCarga.Destroy;
begin
  FinfQ.Free;
  inherited;
end;

procedure TCteSefazInfCarga.SetvCarga(const Value: Double);
begin
  FvCarga := Value;
  FvCargaHasValue := True;
end;

procedure TCteSefazInfCarga.SetproPred(const Value: string);
begin
  FproPred := Value;
  FproPredHasValue := True;
end;

procedure TCteSefazInfCarga.SetxOutCat(const Value: string);
begin
  FxOutCat := Value;
  FxOutCatHasValue := True;
end;

procedure TCteSefazInfCarga.SetinfQ(const Value: TCteSefazInfQList);
begin
  if Value <> FinfQ then
  begin
    FinfQ.Free;
    FinfQ := Value;
  end;
end;

procedure TCteSefazInfCarga.SetvCargaAverb(const Value: Double);
begin
  FvCargaAverb := Value;
  FvCargaAverbHasValue := True;
end;

{ TCteSefazLacUnidCarga }

procedure TCteSefazLacUnidCarga.SetnLacre(const Value: string);
begin
  FnLacre := Value;
  FnLacreHasValue := True;
end;

{ TCteSefazUnidCarga }

destructor TCteSefazUnidCarga.Destroy;
begin
  FlacUnidCarga.Free;
  inherited;
end;

procedure TCteSefazUnidCarga.SettpUnidCarga(const Value: Integer);
begin
  FtpUnidCarga := Value;
  FtpUnidCargaHasValue := True;
end;

procedure TCteSefazUnidCarga.SetidUnidCarga(const Value: string);
begin
  FidUnidCarga := Value;
  FidUnidCargaHasValue := True;
end;

procedure TCteSefazUnidCarga.SetlacUnidCarga(const Value: TCteSefazLacUnidCargaList);
begin
  if Value <> FlacUnidCarga then
  begin
    FlacUnidCarga.Free;
    FlacUnidCarga := Value;
  end;
end;

procedure TCteSefazUnidCarga.SetqtdRat(const Value: Double);
begin
  FqtdRat := Value;
  FqtdRatHasValue := True;
end;

{ TCteSefazLacUnidTransp }

procedure TCteSefazLacUnidTransp.SetnLacre(const Value: string);
begin
  FnLacre := Value;
  FnLacreHasValue := True;
end;

{ TCteSefazUnidadeTransp }

destructor TCteSefazUnidadeTransp.Destroy;
begin
  FinfUnidCarga.Free;
  FlacUnidTransp.Free;
  inherited;
end;

procedure TCteSefazUnidadeTransp.SettpUnidTransp(const Value: Integer);
begin
  FtpUnidTransp := Value;
  FtpUnidTranspHasValue := True;
end;

procedure TCteSefazUnidadeTransp.SetidUnidTransp(const Value: string);
begin
  FidUnidTransp := Value;
  FidUnidTranspHasValue := True;
end;

procedure TCteSefazUnidadeTransp.SetlacUnidTransp(const Value: TCteSefazLacUnidTranspList);
begin
  if Value <> FlacUnidTransp then
  begin
    FlacUnidTransp.Free;
    FlacUnidTransp := Value;
  end;
end;

procedure TCteSefazUnidadeTransp.SetinfUnidCarga(const Value: TCteSefazUnidCargaList);
begin
  if Value <> FinfUnidCarga then
  begin
    FinfUnidCarga.Free;
    FinfUnidCarga := Value;
  end;
end;

procedure TCteSefazUnidadeTransp.SetqtdRat(const Value: Double);
begin
  FqtdRat := Value;
  FqtdRatHasValue := True;
end;

{ TCteSefazInfNF }

destructor TCteSefazInfNF.Destroy;
begin
  FinfUnidTransp.Free;
  FinfUnidCarga.Free;
  inherited;
end;

procedure TCteSefazInfNF.SetnRoma(const Value: string);
begin
  FnRoma := Value;
  FnRomaHasValue := True;
end;

procedure TCteSefazInfNF.SetnPed(const Value: string);
begin
  FnPed := Value;
  FnPedHasValue := True;
end;

procedure TCteSefazInfNF.Setmod(const Value: string);
begin
  Fmod := Value;
  FmodHasValue := True;
end;

procedure TCteSefazInfNF.Setserie(const Value: string);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TCteSefazInfNF.SetnDoc(const Value: string);
begin
  FnDoc := Value;
  FnDocHasValue := True;
end;

procedure TCteSefazInfNF.SetdEmi(const Value: TDate);
begin
  FdEmi := Value;
  FdEmiHasValue := True;
end;

procedure TCteSefazInfNF.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TCteSefazInfNF.SetvICMS(const Value: Double);
begin
  FvICMS := Value;
  FvICMSHasValue := True;
end;

procedure TCteSefazInfNF.SetvBCST(const Value: Double);
begin
  FvBCST := Value;
  FvBCSTHasValue := True;
end;

procedure TCteSefazInfNF.SetvST(const Value: Double);
begin
  FvST := Value;
  FvSTHasValue := True;
end;

procedure TCteSefazInfNF.SetvProd(const Value: Double);
begin
  FvProd := Value;
  FvProdHasValue := True;
end;

procedure TCteSefazInfNF.SetvNF(const Value: Double);
begin
  FvNF := Value;
  FvNFHasValue := True;
end;

procedure TCteSefazInfNF.SetnCFOP(const Value: Integer);
begin
  FnCFOP := Value;
  FnCFOPHasValue := True;
end;

procedure TCteSefazInfNF.SetnPeso(const Value: Double);
begin
  FnPeso := Value;
  FnPesoHasValue := True;
end;

procedure TCteSefazInfNF.SetPIN(const Value: string);
begin
  FPIN := Value;
  FPINHasValue := True;
end;

procedure TCteSefazInfNF.SetdPrev(const Value: TDate);
begin
  FdPrev := Value;
  FdPrevHasValue := True;
end;

procedure TCteSefazInfNF.SetinfUnidCarga(const Value: TCteSefazUnidCargaList);
begin
  if Value <> FinfUnidCarga then
  begin
    FinfUnidCarga.Free;
    FinfUnidCarga := Value;
  end;
end;

procedure TCteSefazInfNF.SetinfUnidTransp(const Value: TCteSefazUnidadeTranspList);
begin
  if Value <> FinfUnidTransp then
  begin
    FinfUnidTransp.Free;
    FinfUnidTransp := Value;
  end;
end;

{ TCteSefazInfNFe }

destructor TCteSefazInfNFe.Destroy;
begin
  FinfUnidTransp.Free;
  FinfUnidCarga.Free;
  inherited;
end;

procedure TCteSefazInfNFe.Setchave(const Value: string);
begin
  Fchave := Value;
  FchaveHasValue := True;
end;

procedure TCteSefazInfNFe.SetPIN(const Value: string);
begin
  FPIN := Value;
  FPINHasValue := True;
end;

procedure TCteSefazInfNFe.SetdPrev(const Value: TDate);
begin
  FdPrev := Value;
  FdPrevHasValue := True;
end;

procedure TCteSefazInfNFe.SetinfUnidCarga(const Value: TCteSefazUnidCargaList);
begin
  if Value <> FinfUnidCarga then
  begin
    FinfUnidCarga.Free;
    FinfUnidCarga := Value;
  end;
end;

procedure TCteSefazInfNFe.SetinfUnidTransp(const Value: TCteSefazUnidadeTranspList);
begin
  if Value <> FinfUnidTransp then
  begin
    FinfUnidTransp.Free;
    FinfUnidTransp := Value;
  end;
end;

{ TCteSefazInfOutros }

destructor TCteSefazInfOutros.Destroy;
begin
  FinfUnidTransp.Free;
  FinfUnidCarga.Free;
  inherited;
end;

procedure TCteSefazInfOutros.SettpDoc(const Value: string);
begin
  FtpDoc := Value;
  FtpDocHasValue := True;
end;

procedure TCteSefazInfOutros.SetdescOutros(const Value: string);
begin
  FdescOutros := Value;
  FdescOutrosHasValue := True;
end;

procedure TCteSefazInfOutros.SetnDoc(const Value: string);
begin
  FnDoc := Value;
  FnDocHasValue := True;
end;

procedure TCteSefazInfOutros.SetdEmi(const Value: TDate);
begin
  FdEmi := Value;
  FdEmiHasValue := True;
end;

procedure TCteSefazInfOutros.SetvDocFisc(const Value: Double);
begin
  FvDocFisc := Value;
  FvDocFiscHasValue := True;
end;

procedure TCteSefazInfOutros.SetdPrev(const Value: TDate);
begin
  FdPrev := Value;
  FdPrevHasValue := True;
end;

procedure TCteSefazInfOutros.SetinfUnidCarga(const Value: TCteSefazUnidCargaList);
begin
  if Value <> FinfUnidCarga then
  begin
    FinfUnidCarga.Free;
    FinfUnidCarga := Value;
  end;
end;

procedure TCteSefazInfOutros.SetinfUnidTransp(const Value: TCteSefazUnidadeTranspList);
begin
  if Value <> FinfUnidTransp then
  begin
    FinfUnidTransp.Free;
    FinfUnidTransp := Value;
  end;
end;

{ TCteSefazInfDoc }

destructor TCteSefazInfDoc.Destroy;
begin
  FinfOutros.Free;
  FinfNFe.Free;
  FinfNF.Free;
  inherited;
end;

procedure TCteSefazInfDoc.SetinfNF(const Value: TCteSefazInfNFList);
begin
  if Value <> FinfNF then
  begin
    FinfNF.Free;
    FinfNF := Value;
  end;
end;

procedure TCteSefazInfDoc.SetinfNFe(const Value: TCteSefazInfNFeList);
begin
  if Value <> FinfNFe then
  begin
    FinfNFe.Free;
    FinfNFe := Value;
  end;
end;

procedure TCteSefazInfDoc.SetinfOutros(const Value: TCteSefazInfOutrosList);
begin
  if Value <> FinfOutros then
  begin
    FinfOutros.Free;
    FinfOutros := Value;
  end;
end;

{ TCteSefazIdDocAntPap }

procedure TCteSefazIdDocAntPap.SettpDoc(const Value: string);
begin
  FtpDoc := Value;
  FtpDocHasValue := True;
end;

procedure TCteSefazIdDocAntPap.Setserie(const Value: string);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TCteSefazIdDocAntPap.Setsubser(const Value: string);
begin
  Fsubser := Value;
  FsubserHasValue := True;
end;

procedure TCteSefazIdDocAntPap.SetnDoc(const Value: string);
begin
  FnDoc := Value;
  FnDocHasValue := True;
end;

procedure TCteSefazIdDocAntPap.SetdEmi(const Value: TDate);
begin
  FdEmi := Value;
  FdEmiHasValue := True;
end;

{ TCteSefazIdDocAntEle }

procedure TCteSefazIdDocAntEle.SetchCTe(const Value: string);
begin
  FchCTe := Value;
  FchCTeHasValue := True;
end;

{ TCteSefazIdDocAnt }

destructor TCteSefazIdDocAnt.Destroy;
begin
  FidDocAntEle.Free;
  FidDocAntPap.Free;
  inherited;
end;

procedure TCteSefazIdDocAnt.SetidDocAntPap(const Value: TCteSefazIdDocAntPapList);
begin
  if Value <> FidDocAntPap then
  begin
    FidDocAntPap.Free;
    FidDocAntPap := Value;
  end;
end;

procedure TCteSefazIdDocAnt.SetidDocAntEle(const Value: TCteSefazIdDocAntEleList);
begin
  if Value <> FidDocAntEle then
  begin
    FidDocAntEle.Free;
    FidDocAntEle := Value;
  end;
end;

{ TCteSefazEmiDocAnt }

destructor TCteSefazEmiDocAnt.Destroy;
begin
  FidDocAnt.Free;
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

procedure TCteSefazEmiDocAnt.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TCteSefazEmiDocAnt.SetidDocAnt(const Value: TCteSefazIdDocAntList);
begin
  if Value <> FidDocAnt then
  begin
    FidDocAnt.Free;
    FidDocAnt := Value;
  end;
end;

{ TCteSefazDocAnt }

destructor TCteSefazDocAnt.Destroy;
begin
  FemiDocAnt.Free;
  inherited;
end;

procedure TCteSefazDocAnt.SetemiDocAnt(const Value: TCteSefazEmiDocAntList);
begin
  if Value <> FemiDocAnt then
  begin
    FemiDocAnt.Free;
    FemiDocAnt := Value;
  end;
end;

{ TCteSefazEmiOcc }

procedure TCteSefazEmiOcc.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TCteSefazEmiOcc.SetcInt(const Value: string);
begin
  FcInt := Value;
  FcIntHasValue := True;
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

procedure TCteSefazEmiOcc.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

{ TCteSefazOcc }

destructor TCteSefazOcc.Destroy;
begin
  FemiOcc.Free;
  inherited;
end;

procedure TCteSefazOcc.Setserie(const Value: string);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TCteSefazOcc.SetnOcc(const Value: Integer);
begin
  FnOcc := Value;
  FnOccHasValue := True;
end;

procedure TCteSefazOcc.SetdEmi(const Value: TDate);
begin
  FdEmi := Value;
  FdEmiHasValue := True;
end;

procedure TCteSefazOcc.SetemiOcc(const Value: TCteSefazEmiOcc);
begin
  if Value <> FemiOcc then
  begin
    FemiOcc.Free;
    FemiOcc := Value;
  end;
end;

{ TCteSefazRodo }

destructor TCteSefazRodo.Destroy;
begin
  Focc.Free;
  inherited;
end;

procedure TCteSefazRodo.SetRNTRC(const Value: string);
begin
  FRNTRC := Value;
  FRNTRCHasValue := True;
end;

procedure TCteSefazRodo.Setocc(const Value: TCteSefazOccList);
begin
  if Value <> Focc then
  begin
    Focc.Free;
    Focc := Value;
  end;
end;

{ TCteSefazNatCarga }

destructor TCteSefazNatCarga.Destroy;
begin
  FcInfManu.Free;
  inherited;
end;

procedure TCteSefazNatCarga.SetxDime(const Value: string);
begin
  FxDime := Value;
  FxDimeHasValue := True;
end;

procedure TCteSefazNatCarga.SetcInfManu(const Value: stringList);
begin
  if Value <> FcInfManu then
  begin
    FcInfManu.Free;
    FcInfManu := Value;
  end;
end;

{ TCteSefazTarifa }

procedure TCteSefazTarifa.SetCL(const Value: string);
begin
  FCL := Value;
  FCLHasValue := True;
end;

procedure TCteSefazTarifa.SetcTar(const Value: string);
begin
  FcTar := Value;
  FcTarHasValue := True;
end;

procedure TCteSefazTarifa.SetvTar(const Value: Double);
begin
  FvTar := Value;
  FvTarHasValue := True;
end;

{ TCteSefazInfTotAP }

procedure TCteSefazInfTotAP.SetqTotProd(const Value: Double);
begin
  FqTotProd := Value;
  FqTotProdHasValue := True;
end;

procedure TCteSefazInfTotAP.SetuniAP(const Value: Integer);
begin
  FuniAP := Value;
  FuniAPHasValue := True;
end;

{ TCteSefazPeri }

destructor TCteSefazPeri.Destroy;
begin
  FinfTotAP.Free;
  inherited;
end;

procedure TCteSefazPeri.SetnONU(const Value: string);
begin
  FnONU := Value;
  FnONUHasValue := True;
end;

procedure TCteSefazPeri.SetqTotEmb(const Value: string);
begin
  FqTotEmb := Value;
  FqTotEmbHasValue := True;
end;

procedure TCteSefazPeri.SetinfTotAP(const Value: TCteSefazInfTotAP);
begin
  if Value <> FinfTotAP then
  begin
    FinfTotAP.Free;
    FinfTotAP := Value;
  end;
end;

{ TCteSefazAereo }

destructor TCteSefazAereo.Destroy;
begin
  Fperi.Free;
  Ftarifa.Free;
  FnatCarga.Free;
  inherited;
end;

procedure TCteSefazAereo.SetnMinu(const Value: Integer);
begin
  FnMinu := Value;
  FnMinuHasValue := True;
end;

procedure TCteSefazAereo.SetnOCA(const Value: string);
begin
  FnOCA := Value;
  FnOCAHasValue := True;
end;

procedure TCteSefazAereo.SetdPrevAereo(const Value: TDate);
begin
  FdPrevAereo := Value;
  FdPrevAereoHasValue := True;
end;

procedure TCteSefazAereo.SetnatCarga(const Value: TCteSefazNatCarga);
begin
  if Value <> FnatCarga then
  begin
    FnatCarga.Free;
    FnatCarga := Value;
  end;
end;

procedure TCteSefazAereo.Settarifa(const Value: TCteSefazTarifa);
begin
  if Value <> Ftarifa then
  begin
    Ftarifa.Free;
    Ftarifa := Value;
  end;
end;

procedure TCteSefazAereo.Setperi(const Value: TCteSefazPeriList);
begin
  if Value <> Fperi then
  begin
    Fperi.Free;
    Fperi := Value;
  end;
end;

{ TCteSefazEnderFer }

procedure TCteSefazEnderFer.SetxLgr(const Value: string);
begin
  FxLgr := Value;
  FxLgrHasValue := True;
end;

procedure TCteSefazEnderFer.Setnro(const Value: string);
begin
  Fnro := Value;
  FnroHasValue := True;
end;

procedure TCteSefazEnderFer.SetxCpl(const Value: string);
begin
  FxCpl := Value;
  FxCplHasValue := True;
end;

procedure TCteSefazEnderFer.SetxBairro(const Value: string);
begin
  FxBairro := Value;
  FxBairroHasValue := True;
end;

procedure TCteSefazEnderFer.SetcMun(const Value: Integer);
begin
  FcMun := Value;
  FcMunHasValue := True;
end;

procedure TCteSefazEnderFer.SetxMun(const Value: string);
begin
  FxMun := Value;
  FxMunHasValue := True;
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
  FenderFerro.Free;
  inherited;
end;

procedure TCteSefazFerroEnv.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TCteSefazFerroEnv.SetcInt(const Value: string);
begin
  FcInt := Value;
  FcIntHasValue := True;
end;

procedure TCteSefazFerroEnv.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TCteSefazFerroEnv.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TCteSefazFerroEnv.SetenderFerro(const Value: TCteSefazEnderFer);
begin
  if Value <> FenderFerro then
  begin
    FenderFerro.Free;
    FenderFerro := Value;
  end;
end;

{ TCteSefazTrafMut }

destructor TCteSefazTrafMut.Destroy;
begin
  FferroEnv.Free;
  inherited;
end;

procedure TCteSefazTrafMut.SetrespFat(const Value: Integer);
begin
  FrespFat := Value;
  FrespFatHasValue := True;
end;

procedure TCteSefazTrafMut.SetferrEmi(const Value: Integer);
begin
  FferrEmi := Value;
  FferrEmiHasValue := True;
end;

procedure TCteSefazTrafMut.SetvFrete(const Value: Double);
begin
  FvFrete := Value;
  FvFreteHasValue := True;
end;

procedure TCteSefazTrafMut.SetchCTeFerroOrigem(const Value: string);
begin
  FchCTeFerroOrigem := Value;
  FchCTeFerroOrigemHasValue := True;
end;

procedure TCteSefazTrafMut.SetferroEnv(const Value: TCteSefazFerroEnvList);
begin
  if Value <> FferroEnv then
  begin
    FferroEnv.Free;
    FferroEnv := Value;
  end;
end;

{ TCteSefazFerrov }

destructor TCteSefazFerrov.Destroy;
begin
  FtrafMut.Free;
  inherited;
end;

procedure TCteSefazFerrov.SettpTraf(const Value: Integer);
begin
  FtpTraf := Value;
  FtpTrafHasValue := True;
end;

procedure TCteSefazFerrov.SettrafMut(const Value: TCteSefazTrafMut);
begin
  if Value <> FtrafMut then
  begin
    FtrafMut.Free;
    FtrafMut := Value;
  end;
end;

procedure TCteSefazFerrov.Setfluxo(const Value: string);
begin
  Ffluxo := Value;
  FfluxoHasValue := True;
end;

{ TCteSefazBalsa }

procedure TCteSefazBalsa.SetxBalsa(const Value: string);
begin
  FxBalsa := Value;
  FxBalsaHasValue := True;
end;

{ TCteSefazLacre }

procedure TCteSefazLacre.SetnLacre(const Value: string);
begin
  FnLacre := Value;
  FnLacreHasValue := True;
end;

{ TCteSefazDetContInfDocInfNF }

procedure TCteSefazDetContInfDocInfNF.Setserie(const Value: string);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TCteSefazDetContInfDocInfNF.SetnDoc(const Value: string);
begin
  FnDoc := Value;
  FnDocHasValue := True;
end;

procedure TCteSefazDetContInfDocInfNF.SetunidRat(const Value: Double);
begin
  FunidRat := Value;
  FunidRatHasValue := True;
end;

{ TCteSefazDetContInfDocInfNFe }

procedure TCteSefazDetContInfDocInfNFe.Setchave(const Value: string);
begin
  Fchave := Value;
  FchaveHasValue := True;
end;

procedure TCteSefazDetContInfDocInfNFe.SetunidRat(const Value: Double);
begin
  FunidRat := Value;
  FunidRatHasValue := True;
end;

{ TCteSefazDetContInfDoc }

destructor TCteSefazDetContInfDoc.Destroy;
begin
  FinfNFe.Free;
  FinfNF.Free;
  inherited;
end;

procedure TCteSefazDetContInfDoc.SetinfNF(const Value: TCteSefazDetContInfDocInfNFList);
begin
  if Value <> FinfNF then
  begin
    FinfNF.Free;
    FinfNF := Value;
  end;
end;

procedure TCteSefazDetContInfDoc.SetinfNFe(const Value: TCteSefazDetContInfDocInfNFeList);
begin
  if Value <> FinfNFe then
  begin
    FinfNFe.Free;
    FinfNFe := Value;
  end;
end;

{ TCteSefazDetCont }

destructor TCteSefazDetCont.Destroy;
begin
  FinfDoc.Free;
  Flacre.Free;
  inherited;
end;

procedure TCteSefazDetCont.SetnCont(const Value: string);
begin
  FnCont := Value;
  FnContHasValue := True;
end;

procedure TCteSefazDetCont.Setlacre(const Value: TCteSefazLacreList);
begin
  if Value <> Flacre then
  begin
    Flacre.Free;
    Flacre := Value;
  end;
end;

procedure TCteSefazDetCont.SetinfDoc(const Value: TCteSefazDetContInfDoc);
begin
  if Value <> FinfDoc then
  begin
    FinfDoc.Free;
    FinfDoc := Value;
  end;
end;

{ TCteSefazAquav }

destructor TCteSefazAquav.Destroy;
begin
  FdetCont.Free;
  Fbalsa.Free;
  inherited;
end;

procedure TCteSefazAquav.SetvPrest(const Value: Double);
begin
  FvPrest := Value;
  FvPrestHasValue := True;
end;

procedure TCteSefazAquav.SetvAFRMM(const Value: Double);
begin
  FvAFRMM := Value;
  FvAFRMMHasValue := True;
end;

procedure TCteSefazAquav.SetxNavio(const Value: string);
begin
  FxNavio := Value;
  FxNavioHasValue := True;
end;

procedure TCteSefazAquav.Setbalsa(const Value: TCteSefazBalsaList);
begin
  if Value <> Fbalsa then
  begin
    Fbalsa.Free;
    Fbalsa := Value;
  end;
end;

procedure TCteSefazAquav.SetnViag(const Value: string);
begin
  FnViag := Value;
  FnViagHasValue := True;
end;

procedure TCteSefazAquav.Setdirec(const Value: string);
begin
  Fdirec := Value;
  FdirecHasValue := True;
end;

procedure TCteSefazAquav.Setirin(const Value: string);
begin
  Firin := Value;
  FirinHasValue := True;
end;

procedure TCteSefazAquav.SetdetCont(const Value: TCteSefazDetContList);
begin
  if Value <> FdetCont then
  begin
    FdetCont.Free;
    FdetCont := Value;
  end;
end;

procedure TCteSefazAquav.SettpNav(const Value: Integer);
begin
  FtpNav := Value;
  FtpNavHasValue := True;
end;

{ TCteSefazDuto }

procedure TCteSefazDuto.SetvTar(const Value: Double);
begin
  FvTar := Value;
  FvTarHasValue := True;
end;

procedure TCteSefazDuto.SetdIni(const Value: TDate);
begin
  FdIni := Value;
  FdIniHasValue := True;
end;

procedure TCteSefazDuto.SetdFim(const Value: TDate);
begin
  FdFim := Value;
  FdFimHasValue := True;
end;

{ TCteSefazInfSeg }

procedure TCteSefazInfSeg.SetxSeg(const Value: string);
begin
  FxSeg := Value;
  FxSegHasValue := True;
end;

procedure TCteSefazInfSeg.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

{ TCteSefazSeg }

destructor TCteSefazSeg.Destroy;
begin
  FinfSeg.Free;
  inherited;
end;

procedure TCteSefazSeg.SetinfSeg(const Value: TCteSefazInfSeg);
begin
  if Value <> FinfSeg then
  begin
    FinfSeg.Free;
    FinfSeg := Value;
  end;
end;

procedure TCteSefazSeg.SetnApol(const Value: string);
begin
  FnApol := Value;
  FnApolHasValue := True;
end;

procedure TCteSefazSeg.SetnAver(const Value: string);
begin
  FnAver := Value;
  FnAverHasValue := True;
end;

{ TCteSefazMultimodal }

destructor TCteSefazMultimodal.Destroy;
begin
  Fseg.Free;
  inherited;
end;

procedure TCteSefazMultimodal.SetCOTM(const Value: string);
begin
  FCOTM := Value;
  FCOTMHasValue := True;
end;

procedure TCteSefazMultimodal.SetindNegociavel(const Value: Integer);
begin
  FindNegociavel := Value;
  FindNegociavelHasValue := True;
end;

procedure TCteSefazMultimodal.Setseg(const Value: TCteSefazSeg);
begin
  if Value <> Fseg then
  begin
    Fseg.Free;
    Fseg := Value;
  end;
end;

{ TCteSefazInfModal }

destructor TCteSefazInfModal.Destroy;
begin
  Fmultimodal.Free;
  Fduto.Free;
  Faquav.Free;
  Fferrov.Free;
  Faereo.Free;
  Frodo.Free;
  inherited;
end;

procedure TCteSefazInfModal.SetversaoModal(const Value: string);
begin
  FversaoModal := Value;
  FversaoModalHasValue := True;
end;

procedure TCteSefazInfModal.Setrodo(const Value: TCteSefazRodo);
begin
  if Value <> Frodo then
  begin
    Frodo.Free;
    Frodo := Value;
  end;
end;

procedure TCteSefazInfModal.Setaereo(const Value: TCteSefazAereo);
begin
  if Value <> Faereo then
  begin
    Faereo.Free;
    Faereo := Value;
  end;
end;

procedure TCteSefazInfModal.Setferrov(const Value: TCteSefazFerrov);
begin
  if Value <> Fferrov then
  begin
    Fferrov.Free;
    Fferrov := Value;
  end;
end;

procedure TCteSefazInfModal.Setaquav(const Value: TCteSefazAquav);
begin
  if Value <> Faquav then
  begin
    Faquav.Free;
    Faquav := Value;
  end;
end;

procedure TCteSefazInfModal.Setduto(const Value: TCteSefazDuto);
begin
  if Value <> Fduto then
  begin
    Fduto.Free;
    Fduto := Value;
  end;
end;

procedure TCteSefazInfModal.Setmultimodal(const Value: TCteSefazMultimodal);
begin
  if Value <> Fmultimodal then
  begin
    Fmultimodal.Free;
    Fmultimodal := Value;
  end;
end;

{ TCteSefazVeicNovos }

procedure TCteSefazVeicNovos.Setchassi(const Value: string);
begin
  Fchassi := Value;
  FchassiHasValue := True;
end;

procedure TCteSefazVeicNovos.SetcCor(const Value: string);
begin
  FcCor := Value;
  FcCorHasValue := True;
end;

procedure TCteSefazVeicNovos.SetxCor(const Value: string);
begin
  FxCor := Value;
  FxCorHasValue := True;
end;

procedure TCteSefazVeicNovos.SetcMod(const Value: string);
begin
  FcMod := Value;
  FcModHasValue := True;
end;

procedure TCteSefazVeicNovos.SetvUnit(const Value: Double);
begin
  FvUnit := Value;
  FvUnitHasValue := True;
end;

procedure TCteSefazVeicNovos.SetvFrete(const Value: Double);
begin
  FvFrete := Value;
  FvFreteHasValue := True;
end;

{ TCteSefazFat }

procedure TCteSefazFat.SetnFat(const Value: string);
begin
  FnFat := Value;
  FnFatHasValue := True;
end;

procedure TCteSefazFat.SetvOrig(const Value: Double);
begin
  FvOrig := Value;
  FvOrigHasValue := True;
end;

procedure TCteSefazFat.SetvDesc(const Value: Double);
begin
  FvDesc := Value;
  FvDescHasValue := True;
end;

procedure TCteSefazFat.SetvLiq(const Value: Double);
begin
  FvLiq := Value;
  FvLiqHasValue := True;
end;

{ TCteSefazDup }

procedure TCteSefazDup.SetnDup(const Value: string);
begin
  FnDup := Value;
  FnDupHasValue := True;
end;

procedure TCteSefazDup.SetdVenc(const Value: TDate);
begin
  FdVenc := Value;
  FdVencHasValue := True;
end;

procedure TCteSefazDup.SetvDup(const Value: Double);
begin
  FvDup := Value;
  FvDupHasValue := True;
end;

{ TCteSefazCobr }

destructor TCteSefazCobr.Destroy;
begin
  Fdup.Free;
  Ffat.Free;
  inherited;
end;

procedure TCteSefazCobr.Setfat(const Value: TCteSefazFat);
begin
  if Value <> Ffat then
  begin
    Ffat.Free;
    Ffat := Value;
  end;
end;

procedure TCteSefazCobr.Setdup(const Value: TCteSefazDupList);
begin
  if Value <> Fdup then
  begin
    Fdup.Free;
    Fdup := Value;
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

procedure TCteSefazRefNF.Setmod(const Value: string);
begin
  Fmod := Value;
  FmodHasValue := True;
end;

procedure TCteSefazRefNF.Setserie(const Value: Integer);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TCteSefazRefNF.Setsubserie(const Value: Integer);
begin
  Fsubserie := Value;
  FsubserieHasValue := True;
end;

procedure TCteSefazRefNF.Setnro(const Value: Integer);
begin
  Fnro := Value;
  FnroHasValue := True;
end;

procedure TCteSefazRefNF.Setvalor(const Value: Double);
begin
  Fvalor := Value;
  FvalorHasValue := True;
end;

procedure TCteSefazRefNF.SetdEmi(const Value: TDate);
begin
  FdEmi := Value;
  FdEmiHasValue := True;
end;

{ TCteSefazTomaICMS }

destructor TCteSefazTomaICMS.Destroy;
begin
  FrefNF.Free;
  inherited;
end;

procedure TCteSefazTomaICMS.SetrefNFe(const Value: string);
begin
  FrefNFe := Value;
  FrefNFeHasValue := True;
end;

procedure TCteSefazTomaICMS.SetrefNF(const Value: TCteSefazRefNF);
begin
  if Value <> FrefNF then
  begin
    FrefNF.Free;
    FrefNF := Value;
  end;
end;

procedure TCteSefazTomaICMS.SetrefCte(const Value: string);
begin
  FrefCte := Value;
  FrefCteHasValue := True;
end;

{ TCteSefazInfCteSub }

destructor TCteSefazInfCteSub.Destroy;
begin
  FtomaICMS.Free;
  inherited;
end;

procedure TCteSefazInfCteSub.SetchCte(const Value: string);
begin
  FchCte := Value;
  FchCteHasValue := True;
end;

procedure TCteSefazInfCteSub.SetrefCteAnu(const Value: string);
begin
  FrefCteAnu := Value;
  FrefCteAnuHasValue := True;
end;

procedure TCteSefazInfCteSub.SettomaICMS(const Value: TCteSefazTomaICMS);
begin
  if Value <> FtomaICMS then
  begin
    FtomaICMS.Free;
    FtomaICMS := Value;
  end;
end;

procedure TCteSefazInfCteSub.SetindAlteraToma(const Value: Integer);
begin
  FindAlteraToma := Value;
  FindAlteraTomaHasValue := True;
end;

{ TCteSefazInfGlobalizado }

procedure TCteSefazInfGlobalizado.SetxObs(const Value: string);
begin
  FxObs := Value;
  FxObsHasValue := True;
end;

{ TCteSefazInfCTeMultimodal }

procedure TCteSefazInfCTeMultimodal.SetchCTeMultimodal(const Value: string);
begin
  FchCTeMultimodal := Value;
  FchCTeMultimodalHasValue := True;
end;

{ TCteSefazInfServVinc }

destructor TCteSefazInfServVinc.Destroy;
begin
  FinfCTeMultimodal.Free;
  inherited;
end;

procedure TCteSefazInfServVinc.SetinfCTeMultimodal(const Value: TCteSefazInfCTeMultimodalList);
begin
  if Value <> FinfCTeMultimodal then
  begin
    FinfCTeMultimodal.Free;
    FinfCTeMultimodal := Value;
  end;
end;

{ TCteSefazInfCTeNorm }

destructor TCteSefazInfCTeNorm.Destroy;
begin
  FinfServVinc.Free;
  FinfGlobalizado.Free;
  FinfCteSub.Free;
  Fcobr.Free;
  FveicNovos.Free;
  FinfModal.Free;
  FdocAnt.Free;
  FinfDoc.Free;
  FinfCarga.Free;
  inherited;
end;

procedure TCteSefazInfCTeNorm.SetinfCarga(const Value: TCteSefazInfCarga);
begin
  if Value <> FinfCarga then
  begin
    FinfCarga.Free;
    FinfCarga := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetinfDoc(const Value: TCteSefazInfDoc);
begin
  if Value <> FinfDoc then
  begin
    FinfDoc.Free;
    FinfDoc := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetdocAnt(const Value: TCteSefazDocAnt);
begin
  if Value <> FdocAnt then
  begin
    FdocAnt.Free;
    FdocAnt := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetinfModal(const Value: TCteSefazInfModal);
begin
  if Value <> FinfModal then
  begin
    FinfModal.Free;
    FinfModal := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetveicNovos(const Value: TCteSefazVeicNovosList);
begin
  if Value <> FveicNovos then
  begin
    FveicNovos.Free;
    FveicNovos := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.Setcobr(const Value: TCteSefazCobr);
begin
  if Value <> Fcobr then
  begin
    Fcobr.Free;
    Fcobr := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetinfCteSub(const Value: TCteSefazInfCteSub);
begin
  if Value <> FinfCteSub then
  begin
    FinfCteSub.Free;
    FinfCteSub := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetinfGlobalizado(const Value: TCteSefazInfGlobalizado);
begin
  if Value <> FinfGlobalizado then
  begin
    FinfGlobalizado.Free;
    FinfGlobalizado := Value;
  end;
end;

procedure TCteSefazInfCTeNorm.SetinfServVinc(const Value: TCteSefazInfServVinc);
begin
  if Value <> FinfServVinc then
  begin
    FinfServVinc.Free;
    FinfServVinc := Value;
  end;
end;

{ TCteSefazInfCteComp }

procedure TCteSefazInfCteComp.SetchCTe(const Value: string);
begin
  FchCTe := Value;
  FchCTeHasValue := True;
end;

{ TCteSefazInfCteAnu }

procedure TCteSefazInfCteAnu.SetchCte(const Value: string);
begin
  FchCte := Value;
  FchCteHasValue := True;
end;

procedure TCteSefazInfCteAnu.SetdEmi(const Value: TDate);
begin
  FdEmi := Value;
  FdEmiHasValue := True;
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

procedure TCteSefazRespTec.SetxContato(const Value: string);
begin
  FxContato := Value;
  FxContatoHasValue := True;
end;

procedure TCteSefazRespTec.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
end;

procedure TCteSefazRespTec.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

procedure TCteSefazRespTec.SetidCSRT(const Value: Integer);
begin
  FidCSRT := Value;
  FidCSRTHasValue := True;
end;

procedure TCteSefazRespTec.SethashCSRT(const Value: string);
begin
  FhashCSRT := Value;
  FhashCSRTHasValue := True;
end;

{ TCteSefazInfSolicNFF }

procedure TCteSefazInfSolicNFF.SetxSolic(const Value: string);
begin
  FxSolic := Value;
  FxSolicHasValue := True;
end;

{ TCteSefazInfCte }

destructor TCteSefazInfCte.Destroy;
begin
  FinfSolicNFF.Free;
  FinfRespTec.Free;
  FautXML.Free;
  FinfCteAnu.Free;
  FinfCteComp.Free;
  FinfCTeNorm.Free;
  Fimp.Free;
  FvPrest.Free;
  Fdest.Free;
  Freceb.Free;
  Fexped.Free;
  Frem.Free;
  Femit.Free;
  Fcompl.Free;
  Fide.Free;
  inherited;
end;

procedure TCteSefazInfCte.Setversao(const Value: string);
begin
  Fversao := Value;
  FversaoHasValue := True;
end;

procedure TCteSefazInfCte.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TCteSefazInfCte.Setide(const Value: TCteSefazIde);
begin
  if Value <> Fide then
  begin
    Fide.Free;
    Fide := Value;
  end;
end;

procedure TCteSefazInfCte.Setcompl(const Value: TCteSefazCompl);
begin
  if Value <> Fcompl then
  begin
    Fcompl.Free;
    Fcompl := Value;
  end;
end;

procedure TCteSefazInfCte.Setemit(const Value: TCteSefazEmit);
begin
  if Value <> Femit then
  begin
    Femit.Free;
    Femit := Value;
  end;
end;

procedure TCteSefazInfCte.Setrem(const Value: TCteSefazRem);
begin
  if Value <> Frem then
  begin
    Frem.Free;
    Frem := Value;
  end;
end;

procedure TCteSefazInfCte.Setexped(const Value: TCteSefazExped);
begin
  if Value <> Fexped then
  begin
    Fexped.Free;
    Fexped := Value;
  end;
end;

procedure TCteSefazInfCte.Setreceb(const Value: TCteSefazReceb);
begin
  if Value <> Freceb then
  begin
    Freceb.Free;
    Freceb := Value;
  end;
end;

procedure TCteSefazInfCte.Setdest(const Value: TCteSefazDest);
begin
  if Value <> Fdest then
  begin
    Fdest.Free;
    Fdest := Value;
  end;
end;

procedure TCteSefazInfCte.SetvPrest(const Value: TCteSefazVPrest);
begin
  if Value <> FvPrest then
  begin
    FvPrest.Free;
    FvPrest := Value;
  end;
end;

procedure TCteSefazInfCte.Setimp(const Value: TCteSefazInfCteImp);
begin
  if Value <> Fimp then
  begin
    Fimp.Free;
    Fimp := Value;
  end;
end;

procedure TCteSefazInfCte.SetinfCTeNorm(const Value: TCteSefazInfCTeNorm);
begin
  if Value <> FinfCTeNorm then
  begin
    FinfCTeNorm.Free;
    FinfCTeNorm := Value;
  end;
end;

procedure TCteSefazInfCte.SetinfCteComp(const Value: TCteSefazInfCteComp);
begin
  if Value <> FinfCteComp then
  begin
    FinfCteComp.Free;
    FinfCteComp := Value;
  end;
end;

procedure TCteSefazInfCte.SetinfCteAnu(const Value: TCteSefazInfCteAnu);
begin
  if Value <> FinfCteAnu then
  begin
    FinfCteAnu.Free;
    FinfCteAnu := Value;
  end;
end;

procedure TCteSefazInfCte.SetautXML(const Value: TCteSefazAutXMLList);
begin
  if Value <> FautXML then
  begin
    FautXML.Free;
    FautXML := Value;
  end;
end;

procedure TCteSefazInfCte.SetinfRespTec(const Value: TCteSefazRespTec);
begin
  if Value <> FinfRespTec then
  begin
    FinfRespTec.Free;
    FinfRespTec := Value;
  end;
end;

procedure TCteSefazInfCte.SetinfSolicNFF(const Value: TCteSefazInfSolicNFF);
begin
  if Value <> FinfSolicNFF then
  begin
    FinfSolicNFF.Free;
    FinfSolicNFF := Value;
  end;
end;

{ TCteSefazInfCTeSupl }

procedure TCteSefazInfCTeSupl.SetqrCodCTe(const Value: string);
begin
  FqrCodCTe := Value;
  FqrCodCTeHasValue := True;
end;

{ TCtePedidoEmissao }

destructor TCtePedidoEmissao.Destroy;
begin
  FinfCTeSupl.Free;
  FinfCte.Free;
  inherited;
end;

procedure TCtePedidoEmissao.SetinfCte(const Value: TCteSefazInfCte);
begin
  if Value <> FinfCte then
  begin
    FinfCte.Free;
    FinfCte := Value;
  end;
end;

procedure TCtePedidoEmissao.SetinfCTeSupl(const Value: TCteSefazInfCTeSupl);
begin
  if Value <> FinfCTeSupl then
  begin
    FinfCTeSupl.Free;
    FinfCTeSupl := Value;
  end;
end;

procedure TCtePedidoEmissao.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TCtePedidoEmissao.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
end;

{ TCtePedidoEmissaoLote }

destructor TCtePedidoEmissaoLote.Destroy;
begin
  Fdocumentos.Free;
  inherited;
end;

procedure TCtePedidoEmissaoLote.Setdocumentos(const Value: TCtePedidoEmissaoList);
begin
  if Value <> Fdocumentos then
  begin
    Fdocumentos.Free;
    Fdocumentos := Value;
  end;
end;

procedure TCtePedidoEmissaoLote.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TCtePedidoEmissaoLote.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
end;

procedure TCtePedidoEmissaoLote.Setid_lote(const Value: string);
begin
  Fid_lote := Value;
  Fid_loteHasValue := True;
end;

{ TDfeRecibo }

procedure TDfeRecibo.Setnumero(const Value: string);
begin
  Fnumero := Value;
  FnumeroHasValue := True;
end;

procedure TDfeRecibo.Setcodigo_status(const Value: Integer);
begin
  Fcodigo_status := Value;
  Fcodigo_statusHasValue := True;
end;

procedure TDfeRecibo.Setmotivo_status(const Value: string);
begin
  Fmotivo_status := Value;
  Fmotivo_statusHasValue := True;
end;

procedure TDfeRecibo.Setdata_recebimento(const Value: TDateTime);
begin
  Fdata_recebimento := Value;
  Fdata_recebimentoHasValue := True;
end;

procedure TDfeRecibo.Setcodigo_mensagem(const Value: Integer);
begin
  Fcodigo_mensagem := Value;
  Fcodigo_mensagemHasValue := True;
end;

procedure TDfeRecibo.Setmensagem(const Value: string);
begin
  Fmensagem := Value;
  FmensagemHasValue := True;
end;

{ TDfeAutorEvento }

procedure TDfeAutorEvento.Setcpf_cnpj(const Value: string);
begin
  Fcpf_cnpj := Value;
  Fcpf_cnpjHasValue := True;
end;

{ TDfeAutorizacao }

destructor TDfeAutorizacao.Destroy;
begin
  Fautor.Free;
  inherited;
end;

procedure TDfeAutorizacao.Setdigest_value(const Value: string);
begin
  Fdigest_value := Value;
  Fdigest_valueHasValue := True;
end;

procedure TDfeAutorizacao.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TDfeAutorizacao.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TDfeAutorizacao.Setstatus(const Value: string);
begin
  Fstatus := Value;
  FstatusHasValue := True;
end;

procedure TDfeAutorizacao.Setautor(const Value: TDfeAutorEvento);
begin
  if Value <> Fautor then
  begin
    Fautor.Free;
    Fautor := Value;
  end;
end;

procedure TDfeAutorizacao.Setchave_acesso(const Value: string);
begin
  Fchave_acesso := Value;
  Fchave_acessoHasValue := True;
end;

procedure TDfeAutorizacao.Setdata_evento(const Value: TDateTime);
begin
  Fdata_evento := Value;
  Fdata_eventoHasValue := True;
end;

procedure TDfeAutorizacao.Setnumero_sequencial(const Value: Integer);
begin
  Fnumero_sequencial := Value;
  Fnumero_sequencialHasValue := True;
end;

procedure TDfeAutorizacao.Setdata_recebimento(const Value: TDateTime);
begin
  Fdata_recebimento := Value;
  Fdata_recebimentoHasValue := True;
end;

procedure TDfeAutorizacao.Setcodigo_status(const Value: Integer);
begin
  Fcodigo_status := Value;
  Fcodigo_statusHasValue := True;
end;

procedure TDfeAutorizacao.Setmotivo_status(const Value: string);
begin
  Fmotivo_status := Value;
  Fmotivo_statusHasValue := True;
end;

procedure TDfeAutorizacao.Setnumero_protocolo(const Value: string);
begin
  Fnumero_protocolo := Value;
  Fnumero_protocoloHasValue := True;
end;

procedure TDfeAutorizacao.Setcodigo_mensagem(const Value: Integer);
begin
  Fcodigo_mensagem := Value;
  Fcodigo_mensagemHasValue := True;
end;

procedure TDfeAutorizacao.Setmensagem(const Value: string);
begin
  Fmensagem := Value;
  FmensagemHasValue := True;
end;

procedure TDfeAutorizacao.Settipo_evento(const Value: string);
begin
  Ftipo_evento := Value;
  Ftipo_eventoHasValue := True;
end;

{ TDfe }

destructor TDfe.Destroy;
begin
  Fautorizacao.Free;
  inherited;
end;

procedure TDfe.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TDfe.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TDfe.Setcreated_at(const Value: TDateTime);
begin
  Fcreated_at := Value;
  Fcreated_atHasValue := True;
end;

procedure TDfe.Setstatus(const Value: string);
begin
  Fstatus := Value;
  FstatusHasValue := True;
end;

procedure TDfe.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
end;

procedure TDfe.Setdata_emissao(const Value: TDateTime);
begin
  Fdata_emissao := Value;
  Fdata_emissaoHasValue := True;
end;

procedure TDfe.Setmodelo(const Value: Integer);
begin
  Fmodelo := Value;
  FmodeloHasValue := True;
end;

procedure TDfe.Setserie(const Value: Integer);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TDfe.Setnumero(const Value: Integer);
begin
  Fnumero := Value;
  FnumeroHasValue := True;
end;

procedure TDfe.Setvalor_total(const Value: Double);
begin
  Fvalor_total := Value;
  Fvalor_totalHasValue := True;
end;

procedure TDfe.Setchave(const Value: string);
begin
  Fchave := Value;
  FchaveHasValue := True;
end;

procedure TDfe.Setautorizacao(const Value: TDfeAutorizacao);
begin
  if Value <> Fautorizacao then
  begin
    Fautorizacao.Free;
    Fautorizacao := Value;
  end;
end;

{ TDfeLote }

destructor TDfeLote.Destroy;
begin
  Fdocumentos.Free;
  Frecibo.Free;
  inherited;
end;

procedure TDfeLote.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TDfeLote.Setcreated_at(const Value: TDateTime);
begin
  Fcreated_at := Value;
  Fcreated_atHasValue := True;
end;

procedure TDfeLote.Setstatus(const Value: string);
begin
  Fstatus := Value;
  FstatusHasValue := True;
end;

procedure TDfeLote.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TDfeLote.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
end;

procedure TDfeLote.Setid_lote(const Value: string);
begin
  Fid_lote := Value;
  Fid_loteHasValue := True;
end;

procedure TDfeLote.Setrecibo(const Value: TDfeRecibo);
begin
  if Value <> Frecibo then
  begin
    Frecibo.Free;
    Frecibo := Value;
  end;
end;

procedure TDfeLote.Setdocumentos(const Value: TDfeList);
begin
  if Value <> Fdocumentos then
  begin
    Fdocumentos.Free;
    Fdocumentos := Value;
  end;
end;

{ TCtePedidoCancelamento }

procedure TCtePedidoCancelamento.Setjustificativa(const Value: string);
begin
  Fjustificativa := Value;
  FjustificativaHasValue := True;
end;

{ TDfeCancelamento }

destructor TDfeCancelamento.Destroy;
begin
  Fautor.Free;
  inherited;
end;

procedure TDfeCancelamento.Setjustificativa(const Value: string);
begin
  Fjustificativa := Value;
  FjustificativaHasValue := True;
end;

procedure TDfeCancelamento.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TDfeCancelamento.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TDfeCancelamento.Setstatus(const Value: string);
begin
  Fstatus := Value;
  FstatusHasValue := True;
end;

procedure TDfeCancelamento.Setautor(const Value: TDfeAutorEvento);
begin
  if Value <> Fautor then
  begin
    Fautor.Free;
    Fautor := Value;
  end;
end;

procedure TDfeCancelamento.Setchave_acesso(const Value: string);
begin
  Fchave_acesso := Value;
  Fchave_acessoHasValue := True;
end;

procedure TDfeCancelamento.Setdata_evento(const Value: TDateTime);
begin
  Fdata_evento := Value;
  Fdata_eventoHasValue := True;
end;

procedure TDfeCancelamento.Setnumero_sequencial(const Value: Integer);
begin
  Fnumero_sequencial := Value;
  Fnumero_sequencialHasValue := True;
end;

procedure TDfeCancelamento.Setdata_recebimento(const Value: TDateTime);
begin
  Fdata_recebimento := Value;
  Fdata_recebimentoHasValue := True;
end;

procedure TDfeCancelamento.Setcodigo_status(const Value: Integer);
begin
  Fcodigo_status := Value;
  Fcodigo_statusHasValue := True;
end;

procedure TDfeCancelamento.Setmotivo_status(const Value: string);
begin
  Fmotivo_status := Value;
  Fmotivo_statusHasValue := True;
end;

procedure TDfeCancelamento.Setnumero_protocolo(const Value: string);
begin
  Fnumero_protocolo := Value;
  Fnumero_protocoloHasValue := True;
end;

procedure TDfeCancelamento.Setcodigo_mensagem(const Value: Integer);
begin
  Fcodigo_mensagem := Value;
  Fcodigo_mensagemHasValue := True;
end;

procedure TDfeCancelamento.Setmensagem(const Value: string);
begin
  Fmensagem := Value;
  FmensagemHasValue := True;
end;

procedure TDfeCancelamento.Settipo_evento(const Value: string);
begin
  Ftipo_evento := Value;
  Ftipo_eventoHasValue := True;
end;

{ TCteInfCorrecao }

procedure TCteInfCorrecao.Setgrupo_alterado(const Value: string);
begin
  Fgrupo_alterado := Value;
  Fgrupo_alteradoHasValue := True;
end;

procedure TCteInfCorrecao.Setcampo_alterado(const Value: string);
begin
  Fcampo_alterado := Value;
  Fcampo_alteradoHasValue := True;
end;

procedure TCteInfCorrecao.Setvalor_alterado(const Value: string);
begin
  Fvalor_alterado := Value;
  Fvalor_alteradoHasValue := True;
end;

procedure TCteInfCorrecao.Setnumero_item_alterado(const Value: Integer);
begin
  Fnumero_item_alterado := Value;
  Fnumero_item_alteradoHasValue := True;
end;

{ TCtePedidoCartaCorrecao }

destructor TCtePedidoCartaCorrecao.Destroy;
begin
  Fcorrecoes.Free;
  inherited;
end;

procedure TCtePedidoCartaCorrecao.Setcorrecoes(const Value: TCteInfCorrecaoList);
begin
  if Value <> Fcorrecoes then
  begin
    Fcorrecoes.Free;
    Fcorrecoes := Value;
  end;
end;

{ TCteCartaCorrecao }

destructor TCteCartaCorrecao.Destroy;
begin
  Fautor.Free;
  Fcorrecoes.Free;
  inherited;
end;

procedure TCteCartaCorrecao.Setcorrecoes(const Value: TCteInfCorrecaoList);
begin
  if Value <> Fcorrecoes then
  begin
    Fcorrecoes.Free;
    Fcorrecoes := Value;
  end;
end;

procedure TCteCartaCorrecao.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TCteCartaCorrecao.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TCteCartaCorrecao.Setstatus(const Value: string);
begin
  Fstatus := Value;
  FstatusHasValue := True;
end;

procedure TCteCartaCorrecao.Setautor(const Value: TDfeAutorEvento);
begin
  if Value <> Fautor then
  begin
    Fautor.Free;
    Fautor := Value;
  end;
end;

procedure TCteCartaCorrecao.Setchave_acesso(const Value: string);
begin
  Fchave_acesso := Value;
  Fchave_acessoHasValue := True;
end;

procedure TCteCartaCorrecao.Setdata_evento(const Value: TDateTime);
begin
  Fdata_evento := Value;
  Fdata_eventoHasValue := True;
end;

procedure TCteCartaCorrecao.Setnumero_sequencial(const Value: Integer);
begin
  Fnumero_sequencial := Value;
  Fnumero_sequencialHasValue := True;
end;

procedure TCteCartaCorrecao.Setdata_recebimento(const Value: TDateTime);
begin
  Fdata_recebimento := Value;
  Fdata_recebimentoHasValue := True;
end;

procedure TCteCartaCorrecao.Setcodigo_status(const Value: Integer);
begin
  Fcodigo_status := Value;
  Fcodigo_statusHasValue := True;
end;

procedure TCteCartaCorrecao.Setmotivo_status(const Value: string);
begin
  Fmotivo_status := Value;
  Fmotivo_statusHasValue := True;
end;

procedure TCteCartaCorrecao.Setnumero_protocolo(const Value: string);
begin
  Fnumero_protocolo := Value;
  Fnumero_protocoloHasValue := True;
end;

procedure TCteCartaCorrecao.Setcodigo_mensagem(const Value: Integer);
begin
  Fcodigo_mensagem := Value;
  Fcodigo_mensagemHasValue := True;
end;

procedure TCteCartaCorrecao.Setmensagem(const Value: string);
begin
  Fmensagem := Value;
  FmensagemHasValue := True;
end;

procedure TCteCartaCorrecao.Settipo_evento(const Value: string);
begin
  Ftipo_evento := Value;
  Ftipo_eventoHasValue := True;
end;

{ TDfePedidoInutilizacao }

procedure TDfePedidoInutilizacao.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TDfePedidoInutilizacao.Setcnpj(const Value: string);
begin
  Fcnpj := Value;
  FcnpjHasValue := True;
end;

procedure TDfePedidoInutilizacao.Setano(const Value: Integer);
begin
  Fano := Value;
  FanoHasValue := True;
end;

procedure TDfePedidoInutilizacao.Setserie(const Value: Integer);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TDfePedidoInutilizacao.Setnumero_inicial(const Value: Integer);
begin
  Fnumero_inicial := Value;
  Fnumero_inicialHasValue := True;
end;

procedure TDfePedidoInutilizacao.Setnumero_final(const Value: Integer);
begin
  Fnumero_final := Value;
  Fnumero_finalHasValue := True;
end;

procedure TDfePedidoInutilizacao.Setjustificativa(const Value: string);
begin
  Fjustificativa := Value;
  FjustificativaHasValue := True;
end;

{ TDfeInutilizacao }

destructor TDfeInutilizacao.Destroy;
begin
  Fautor.Free;
  inherited;
end;

procedure TDfeInutilizacao.Setcnpj(const Value: string);
begin
  Fcnpj := Value;
  FcnpjHasValue := True;
end;

procedure TDfeInutilizacao.Setano(const Value: Integer);
begin
  Fano := Value;
  FanoHasValue := True;
end;

procedure TDfeInutilizacao.Setmodelo(const Value: Integer);
begin
  Fmodelo := Value;
  FmodeloHasValue := True;
end;

procedure TDfeInutilizacao.Setserie(const Value: Integer);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TDfeInutilizacao.Setnumero_inicial(const Value: Integer);
begin
  Fnumero_inicial := Value;
  Fnumero_inicialHasValue := True;
end;

procedure TDfeInutilizacao.Setnumero_final(const Value: Integer);
begin
  Fnumero_final := Value;
  Fnumero_finalHasValue := True;
end;

procedure TDfeInutilizacao.Setjustificativa(const Value: string);
begin
  Fjustificativa := Value;
  FjustificativaHasValue := True;
end;

procedure TDfeInutilizacao.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TDfeInutilizacao.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TDfeInutilizacao.Setstatus(const Value: string);
begin
  Fstatus := Value;
  FstatusHasValue := True;
end;

procedure TDfeInutilizacao.Setautor(const Value: TDfeAutorEvento);
begin
  if Value <> Fautor then
  begin
    Fautor.Free;
    Fautor := Value;
  end;
end;

procedure TDfeInutilizacao.Setchave_acesso(const Value: string);
begin
  Fchave_acesso := Value;
  Fchave_acessoHasValue := True;
end;

procedure TDfeInutilizacao.Setdata_evento(const Value: TDateTime);
begin
  Fdata_evento := Value;
  Fdata_eventoHasValue := True;
end;

procedure TDfeInutilizacao.Setnumero_sequencial(const Value: Integer);
begin
  Fnumero_sequencial := Value;
  Fnumero_sequencialHasValue := True;
end;

procedure TDfeInutilizacao.Setdata_recebimento(const Value: TDateTime);
begin
  Fdata_recebimento := Value;
  Fdata_recebimentoHasValue := True;
end;

procedure TDfeInutilizacao.Setcodigo_status(const Value: Integer);
begin
  Fcodigo_status := Value;
  Fcodigo_statusHasValue := True;
end;

procedure TDfeInutilizacao.Setmotivo_status(const Value: string);
begin
  Fmotivo_status := Value;
  Fmotivo_statusHasValue := True;
end;

procedure TDfeInutilizacao.Setnumero_protocolo(const Value: string);
begin
  Fnumero_protocolo := Value;
  Fnumero_protocoloHasValue := True;
end;

procedure TDfeInutilizacao.Setcodigo_mensagem(const Value: Integer);
begin
  Fcodigo_mensagem := Value;
  Fcodigo_mensagemHasValue := True;
end;

procedure TDfeInutilizacao.Setmensagem(const Value: string);
begin
  Fmensagem := Value;
  FmensagemHasValue := True;
end;

procedure TDfeInutilizacao.Settipo_evento(const Value: string);
begin
  Ftipo_evento := Value;
  Ftipo_eventoHasValue := True;
end;

{ TDfeEvento }

destructor TDfeEvento.Destroy;
begin
  Fautor.Free;
  inherited;
end;

procedure TDfeEvento.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TDfeEvento.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TDfeEvento.Setstatus(const Value: string);
begin
  Fstatus := Value;
  FstatusHasValue := True;
end;

procedure TDfeEvento.Setautor(const Value: TDfeAutorEvento);
begin
  if Value <> Fautor then
  begin
    Fautor.Free;
    Fautor := Value;
  end;
end;

procedure TDfeEvento.Setchave_acesso(const Value: string);
begin
  Fchave_acesso := Value;
  Fchave_acessoHasValue := True;
end;

procedure TDfeEvento.Setdata_evento(const Value: TDateTime);
begin
  Fdata_evento := Value;
  Fdata_eventoHasValue := True;
end;

procedure TDfeEvento.Setnumero_sequencial(const Value: Integer);
begin
  Fnumero_sequencial := Value;
  Fnumero_sequencialHasValue := True;
end;

procedure TDfeEvento.Setdata_recebimento(const Value: TDateTime);
begin
  Fdata_recebimento := Value;
  Fdata_recebimentoHasValue := True;
end;

procedure TDfeEvento.Setcodigo_status(const Value: Integer);
begin
  Fcodigo_status := Value;
  Fcodigo_statusHasValue := True;
end;

procedure TDfeEvento.Setmotivo_status(const Value: string);
begin
  Fmotivo_status := Value;
  Fmotivo_statusHasValue := True;
end;

procedure TDfeEvento.Setnumero_protocolo(const Value: string);
begin
  Fnumero_protocolo := Value;
  Fnumero_protocoloHasValue := True;
end;

procedure TDfeEvento.Setcodigo_mensagem(const Value: Integer);
begin
  Fcodigo_mensagem := Value;
  Fcodigo_mensagemHasValue := True;
end;

procedure TDfeEvento.Setmensagem(const Value: string);
begin
  Fmensagem := Value;
  FmensagemHasValue := True;
end;

procedure TDfeEvento.Settipo_evento(const Value: string);
begin
  Ftipo_evento := Value;
  Ftipo_eventoHasValue := True;
end;

{ TMdfeSefazInfMunCarrega }

procedure TMdfeSefazInfMunCarrega.SetcMunCarrega(const Value: Integer);
begin
  FcMunCarrega := Value;
  FcMunCarregaHasValue := True;
end;

procedure TMdfeSefazInfMunCarrega.SetxMunCarrega(const Value: string);
begin
  FxMunCarrega := Value;
  FxMunCarregaHasValue := True;
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
  FinfPercurso.Free;
  FinfMunCarrega.Free;
  inherited;
end;

procedure TMdfeSefazIde.SetcUF(const Value: Integer);
begin
  FcUF := Value;
  FcUFHasValue := True;
end;

procedure TMdfeSefazIde.SettpAmb(const Value: Integer);
begin
  FtpAmb := Value;
  FtpAmbHasValue := True;
end;

procedure TMdfeSefazIde.SettpEmit(const Value: Integer);
begin
  FtpEmit := Value;
  FtpEmitHasValue := True;
end;

procedure TMdfeSefazIde.SettpTransp(const Value: Integer);
begin
  FtpTransp := Value;
  FtpTranspHasValue := True;
end;

procedure TMdfeSefazIde.Setmod(const Value: Integer);
begin
  Fmod := Value;
  FmodHasValue := True;
end;

procedure TMdfeSefazIde.Setserie(const Value: Integer);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TMdfeSefazIde.SetnMDF(const Value: Integer);
begin
  FnMDF := Value;
  FnMDFHasValue := True;
end;

procedure TMdfeSefazIde.SetcMDF(const Value: Integer);
begin
  FcMDF := Value;
  FcMDFHasValue := True;
end;

procedure TMdfeSefazIde.SetcDV(const Value: Integer);
begin
  FcDV := Value;
  FcDVHasValue := True;
end;

procedure TMdfeSefazIde.Setmodal(const Value: Integer);
begin
  Fmodal := Value;
  FmodalHasValue := True;
end;

procedure TMdfeSefazIde.SetdhEmi(const Value: TDateTime);
begin
  FdhEmi := Value;
  FdhEmiHasValue := True;
end;

procedure TMdfeSefazIde.SettpEmis(const Value: Integer);
begin
  FtpEmis := Value;
  FtpEmisHasValue := True;
end;

procedure TMdfeSefazIde.SetprocEmi(const Value: string);
begin
  FprocEmi := Value;
  FprocEmiHasValue := True;
end;

procedure TMdfeSefazIde.SetverProc(const Value: string);
begin
  FverProc := Value;
  FverProcHasValue := True;
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

procedure TMdfeSefazIde.SetinfMunCarrega(const Value: TMdfeSefazInfMunCarregaList);
begin
  if Value <> FinfMunCarrega then
  begin
    FinfMunCarrega.Free;
    FinfMunCarrega := Value;
  end;
end;

procedure TMdfeSefazIde.SetinfPercurso(const Value: TMdfeSefazInfPercursoList);
begin
  if Value <> FinfPercurso then
  begin
    FinfPercurso.Free;
    FinfPercurso := Value;
  end;
end;

procedure TMdfeSefazIde.SetdhIniViagem(const Value: TDateTime);
begin
  FdhIniViagem := Value;
  FdhIniViagemHasValue := True;
end;

procedure TMdfeSefazIde.SetindCanalVerde(const Value: Integer);
begin
  FindCanalVerde := Value;
  FindCanalVerdeHasValue := True;
end;

procedure TMdfeSefazIde.SetindCarregaPosterior(const Value: Integer);
begin
  FindCarregaPosterior := Value;
  FindCarregaPosteriorHasValue := True;
end;

{ TMdfeSefazEndeEmi }

procedure TMdfeSefazEndeEmi.SetxLgr(const Value: string);
begin
  FxLgr := Value;
  FxLgrHasValue := True;
end;

procedure TMdfeSefazEndeEmi.Setnro(const Value: string);
begin
  Fnro := Value;
  FnroHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetxCpl(const Value: string);
begin
  FxCpl := Value;
  FxCplHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetxBairro(const Value: string);
begin
  FxBairro := Value;
  FxBairroHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetcMun(const Value: Integer);
begin
  FcMun := Value;
  FcMunHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetxMun(const Value: string);
begin
  FxMun := Value;
  FxMunHasValue := True;
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

procedure TMdfeSefazEndeEmi.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

procedure TMdfeSefazEndeEmi.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
end;

{ TMdfeSefazEmit }

destructor TMdfeSefazEmit.Destroy;
begin
  FenderEmit.Free;
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

procedure TMdfeSefazEmit.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TMdfeSefazEmit.SetxFant(const Value: string);
begin
  FxFant := Value;
  FxFantHasValue := True;
end;

procedure TMdfeSefazEmit.SetenderEmit(const Value: TMdfeSefazEndeEmi);
begin
  if Value <> FenderEmit then
  begin
    FenderEmit.Free;
    FenderEmit := Value;
  end;
end;

{ TMdfeSefazAereo }

procedure TMdfeSefazAereo.Setnac(const Value: string);
begin
  Fnac := Value;
  FnacHasValue := True;
end;

procedure TMdfeSefazAereo.Setmatr(const Value: string);
begin
  Fmatr := Value;
  FmatrHasValue := True;
end;

procedure TMdfeSefazAereo.SetnVoo(const Value: string);
begin
  FnVoo := Value;
  FnVooHasValue := True;
end;

procedure TMdfeSefazAereo.SetcAerEmb(const Value: string);
begin
  FcAerEmb := Value;
  FcAerEmbHasValue := True;
end;

procedure TMdfeSefazAereo.SetcAerDes(const Value: string);
begin
  FcAerDes := Value;
  FcAerDesHasValue := True;
end;

procedure TMdfeSefazAereo.SetdVoo(const Value: TDate);
begin
  FdVoo := Value;
  FdVooHasValue := True;
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

procedure TMdfeSefazDisp.SetnCompra(const Value: string);
begin
  FnCompra := Value;
  FnCompraHasValue := True;
end;

procedure TMdfeSefazDisp.SetvValePed(const Value: Double);
begin
  FvValePed := Value;
  FvValePedHasValue := True;
end;

procedure TMdfeSefazDisp.SettpValePed(const Value: string);
begin
  FtpValePed := Value;
  FtpValePedHasValue := True;
end;

{ TMdfeSefazValePed }

destructor TMdfeSefazValePed.Destroy;
begin
  Fdisp.Free;
  inherited;
end;

procedure TMdfeSefazValePed.Setdisp(const Value: TMdfeSefazDispList);
begin
  if Value <> Fdisp then
  begin
    Fdisp.Free;
    Fdisp := Value;
  end;
end;

procedure TMdfeSefazValePed.SetcategCombVeic(const Value: string);
begin
  FcategCombVeic := Value;
  FcategCombVeicHasValue := True;
end;

{ TMdfeSefazInfContratante }

procedure TMdfeSefazInfContratante.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
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

procedure TMdfeSefazInfContratante.SetidEstrangeiro(const Value: string);
begin
  FidEstrangeiro := Value;
  FidEstrangeiroHasValue := True;
end;

{ TMdfeSefazComp }

procedure TMdfeSefazComp.SettpComp(const Value: string);
begin
  FtpComp := Value;
  FtpCompHasValue := True;
end;

procedure TMdfeSefazComp.SetvComp(const Value: Double);
begin
  FvComp := Value;
  FvCompHasValue := True;
end;

procedure TMdfeSefazComp.SetxComp(const Value: string);
begin
  FxComp := Value;
  FxCompHasValue := True;
end;

{ TMdfeSefazInfPrazo }

procedure TMdfeSefazInfPrazo.SetnParcela(const Value: Integer);
begin
  FnParcela := Value;
  FnParcelaHasValue := True;
end;

procedure TMdfeSefazInfPrazo.SetdVenc(const Value: TDate);
begin
  FdVenc := Value;
  FdVencHasValue := True;
end;

procedure TMdfeSefazInfPrazo.SetvParcela(const Value: Double);
begin
  FvParcela := Value;
  FvParcelaHasValue := True;
end;

{ TMdfeSefazInfBanc }

procedure TMdfeSefazInfBanc.SetcodBanco(const Value: string);
begin
  FcodBanco := Value;
  FcodBancoHasValue := True;
end;

procedure TMdfeSefazInfBanc.SetcodAgencia(const Value: string);
begin
  FcodAgencia := Value;
  FcodAgenciaHasValue := True;
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
  FinfBanc.Free;
  FinfPrazo.Free;
  FComp.Free;
  inherited;
end;

procedure TMdfeSefazInfPag.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
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

procedure TMdfeSefazInfPag.SetidEstrangeiro(const Value: string);
begin
  FidEstrangeiro := Value;
  FidEstrangeiroHasValue := True;
end;

procedure TMdfeSefazInfPag.SetComp(const Value: TMdfeSefazCompList);
begin
  if Value <> FComp then
  begin
    FComp.Free;
    FComp := Value;
  end;
end;

procedure TMdfeSefazInfPag.SetvContrato(const Value: Double);
begin
  FvContrato := Value;
  FvContratoHasValue := True;
end;

procedure TMdfeSefazInfPag.SetindAltoDesemp(const Value: Integer);
begin
  FindAltoDesemp := Value;
  FindAltoDesempHasValue := True;
end;

procedure TMdfeSefazInfPag.SetindPag(const Value: Integer);
begin
  FindPag := Value;
  FindPagHasValue := True;
end;

procedure TMdfeSefazInfPag.SetvAdiant(const Value: Double);
begin
  FvAdiant := Value;
  FvAdiantHasValue := True;
end;

procedure TMdfeSefazInfPag.SetinfPrazo(const Value: TMdfeSefazInfPrazoList);
begin
  if Value <> FinfPrazo then
  begin
    FinfPrazo.Free;
    FinfPrazo := Value;
  end;
end;

procedure TMdfeSefazInfPag.SetinfBanc(const Value: TMdfeSefazInfBanc);
begin
  if Value <> FinfBanc then
  begin
    FinfBanc.Free;
    FinfBanc := Value;
  end;
end;

{ TMdfeSefazInfANTT }

destructor TMdfeSefazInfANTT.Destroy;
begin
  FinfPag.Free;
  FinfContratante.Free;
  FvalePed.Free;
  FinfCIOT.Free;
  inherited;
end;

procedure TMdfeSefazInfANTT.SetRNTRC(const Value: string);
begin
  FRNTRC := Value;
  FRNTRCHasValue := True;
end;

procedure TMdfeSefazInfANTT.SetinfCIOT(const Value: TMdfeSefazInfCIOTList);
begin
  if Value <> FinfCIOT then
  begin
    FinfCIOT.Free;
    FinfCIOT := Value;
  end;
end;

procedure TMdfeSefazInfANTT.SetvalePed(const Value: TMdfeSefazValePed);
begin
  if Value <> FvalePed then
  begin
    FvalePed.Free;
    FvalePed := Value;
  end;
end;

procedure TMdfeSefazInfANTT.SetinfContratante(const Value: TMdfeSefazInfContratanteList);
begin
  if Value <> FinfContratante then
  begin
    FinfContratante.Free;
    FinfContratante := Value;
  end;
end;

procedure TMdfeSefazInfANTT.SetinfPag(const Value: TMdfeSefazInfPagList);
begin
  if Value <> FinfPag then
  begin
    FinfPag.Free;
    FinfPag := Value;
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

procedure TMdfeSefazProp.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
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

procedure TMdfeSefazProp.SettpProp(const Value: Integer);
begin
  FtpProp := Value;
  FtpPropHasValue := True;
end;

{ TMdfeSefazCondutor }

procedure TMdfeSefazCondutor.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TMdfeSefazCondutor.SetCPF(const Value: string);
begin
  FCPF := Value;
  FCPFHasValue := True;
end;

{ TMdfeSefazVeicTracao }

destructor TMdfeSefazVeicTracao.Destroy;
begin
  Fcondutor.Free;
  Fprop.Free;
  inherited;
end;

procedure TMdfeSefazVeicTracao.SetcInt(const Value: string);
begin
  FcInt := Value;
  FcIntHasValue := True;
end;

procedure TMdfeSefazVeicTracao.Setplaca(const Value: string);
begin
  Fplaca := Value;
  FplacaHasValue := True;
end;

procedure TMdfeSefazVeicTracao.SetRENAVAM(const Value: string);
begin
  FRENAVAM := Value;
  FRENAVAMHasValue := True;
end;

procedure TMdfeSefazVeicTracao.Settara(const Value: Integer);
begin
  Ftara := Value;
  FtaraHasValue := True;
end;

procedure TMdfeSefazVeicTracao.SetcapKG(const Value: Integer);
begin
  FcapKG := Value;
  FcapKGHasValue := True;
end;

procedure TMdfeSefazVeicTracao.SetcapM3(const Value: Integer);
begin
  FcapM3 := Value;
  FcapM3HasValue := True;
end;

procedure TMdfeSefazVeicTracao.Setprop(const Value: TMdfeSefazProp);
begin
  if Value <> Fprop then
  begin
    Fprop.Free;
    Fprop := Value;
  end;
end;

procedure TMdfeSefazVeicTracao.Setcondutor(const Value: TMdfeSefazCondutorList);
begin
  if Value <> Fcondutor then
  begin
    Fcondutor.Free;
    Fcondutor := Value;
  end;
end;

procedure TMdfeSefazVeicTracao.SettpRod(const Value: string);
begin
  FtpRod := Value;
  FtpRodHasValue := True;
end;

procedure TMdfeSefazVeicTracao.SettpCar(const Value: string);
begin
  FtpCar := Value;
  FtpCarHasValue := True;
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

procedure TMdfeSefazVeicReboqueProp.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
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

procedure TMdfeSefazVeicReboqueProp.SettpProp(const Value: Integer);
begin
  FtpProp := Value;
  FtpPropHasValue := True;
end;

{ TMdfeSefazVeicReboque }

destructor TMdfeSefazVeicReboque.Destroy;
begin
  Fprop.Free;
  inherited;
end;

procedure TMdfeSefazVeicReboque.SetcInt(const Value: string);
begin
  FcInt := Value;
  FcIntHasValue := True;
end;

procedure TMdfeSefazVeicReboque.Setplaca(const Value: string);
begin
  Fplaca := Value;
  FplacaHasValue := True;
end;

procedure TMdfeSefazVeicReboque.SetRENAVAM(const Value: string);
begin
  FRENAVAM := Value;
  FRENAVAMHasValue := True;
end;

procedure TMdfeSefazVeicReboque.Settara(const Value: Integer);
begin
  Ftara := Value;
  FtaraHasValue := True;
end;

procedure TMdfeSefazVeicReboque.SetcapKG(const Value: Integer);
begin
  FcapKG := Value;
  FcapKGHasValue := True;
end;

procedure TMdfeSefazVeicReboque.SetcapM3(const Value: Integer);
begin
  FcapM3 := Value;
  FcapM3HasValue := True;
end;

procedure TMdfeSefazVeicReboque.Setprop(const Value: TMdfeSefazVeicReboqueProp);
begin
  if Value <> Fprop then
  begin
    Fprop.Free;
    Fprop := Value;
  end;
end;

procedure TMdfeSefazVeicReboque.SettpCar(const Value: string);
begin
  FtpCar := Value;
  FtpCarHasValue := True;
end;

procedure TMdfeSefazVeicReboque.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

{ TMdfeSefazLacRodo }

procedure TMdfeSefazLacRodo.SetnLacre(const Value: string);
begin
  FnLacre := Value;
  FnLacreHasValue := True;
end;

{ TMdfeSefazRodo }

destructor TMdfeSefazRodo.Destroy;
begin
  FlacRodo.Free;
  FveicReboque.Free;
  FveicTracao.Free;
  FinfANTT.Free;
  inherited;
end;

procedure TMdfeSefazRodo.SetinfANTT(const Value: TMdfeSefazInfANTT);
begin
  if Value <> FinfANTT then
  begin
    FinfANTT.Free;
    FinfANTT := Value;
  end;
end;

procedure TMdfeSefazRodo.SetveicTracao(const Value: TMdfeSefazVeicTracao);
begin
  if Value <> FveicTracao then
  begin
    FveicTracao.Free;
    FveicTracao := Value;
  end;
end;

procedure TMdfeSefazRodo.SetveicReboque(const Value: TMdfeSefazVeicReboqueList);
begin
  if Value <> FveicReboque then
  begin
    FveicReboque.Free;
    FveicReboque := Value;
  end;
end;

procedure TMdfeSefazRodo.SetcodAgPorto(const Value: string);
begin
  FcodAgPorto := Value;
  FcodAgPortoHasValue := True;
end;

procedure TMdfeSefazRodo.SetlacRodo(const Value: TMdfeSefazLacRodoList);
begin
  if Value <> FlacRodo then
  begin
    FlacRodo.Free;
    FlacRodo := Value;
  end;
end;

{ TMdfeSefazInfTermCarreg }

procedure TMdfeSefazInfTermCarreg.SetcTermCarreg(const Value: string);
begin
  FcTermCarreg := Value;
  FcTermCarregHasValue := True;
end;

procedure TMdfeSefazInfTermCarreg.SetxTermCarreg(const Value: string);
begin
  FxTermCarreg := Value;
  FxTermCarregHasValue := True;
end;

{ TMdfeSefazInfTermDescarreg }

procedure TMdfeSefazInfTermDescarreg.SetcTermDescarreg(const Value: string);
begin
  FcTermDescarreg := Value;
  FcTermDescarregHasValue := True;
end;

procedure TMdfeSefazInfTermDescarreg.SetxTermDescarreg(const Value: string);
begin
  FxTermDescarreg := Value;
  FxTermDescarregHasValue := True;
end;

{ TMdfeSefazInfEmbComb }

procedure TMdfeSefazInfEmbComb.SetcEmbComb(const Value: string);
begin
  FcEmbComb := Value;
  FcEmbCombHasValue := True;
end;

procedure TMdfeSefazInfEmbComb.SetxBalsa(const Value: string);
begin
  FxBalsa := Value;
  FxBalsaHasValue := True;
end;

{ TMdfeSefazInfUnidCargaVazia }

procedure TMdfeSefazInfUnidCargaVazia.SetidUnidCargaVazia(const Value: string);
begin
  FidUnidCargaVazia := Value;
  FidUnidCargaVaziaHasValue := True;
end;

procedure TMdfeSefazInfUnidCargaVazia.SettpUnidCargaVazia(const Value: Integer);
begin
  FtpUnidCargaVazia := Value;
  FtpUnidCargaVaziaHasValue := True;
end;

{ TMdfeSefazInfUnidTranspVazia }

procedure TMdfeSefazInfUnidTranspVazia.SetidUnidTranspVazia(const Value: string);
begin
  FidUnidTranspVazia := Value;
  FidUnidTranspVaziaHasValue := True;
end;

procedure TMdfeSefazInfUnidTranspVazia.SettpUnidTranspVazia(const Value: Integer);
begin
  FtpUnidTranspVazia := Value;
  FtpUnidTranspVaziaHasValue := True;
end;

{ TMdfeSefazAquav }

destructor TMdfeSefazAquav.Destroy;
begin
  FinfUnidTranspVazia.Free;
  FinfUnidCargaVazia.Free;
  FinfEmbComb.Free;
  FinfTermDescarreg.Free;
  FinfTermCarreg.Free;
  inherited;
end;

procedure TMdfeSefazAquav.Setirin(const Value: string);
begin
  Firin := Value;
  FirinHasValue := True;
end;

procedure TMdfeSefazAquav.SettpEmb(const Value: string);
begin
  FtpEmb := Value;
  FtpEmbHasValue := True;
end;

procedure TMdfeSefazAquav.SetcEmbar(const Value: string);
begin
  FcEmbar := Value;
  FcEmbarHasValue := True;
end;

procedure TMdfeSefazAquav.SetxEmbar(const Value: string);
begin
  FxEmbar := Value;
  FxEmbarHasValue := True;
end;

procedure TMdfeSefazAquav.SetnViag(const Value: string);
begin
  FnViag := Value;
  FnViagHasValue := True;
end;

procedure TMdfeSefazAquav.SetcPrtEmb(const Value: string);
begin
  FcPrtEmb := Value;
  FcPrtEmbHasValue := True;
end;

procedure TMdfeSefazAquav.SetcPrtDest(const Value: string);
begin
  FcPrtDest := Value;
  FcPrtDestHasValue := True;
end;

procedure TMdfeSefazAquav.SetprtTrans(const Value: string);
begin
  FprtTrans := Value;
  FprtTransHasValue := True;
end;

procedure TMdfeSefazAquav.SettpNav(const Value: Integer);
begin
  FtpNav := Value;
  FtpNavHasValue := True;
end;

procedure TMdfeSefazAquav.SetinfTermCarreg(const Value: TMdfeSefazInfTermCarregList);
begin
  if Value <> FinfTermCarreg then
  begin
    FinfTermCarreg.Free;
    FinfTermCarreg := Value;
  end;
end;

procedure TMdfeSefazAquav.SetinfTermDescarreg(const Value: TMdfeSefazInfTermDescarregList);
begin
  if Value <> FinfTermDescarreg then
  begin
    FinfTermDescarreg.Free;
    FinfTermDescarreg := Value;
  end;
end;

procedure TMdfeSefazAquav.SetinfEmbComb(const Value: TMdfeSefazInfEmbCombList);
begin
  if Value <> FinfEmbComb then
  begin
    FinfEmbComb.Free;
    FinfEmbComb := Value;
  end;
end;

procedure TMdfeSefazAquav.SetinfUnidCargaVazia(const Value: TMdfeSefazInfUnidCargaVaziaList);
begin
  if Value <> FinfUnidCargaVazia then
  begin
    FinfUnidCargaVazia.Free;
    FinfUnidCargaVazia := Value;
  end;
end;

procedure TMdfeSefazAquav.SetinfUnidTranspVazia(const Value: TMdfeSefazInfUnidTranspVaziaList);
begin
  if Value <> FinfUnidTranspVazia then
  begin
    FinfUnidTranspVazia.Free;
    FinfUnidTranspVazia := Value;
  end;
end;

{ TMdfeSefazTrem }

procedure TMdfeSefazTrem.SetxPref(const Value: string);
begin
  FxPref := Value;
  FxPrefHasValue := True;
end;

procedure TMdfeSefazTrem.SetdhTrem(const Value: TDateTime);
begin
  FdhTrem := Value;
  FdhTremHasValue := True;
end;

procedure TMdfeSefazTrem.SetxOri(const Value: string);
begin
  FxOri := Value;
  FxOriHasValue := True;
end;

procedure TMdfeSefazTrem.SetxDest(const Value: string);
begin
  FxDest := Value;
  FxDestHasValue := True;
end;

procedure TMdfeSefazTrem.SetqVag(const Value: Integer);
begin
  FqVag := Value;
  FqVagHasValue := True;
end;

{ TMdfeSefazVag }

procedure TMdfeSefazVag.SetpesoBC(const Value: Double);
begin
  FpesoBC := Value;
  FpesoBCHasValue := True;
end;

procedure TMdfeSefazVag.SetpesoR(const Value: Double);
begin
  FpesoR := Value;
  FpesoRHasValue := True;
end;

procedure TMdfeSefazVag.SettpVag(const Value: string);
begin
  FtpVag := Value;
  FtpVagHasValue := True;
end;

procedure TMdfeSefazVag.Setserie(const Value: string);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TMdfeSefazVag.SetnVag(const Value: Integer);
begin
  FnVag := Value;
  FnVagHasValue := True;
end;

procedure TMdfeSefazVag.SetnSeq(const Value: Integer);
begin
  FnSeq := Value;
  FnSeqHasValue := True;
end;

procedure TMdfeSefazVag.SetTU(const Value: Double);
begin
  FTU := Value;
  FTUHasValue := True;
end;

{ TMdfeSefazFerrov }

destructor TMdfeSefazFerrov.Destroy;
begin
  Fvag.Free;
  Ftrem.Free;
  inherited;
end;

procedure TMdfeSefazFerrov.Settrem(const Value: TMdfeSefazTrem);
begin
  if Value <> Ftrem then
  begin
    Ftrem.Free;
    Ftrem := Value;
  end;
end;

procedure TMdfeSefazFerrov.Setvag(const Value: TMdfeSefazVagList);
begin
  if Value <> Fvag then
  begin
    Fvag.Free;
    Fvag := Value;
  end;
end;

{ TMdfeSefazInfModal }

destructor TMdfeSefazInfModal.Destroy;
begin
  Fferrov.Free;
  Faquav.Free;
  Frodo.Free;
  Faereo.Free;
  inherited;
end;

procedure TMdfeSefazInfModal.SetversaoModal(const Value: string);
begin
  FversaoModal := Value;
  FversaoModalHasValue := True;
end;

procedure TMdfeSefazInfModal.Setaereo(const Value: TMdfeSefazAereo);
begin
  if Value <> Faereo then
  begin
    Faereo.Free;
    Faereo := Value;
  end;
end;

procedure TMdfeSefazInfModal.Setrodo(const Value: TMdfeSefazRodo);
begin
  if Value <> Frodo then
  begin
    Frodo.Free;
    Frodo := Value;
  end;
end;

procedure TMdfeSefazInfModal.Setaquav(const Value: TMdfeSefazAquav);
begin
  if Value <> Faquav then
  begin
    Faquav.Free;
    Faquav := Value;
  end;
end;

procedure TMdfeSefazInfModal.Setferrov(const Value: TMdfeSefazFerrov);
begin
  if Value <> Fferrov then
  begin
    Fferrov.Free;
    Fferrov := Value;
  end;
end;

{ TMdfeSefazLacUnidTransp }

procedure TMdfeSefazLacUnidTransp.SetnLacre(const Value: string);
begin
  FnLacre := Value;
  FnLacreHasValue := True;
end;

{ TMdfeSefazLacUnidCarga }

procedure TMdfeSefazLacUnidCarga.SetnLacre(const Value: string);
begin
  FnLacre := Value;
  FnLacreHasValue := True;
end;

{ TMdfeSefazUnidCarga }

destructor TMdfeSefazUnidCarga.Destroy;
begin
  FlacUnidCarga.Free;
  inherited;
end;

procedure TMdfeSefazUnidCarga.SettpUnidCarga(const Value: Integer);
begin
  FtpUnidCarga := Value;
  FtpUnidCargaHasValue := True;
end;

procedure TMdfeSefazUnidCarga.SetidUnidCarga(const Value: string);
begin
  FidUnidCarga := Value;
  FidUnidCargaHasValue := True;
end;

procedure TMdfeSefazUnidCarga.SetlacUnidCarga(const Value: TMdfeSefazLacUnidCargaList);
begin
  if Value <> FlacUnidCarga then
  begin
    FlacUnidCarga.Free;
    FlacUnidCarga := Value;
  end;
end;

procedure TMdfeSefazUnidCarga.SetqtdRat(const Value: Double);
begin
  FqtdRat := Value;
  FqtdRatHasValue := True;
end;

{ TMdfeSefazUnidadeTransp }

destructor TMdfeSefazUnidadeTransp.Destroy;
begin
  FinfUnidCarga.Free;
  FlacUnidTransp.Free;
  inherited;
end;

procedure TMdfeSefazUnidadeTransp.SettpUnidTransp(const Value: Integer);
begin
  FtpUnidTransp := Value;
  FtpUnidTranspHasValue := True;
end;

procedure TMdfeSefazUnidadeTransp.SetidUnidTransp(const Value: string);
begin
  FidUnidTransp := Value;
  FidUnidTranspHasValue := True;
end;

procedure TMdfeSefazUnidadeTransp.SetlacUnidTransp(const Value: TMdfeSefazLacUnidTranspList);
begin
  if Value <> FlacUnidTransp then
  begin
    FlacUnidTransp.Free;
    FlacUnidTransp := Value;
  end;
end;

procedure TMdfeSefazUnidadeTransp.SetinfUnidCarga(const Value: TMdfeSefazUnidCargaList);
begin
  if Value <> FinfUnidCarga then
  begin
    FinfUnidCarga.Free;
    FinfUnidCarga := Value;
  end;
end;

procedure TMdfeSefazUnidadeTransp.SetqtdRat(const Value: Double);
begin
  FqtdRat := Value;
  FqtdRatHasValue := True;
end;

{ TMdfeSefazPeri }

procedure TMdfeSefazPeri.SetnONU(const Value: string);
begin
  FnONU := Value;
  FnONUHasValue := True;
end;

procedure TMdfeSefazPeri.SetxNomeAE(const Value: string);
begin
  FxNomeAE := Value;
  FxNomeAEHasValue := True;
end;

procedure TMdfeSefazPeri.SetxClaRisco(const Value: string);
begin
  FxClaRisco := Value;
  FxClaRiscoHasValue := True;
end;

procedure TMdfeSefazPeri.SetgrEmb(const Value: string);
begin
  FgrEmb := Value;
  FgrEmbHasValue := True;
end;

procedure TMdfeSefazPeri.SetqTotProd(const Value: string);
begin
  FqTotProd := Value;
  FqTotProdHasValue := True;
end;

procedure TMdfeSefazPeri.SetqVolTipo(const Value: string);
begin
  FqVolTipo := Value;
  FqVolTipoHasValue := True;
end;

{ TMdfeSefazInfEntregaParcial }

procedure TMdfeSefazInfEntregaParcial.SetqtdTotal(const Value: Double);
begin
  FqtdTotal := Value;
  FqtdTotalHasValue := True;
end;

procedure TMdfeSefazInfEntregaParcial.SetqtdParcial(const Value: Double);
begin
  FqtdParcial := Value;
  FqtdParcialHasValue := True;
end;

{ TMdfeSefazInfCTe }

destructor TMdfeSefazInfCTe.Destroy;
begin
  FinfEntregaParcial.Free;
  Fperi.Free;
  FinfUnidTransp.Free;
  inherited;
end;

procedure TMdfeSefazInfCTe.SetchCTe(const Value: string);
begin
  FchCTe := Value;
  FchCTeHasValue := True;
end;

procedure TMdfeSefazInfCTe.SetSegCodBarra(const Value: string);
begin
  FSegCodBarra := Value;
  FSegCodBarraHasValue := True;
end;

procedure TMdfeSefazInfCTe.SetindReentrega(const Value: Integer);
begin
  FindReentrega := Value;
  FindReentregaHasValue := True;
end;

procedure TMdfeSefazInfCTe.SetinfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
begin
  if Value <> FinfUnidTransp then
  begin
    FinfUnidTransp.Free;
    FinfUnidTransp := Value;
  end;
end;

procedure TMdfeSefazInfCTe.Setperi(const Value: TMdfeSefazPeriList);
begin
  if Value <> Fperi then
  begin
    Fperi.Free;
    Fperi := Value;
  end;
end;

procedure TMdfeSefazInfCTe.SetinfEntregaParcial(const Value: TMdfeSefazInfEntregaParcial);
begin
  if Value <> FinfEntregaParcial then
  begin
    FinfEntregaParcial.Free;
    FinfEntregaParcial := Value;
  end;
end;

{ TMdfeSefazInfNFePeri }

procedure TMdfeSefazInfNFePeri.SetnONU(const Value: string);
begin
  FnONU := Value;
  FnONUHasValue := True;
end;

procedure TMdfeSefazInfNFePeri.SetxNomeAE(const Value: string);
begin
  FxNomeAE := Value;
  FxNomeAEHasValue := True;
end;

procedure TMdfeSefazInfNFePeri.SetxClaRisco(const Value: string);
begin
  FxClaRisco := Value;
  FxClaRiscoHasValue := True;
end;

procedure TMdfeSefazInfNFePeri.SetgrEmb(const Value: string);
begin
  FgrEmb := Value;
  FgrEmbHasValue := True;
end;

procedure TMdfeSefazInfNFePeri.SetqTotProd(const Value: string);
begin
  FqTotProd := Value;
  FqTotProdHasValue := True;
end;

procedure TMdfeSefazInfNFePeri.SetqVolTipo(const Value: string);
begin
  FqVolTipo := Value;
  FqVolTipoHasValue := True;
end;

{ TMdfeSefazInfNFe }

destructor TMdfeSefazInfNFe.Destroy;
begin
  Fperi.Free;
  FinfUnidTransp.Free;
  inherited;
end;

procedure TMdfeSefazInfNFe.SetchNFe(const Value: string);
begin
  FchNFe := Value;
  FchNFeHasValue := True;
end;

procedure TMdfeSefazInfNFe.SetSegCodBarra(const Value: string);
begin
  FSegCodBarra := Value;
  FSegCodBarraHasValue := True;
end;

procedure TMdfeSefazInfNFe.SetindReentrega(const Value: Integer);
begin
  FindReentrega := Value;
  FindReentregaHasValue := True;
end;

procedure TMdfeSefazInfNFe.SetinfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
begin
  if Value <> FinfUnidTransp then
  begin
    FinfUnidTransp.Free;
    FinfUnidTransp := Value;
  end;
end;

procedure TMdfeSefazInfNFe.Setperi(const Value: TMdfeSefazInfNFePeriList);
begin
  if Value <> Fperi then
  begin
    Fperi.Free;
    Fperi := Value;
  end;
end;

{ TMdfeSefazInfMDFeTranspPeri }

procedure TMdfeSefazInfMDFeTranspPeri.SetnONU(const Value: string);
begin
  FnONU := Value;
  FnONUHasValue := True;
end;

procedure TMdfeSefazInfMDFeTranspPeri.SetxNomeAE(const Value: string);
begin
  FxNomeAE := Value;
  FxNomeAEHasValue := True;
end;

procedure TMdfeSefazInfMDFeTranspPeri.SetxClaRisco(const Value: string);
begin
  FxClaRisco := Value;
  FxClaRiscoHasValue := True;
end;

procedure TMdfeSefazInfMDFeTranspPeri.SetgrEmb(const Value: string);
begin
  FgrEmb := Value;
  FgrEmbHasValue := True;
end;

procedure TMdfeSefazInfMDFeTranspPeri.SetqTotProd(const Value: string);
begin
  FqTotProd := Value;
  FqTotProdHasValue := True;
end;

procedure TMdfeSefazInfMDFeTranspPeri.SetqVolTipo(const Value: string);
begin
  FqVolTipo := Value;
  FqVolTipoHasValue := True;
end;

{ TMdfeSefazInfMDFeTransp }

destructor TMdfeSefazInfMDFeTransp.Destroy;
begin
  Fperi.Free;
  FinfUnidTransp.Free;
  inherited;
end;

procedure TMdfeSefazInfMDFeTransp.SetchMDFe(const Value: string);
begin
  FchMDFe := Value;
  FchMDFeHasValue := True;
end;

procedure TMdfeSefazInfMDFeTransp.SetindReentrega(const Value: Integer);
begin
  FindReentrega := Value;
  FindReentregaHasValue := True;
end;

procedure TMdfeSefazInfMDFeTransp.SetinfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
begin
  if Value <> FinfUnidTransp then
  begin
    FinfUnidTransp.Free;
    FinfUnidTransp := Value;
  end;
end;

procedure TMdfeSefazInfMDFeTransp.Setperi(const Value: TMdfeSefazInfMDFeTranspPeriList);
begin
  if Value <> Fperi then
  begin
    Fperi.Free;
    Fperi := Value;
  end;
end;

{ TMdfeSefazInfMunDescarga }

destructor TMdfeSefazInfMunDescarga.Destroy;
begin
  FinfMDFeTransp.Free;
  FinfNFe.Free;
  FinfCTe.Free;
  inherited;
end;

procedure TMdfeSefazInfMunDescarga.SetcMunDescarga(const Value: Integer);
begin
  FcMunDescarga := Value;
  FcMunDescargaHasValue := True;
end;

procedure TMdfeSefazInfMunDescarga.SetxMunDescarga(const Value: string);
begin
  FxMunDescarga := Value;
  FxMunDescargaHasValue := True;
end;

procedure TMdfeSefazInfMunDescarga.SetinfCTe(const Value: TMdfeSefazInfCTeList);
begin
  if Value <> FinfCTe then
  begin
    FinfCTe.Free;
    FinfCTe := Value;
  end;
end;

procedure TMdfeSefazInfMunDescarga.SetinfNFe(const Value: TMdfeSefazInfNFeList);
begin
  if Value <> FinfNFe then
  begin
    FinfNFe.Free;
    FinfNFe := Value;
  end;
end;

procedure TMdfeSefazInfMunDescarga.SetinfMDFeTransp(const Value: TMdfeSefazInfMDFeTranspList);
begin
  if Value <> FinfMDFeTransp then
  begin
    FinfMDFeTransp.Free;
    FinfMDFeTransp := Value;
  end;
end;

{ TMdfeSefazInfDoc }

destructor TMdfeSefazInfDoc.Destroy;
begin
  FinfMunDescarga.Free;
  inherited;
end;

procedure TMdfeSefazInfDoc.SetinfMunDescarga(const Value: TMdfeSefazInfMunDescargaList);
begin
  if Value <> FinfMunDescarga then
  begin
    FinfMunDescarga.Free;
    FinfMunDescarga := Value;
  end;
end;

{ TMdfeSefazInfResp }

procedure TMdfeSefazInfResp.SetrespSeg(const Value: Integer);
begin
  FrespSeg := Value;
  FrespSegHasValue := True;
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

procedure TMdfeSefazInfSeg.SetxSeg(const Value: string);
begin
  FxSeg := Value;
  FxSegHasValue := True;
end;

procedure TMdfeSefazInfSeg.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

{ TMdfeSefazSeg }

destructor TMdfeSefazSeg.Destroy;
begin
  FnAver.Free;
  FinfSeg.Free;
  FinfResp.Free;
  inherited;
end;

procedure TMdfeSefazSeg.SetinfResp(const Value: TMdfeSefazInfResp);
begin
  if Value <> FinfResp then
  begin
    FinfResp.Free;
    FinfResp := Value;
  end;
end;

procedure TMdfeSefazSeg.SetinfSeg(const Value: TMdfeSefazInfSeg);
begin
  if Value <> FinfSeg then
  begin
    FinfSeg.Free;
    FinfSeg := Value;
  end;
end;

procedure TMdfeSefazSeg.SetnApol(const Value: string);
begin
  FnApol := Value;
  FnApolHasValue := True;
end;

procedure TMdfeSefazSeg.SetnAver(const Value: stringList);
begin
  if Value <> FnAver then
  begin
    FnAver.Free;
    FnAver := Value;
  end;
end;

{ TMdfeSefazInfLocalCarrega }

procedure TMdfeSefazInfLocalCarrega.SetCEP(const Value: Integer);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TMdfeSefazInfLocalCarrega.Setlatitude(const Value: Double);
begin
  Flatitude := Value;
  FlatitudeHasValue := True;
end;

procedure TMdfeSefazInfLocalCarrega.Setlongitude(const Value: Double);
begin
  Flongitude := Value;
  FlongitudeHasValue := True;
end;

{ TMdfeSefazInfLocalDescarrega }

procedure TMdfeSefazInfLocalDescarrega.SetCEP(const Value: Integer);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TMdfeSefazInfLocalDescarrega.Setlatitude(const Value: Double);
begin
  Flatitude := Value;
  FlatitudeHasValue := True;
end;

procedure TMdfeSefazInfLocalDescarrega.Setlongitude(const Value: Double);
begin
  Flongitude := Value;
  FlongitudeHasValue := True;
end;

{ TMdfeSefazInfLotacao }

destructor TMdfeSefazInfLotacao.Destroy;
begin
  FinfLocalDescarrega.Free;
  FinfLocalCarrega.Free;
  inherited;
end;

procedure TMdfeSefazInfLotacao.SetinfLocalCarrega(const Value: TMdfeSefazInfLocalCarrega);
begin
  if Value <> FinfLocalCarrega then
  begin
    FinfLocalCarrega.Free;
    FinfLocalCarrega := Value;
  end;
end;

procedure TMdfeSefazInfLotacao.SetinfLocalDescarrega(const Value: TMdfeSefazInfLocalDescarrega);
begin
  if Value <> FinfLocalDescarrega then
  begin
    FinfLocalDescarrega.Free;
    FinfLocalDescarrega := Value;
  end;
end;

{ TMdfeSefazProdPred }

destructor TMdfeSefazProdPred.Destroy;
begin
  FinfLotacao.Free;
  inherited;
end;

procedure TMdfeSefazProdPred.SettpCarga(const Value: string);
begin
  FtpCarga := Value;
  FtpCargaHasValue := True;
end;

procedure TMdfeSefazProdPred.SetxProd(const Value: string);
begin
  FxProd := Value;
  FxProdHasValue := True;
end;

procedure TMdfeSefazProdPred.SetcEAN(const Value: string);
begin
  FcEAN := Value;
  FcEANHasValue := True;
end;

procedure TMdfeSefazProdPred.SetNCM(const Value: string);
begin
  FNCM := Value;
  FNCMHasValue := True;
end;

procedure TMdfeSefazProdPred.SetinfLotacao(const Value: TMdfeSefazInfLotacao);
begin
  if Value <> FinfLotacao then
  begin
    FinfLotacao.Free;
    FinfLotacao := Value;
  end;
end;

{ TMdfeSefazTot }

procedure TMdfeSefazTot.SetqCTe(const Value: Integer);
begin
  FqCTe := Value;
  FqCTeHasValue := True;
end;

procedure TMdfeSefazTot.SetqNFe(const Value: Integer);
begin
  FqNFe := Value;
  FqNFeHasValue := True;
end;

procedure TMdfeSefazTot.SetqMDFe(const Value: Integer);
begin
  FqMDFe := Value;
  FqMDFeHasValue := True;
end;

procedure TMdfeSefazTot.SetvCarga(const Value: Double);
begin
  FvCarga := Value;
  FvCargaHasValue := True;
end;

procedure TMdfeSefazTot.SetcUnid(const Value: string);
begin
  FcUnid := Value;
  FcUnidHasValue := True;
end;

procedure TMdfeSefazTot.SetqCarga(const Value: Double);
begin
  FqCarga := Value;
  FqCargaHasValue := True;
end;

{ TMdfeSefazLacres }

procedure TMdfeSefazLacres.SetnLacre(const Value: string);
begin
  FnLacre := Value;
  FnLacreHasValue := True;
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

procedure TMdfeSefazInfAdic.SetinfAdFisco(const Value: string);
begin
  FinfAdFisco := Value;
  FinfAdFiscoHasValue := True;
end;

procedure TMdfeSefazInfAdic.SetinfCpl(const Value: string);
begin
  FinfCpl := Value;
  FinfCplHasValue := True;
end;

{ TMdfeSefazRespTec }

procedure TMdfeSefazRespTec.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TMdfeSefazRespTec.SetxContato(const Value: string);
begin
  FxContato := Value;
  FxContatoHasValue := True;
end;

procedure TMdfeSefazRespTec.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
end;

procedure TMdfeSefazRespTec.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

procedure TMdfeSefazRespTec.SetidCSRT(const Value: Integer);
begin
  FidCSRT := Value;
  FidCSRTHasValue := True;
end;

procedure TMdfeSefazRespTec.SethashCSRT(const Value: string);
begin
  FhashCSRT := Value;
  FhashCSRTHasValue := True;
end;

{ TMdfeSefazInfSolicNFF }

procedure TMdfeSefazInfSolicNFF.SetxSolic(const Value: string);
begin
  FxSolic := Value;
  FxSolicHasValue := True;
end;

{ TMdfeSefazInfMDFe }

destructor TMdfeSefazInfMDFe.Destroy;
begin
  FinfSolicNFF.Free;
  FinfRespTec.Free;
  FinfAdic.Free;
  FautXML.Free;
  Flacres.Free;
  Ftot.Free;
  FprodPred.Free;
  Fseg.Free;
  FinfDoc.Free;
  FinfModal.Free;
  Femit.Free;
  Fide.Free;
  inherited;
end;

procedure TMdfeSefazInfMDFe.Setversao(const Value: string);
begin
  Fversao := Value;
  FversaoHasValue := True;
end;

procedure TMdfeSefazInfMDFe.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TMdfeSefazInfMDFe.Setide(const Value: TMdfeSefazIde);
begin
  if Value <> Fide then
  begin
    Fide.Free;
    Fide := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.Setemit(const Value: TMdfeSefazEmit);
begin
  if Value <> Femit then
  begin
    Femit.Free;
    Femit := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetinfModal(const Value: TMdfeSefazInfModal);
begin
  if Value <> FinfModal then
  begin
    FinfModal.Free;
    FinfModal := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetinfDoc(const Value: TMdfeSefazInfDoc);
begin
  if Value <> FinfDoc then
  begin
    FinfDoc.Free;
    FinfDoc := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.Setseg(const Value: TMdfeSefazSegList);
begin
  if Value <> Fseg then
  begin
    Fseg.Free;
    Fseg := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetprodPred(const Value: TMdfeSefazProdPred);
begin
  if Value <> FprodPred then
  begin
    FprodPred.Free;
    FprodPred := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.Settot(const Value: TMdfeSefazTot);
begin
  if Value <> Ftot then
  begin
    Ftot.Free;
    Ftot := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.Setlacres(const Value: TMdfeSefazLacresList);
begin
  if Value <> Flacres then
  begin
    Flacres.Free;
    Flacres := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetautXML(const Value: TMdfeSefazAutXMLList);
begin
  if Value <> FautXML then
  begin
    FautXML.Free;
    FautXML := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetinfAdic(const Value: TMdfeSefazInfAdic);
begin
  if Value <> FinfAdic then
  begin
    FinfAdic.Free;
    FinfAdic := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetinfRespTec(const Value: TMdfeSefazRespTec);
begin
  if Value <> FinfRespTec then
  begin
    FinfRespTec.Free;
    FinfRespTec := Value;
  end;
end;

procedure TMdfeSefazInfMDFe.SetinfSolicNFF(const Value: TMdfeSefazInfSolicNFF);
begin
  if Value <> FinfSolicNFF then
  begin
    FinfSolicNFF.Free;
    FinfSolicNFF := Value;
  end;
end;

{ TMdfeSefazInfMDFeSupl }

procedure TMdfeSefazInfMDFeSupl.SetqrCodMDFe(const Value: string);
begin
  FqrCodMDFe := Value;
  FqrCodMDFeHasValue := True;
end;

{ TMdfePedidoEmissao }

destructor TMdfePedidoEmissao.Destroy;
begin
  FinfMDFeSupl.Free;
  FinfMDFe.Free;
  inherited;
end;

procedure TMdfePedidoEmissao.SetinfMDFe(const Value: TMdfeSefazInfMDFe);
begin
  if Value <> FinfMDFe then
  begin
    FinfMDFe.Free;
    FinfMDFe := Value;
  end;
end;

procedure TMdfePedidoEmissao.SetinfMDFeSupl(const Value: TMdfeSefazInfMDFeSupl);
begin
  if Value <> FinfMDFeSupl then
  begin
    FinfMDFeSupl.Free;
    FinfMDFeSupl := Value;
  end;
end;

procedure TMdfePedidoEmissao.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TMdfePedidoEmissao.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
end;

{ TMdfePedidoEmissaoLote }

destructor TMdfePedidoEmissaoLote.Destroy;
begin
  Fdocumentos.Free;
  inherited;
end;

procedure TMdfePedidoEmissaoLote.Setdocumentos(const Value: TMdfePedidoEmissaoList);
begin
  if Value <> Fdocumentos then
  begin
    Fdocumentos.Free;
    Fdocumentos := Value;
  end;
end;

procedure TMdfePedidoEmissaoLote.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TMdfePedidoEmissaoLote.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
end;

procedure TMdfePedidoEmissaoLote.Setid_lote(const Value: string);
begin
  Fid_lote := Value;
  Fid_loteHasValue := True;
end;

{ TMdfePedidoCancelamento }

procedure TMdfePedidoCancelamento.Setjustificativa(const Value: string);
begin
  Fjustificativa := Value;
  FjustificativaHasValue := True;
end;

{ TMdfePedidoEncerramento }

procedure TMdfePedidoEncerramento.Setdata_encerramento(const Value: TDate);
begin
  Fdata_encerramento := Value;
  Fdata_encerramentoHasValue := True;
end;

procedure TMdfePedidoEncerramento.Setuf(const Value: string);
begin
  Fuf := Value;
  FufHasValue := True;
end;

procedure TMdfePedidoEncerramento.Setcodigo_municipio(const Value: Integer);
begin
  Fcodigo_municipio := Value;
  Fcodigo_municipioHasValue := True;
end;

{ TMdfeEncerramento }

destructor TMdfeEncerramento.Destroy;
begin
  Fautor.Free;
  inherited;
end;

procedure TMdfeEncerramento.Setdata_encerramento(const Value: TDate);
begin
  Fdata_encerramento := Value;
  Fdata_encerramentoHasValue := True;
end;

procedure TMdfeEncerramento.Setuf(const Value: string);
begin
  Fuf := Value;
  FufHasValue := True;
end;

procedure TMdfeEncerramento.Setcodigo_municipio(const Value: Integer);
begin
  Fcodigo_municipio := Value;
  Fcodigo_municipioHasValue := True;
end;

procedure TMdfeEncerramento.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TMdfeEncerramento.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TMdfeEncerramento.Setstatus(const Value: string);
begin
  Fstatus := Value;
  FstatusHasValue := True;
end;

procedure TMdfeEncerramento.Setautor(const Value: TDfeAutorEvento);
begin
  if Value <> Fautor then
  begin
    Fautor.Free;
    Fautor := Value;
  end;
end;

procedure TMdfeEncerramento.Setchave_acesso(const Value: string);
begin
  Fchave_acesso := Value;
  Fchave_acessoHasValue := True;
end;

procedure TMdfeEncerramento.Setdata_evento(const Value: TDateTime);
begin
  Fdata_evento := Value;
  Fdata_eventoHasValue := True;
end;

procedure TMdfeEncerramento.Setnumero_sequencial(const Value: Integer);
begin
  Fnumero_sequencial := Value;
  Fnumero_sequencialHasValue := True;
end;

procedure TMdfeEncerramento.Setdata_recebimento(const Value: TDateTime);
begin
  Fdata_recebimento := Value;
  Fdata_recebimentoHasValue := True;
end;

procedure TMdfeEncerramento.Setcodigo_status(const Value: Integer);
begin
  Fcodigo_status := Value;
  Fcodigo_statusHasValue := True;
end;

procedure TMdfeEncerramento.Setmotivo_status(const Value: string);
begin
  Fmotivo_status := Value;
  Fmotivo_statusHasValue := True;
end;

procedure TMdfeEncerramento.Setnumero_protocolo(const Value: string);
begin
  Fnumero_protocolo := Value;
  Fnumero_protocoloHasValue := True;
end;

procedure TMdfeEncerramento.Setcodigo_mensagem(const Value: Integer);
begin
  Fcodigo_mensagem := Value;
  Fcodigo_mensagemHasValue := True;
end;

procedure TMdfeEncerramento.Setmensagem(const Value: string);
begin
  Fmensagem := Value;
  FmensagemHasValue := True;
end;

procedure TMdfeEncerramento.Settipo_evento(const Value: string);
begin
  Ftipo_evento := Value;
  Ftipo_eventoHasValue := True;
end;

{ TMdfePedidoInclusaoCondutor }

procedure TMdfePedidoInclusaoCondutor.Setnome_condutor(const Value: string);
begin
  Fnome_condutor := Value;
  Fnome_condutorHasValue := True;
end;

procedure TMdfePedidoInclusaoCondutor.Setcpf_condutor(const Value: string);
begin
  Fcpf_condutor := Value;
  Fcpf_condutorHasValue := True;
end;

{ TMdfeInclusaoCondutor }

destructor TMdfeInclusaoCondutor.Destroy;
begin
  Fautor.Free;
  inherited;
end;

procedure TMdfeInclusaoCondutor.Setnome_condutor(const Value: string);
begin
  Fnome_condutor := Value;
  Fnome_condutorHasValue := True;
end;

procedure TMdfeInclusaoCondutor.Setcpf_condutor(const Value: string);
begin
  Fcpf_condutor := Value;
  Fcpf_condutorHasValue := True;
end;

procedure TMdfeInclusaoCondutor.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TMdfeInclusaoCondutor.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TMdfeInclusaoCondutor.Setstatus(const Value: string);
begin
  Fstatus := Value;
  FstatusHasValue := True;
end;

procedure TMdfeInclusaoCondutor.Setautor(const Value: TDfeAutorEvento);
begin
  if Value <> Fautor then
  begin
    Fautor.Free;
    Fautor := Value;
  end;
end;

procedure TMdfeInclusaoCondutor.Setchave_acesso(const Value: string);
begin
  Fchave_acesso := Value;
  Fchave_acessoHasValue := True;
end;

procedure TMdfeInclusaoCondutor.Setdata_evento(const Value: TDateTime);
begin
  Fdata_evento := Value;
  Fdata_eventoHasValue := True;
end;

procedure TMdfeInclusaoCondutor.Setnumero_sequencial(const Value: Integer);
begin
  Fnumero_sequencial := Value;
  Fnumero_sequencialHasValue := True;
end;

procedure TMdfeInclusaoCondutor.Setdata_recebimento(const Value: TDateTime);
begin
  Fdata_recebimento := Value;
  Fdata_recebimentoHasValue := True;
end;

procedure TMdfeInclusaoCondutor.Setcodigo_status(const Value: Integer);
begin
  Fcodigo_status := Value;
  Fcodigo_statusHasValue := True;
end;

procedure TMdfeInclusaoCondutor.Setmotivo_status(const Value: string);
begin
  Fmotivo_status := Value;
  Fmotivo_statusHasValue := True;
end;

procedure TMdfeInclusaoCondutor.Setnumero_protocolo(const Value: string);
begin
  Fnumero_protocolo := Value;
  Fnumero_protocoloHasValue := True;
end;

procedure TMdfeInclusaoCondutor.Setcodigo_mensagem(const Value: Integer);
begin
  Fcodigo_mensagem := Value;
  Fcodigo_mensagemHasValue := True;
end;

procedure TMdfeInclusaoCondutor.Setmensagem(const Value: string);
begin
  Fmensagem := Value;
  FmensagemHasValue := True;
end;

procedure TMdfeInclusaoCondutor.Settipo_evento(const Value: string);
begin
  Ftipo_evento := Value;
  Ftipo_eventoHasValue := True;
end;

{ TMdfeDocumentoVinculado }

procedure TMdfeDocumentoVinculado.Setcodigo_municipio_descarga(const Value: Integer);
begin
  Fcodigo_municipio_descarga := Value;
  Fcodigo_municipio_descargaHasValue := True;
end;

procedure TMdfeDocumentoVinculado.Setmunicipio_descarga(const Value: string);
begin
  Fmunicipio_descarga := Value;
  Fmunicipio_descargaHasValue := True;
end;

procedure TMdfeDocumentoVinculado.Setchave_acesso_nfe(const Value: string);
begin
  Fchave_acesso_nfe := Value;
  Fchave_acesso_nfeHasValue := True;
end;

{ TMdfePedidoInclusaoDfe }

destructor TMdfePedidoInclusaoDfe.Destroy;
begin
  Fdocumentos.Free;
  inherited;
end;

procedure TMdfePedidoInclusaoDfe.Setcodigo_municipio_carrega(const Value: Integer);
begin
  Fcodigo_municipio_carrega := Value;
  Fcodigo_municipio_carregaHasValue := True;
end;

procedure TMdfePedidoInclusaoDfe.Setmunicipio_carrega(const Value: string);
begin
  Fmunicipio_carrega := Value;
  Fmunicipio_carregaHasValue := True;
end;

procedure TMdfePedidoInclusaoDfe.Setdocumentos(const Value: TMdfeDocumentoVinculadoList);
begin
  if Value <> Fdocumentos then
  begin
    Fdocumentos.Free;
    Fdocumentos := Value;
  end;
end;

procedure TMdfePedidoInclusaoDfe.Setprotocolo_autorizacao(const Value: string);
begin
  Fprotocolo_autorizacao := Value;
  Fprotocolo_autorizacaoHasValue := True;
end;

{ TMdfeInclusaoDfe }

destructor TMdfeInclusaoDfe.Destroy;
begin
  Fautor.Free;
  Fdocumentos.Free;
  inherited;
end;

procedure TMdfeInclusaoDfe.Setcodigo_municipio_carrega(const Value: Integer);
begin
  Fcodigo_municipio_carrega := Value;
  Fcodigo_municipio_carregaHasValue := True;
end;

procedure TMdfeInclusaoDfe.Setmunicipio_carrega(const Value: string);
begin
  Fmunicipio_carrega := Value;
  Fmunicipio_carregaHasValue := True;
end;

procedure TMdfeInclusaoDfe.Setdocumentos(const Value: TMdfeDocumentoVinculadoList);
begin
  if Value <> Fdocumentos then
  begin
    Fdocumentos.Free;
    Fdocumentos := Value;
  end;
end;

procedure TMdfeInclusaoDfe.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TMdfeInclusaoDfe.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TMdfeInclusaoDfe.Setstatus(const Value: string);
begin
  Fstatus := Value;
  FstatusHasValue := True;
end;

procedure TMdfeInclusaoDfe.Setautor(const Value: TDfeAutorEvento);
begin
  if Value <> Fautor then
  begin
    Fautor.Free;
    Fautor := Value;
  end;
end;

procedure TMdfeInclusaoDfe.Setchave_acesso(const Value: string);
begin
  Fchave_acesso := Value;
  Fchave_acessoHasValue := True;
end;

procedure TMdfeInclusaoDfe.Setdata_evento(const Value: TDateTime);
begin
  Fdata_evento := Value;
  Fdata_eventoHasValue := True;
end;

procedure TMdfeInclusaoDfe.Setnumero_sequencial(const Value: Integer);
begin
  Fnumero_sequencial := Value;
  Fnumero_sequencialHasValue := True;
end;

procedure TMdfeInclusaoDfe.Setdata_recebimento(const Value: TDateTime);
begin
  Fdata_recebimento := Value;
  Fdata_recebimentoHasValue := True;
end;

procedure TMdfeInclusaoDfe.Setcodigo_status(const Value: Integer);
begin
  Fcodigo_status := Value;
  Fcodigo_statusHasValue := True;
end;

procedure TMdfeInclusaoDfe.Setmotivo_status(const Value: string);
begin
  Fmotivo_status := Value;
  Fmotivo_statusHasValue := True;
end;

procedure TMdfeInclusaoDfe.Setnumero_protocolo(const Value: string);
begin
  Fnumero_protocolo := Value;
  Fnumero_protocoloHasValue := True;
end;

procedure TMdfeInclusaoDfe.Setcodigo_mensagem(const Value: Integer);
begin
  Fcodigo_mensagem := Value;
  Fcodigo_mensagemHasValue := True;
end;

procedure TMdfeInclusaoDfe.Setmensagem(const Value: string);
begin
  Fmensagem := Value;
  FmensagemHasValue := True;
end;

procedure TMdfeInclusaoDfe.Settipo_evento(const Value: string);
begin
  Ftipo_evento := Value;
  Ftipo_eventoHasValue := True;
end;

{ TNfeSefazRefNF }

procedure TNfeSefazRefNF.SetcUF(const Value: Integer);
begin
  FcUF := Value;
  FcUFHasValue := True;
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

procedure TNfeSefazRefNF.Setmod(const Value: string);
begin
  Fmod := Value;
  FmodHasValue := True;
end;

procedure TNfeSefazRefNF.Setserie(const Value: Integer);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TNfeSefazRefNF.SetnNF(const Value: Integer);
begin
  FnNF := Value;
  FnNFHasValue := True;
end;

{ TNfeSefazRefNFP }

procedure TNfeSefazRefNFP.SetcUF(const Value: Integer);
begin
  FcUF := Value;
  FcUFHasValue := True;
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

procedure TNfeSefazRefNFP.Setmod(const Value: string);
begin
  Fmod := Value;
  FmodHasValue := True;
end;

procedure TNfeSefazRefNFP.Setserie(const Value: Integer);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TNfeSefazRefNFP.SetnNF(const Value: Integer);
begin
  FnNF := Value;
  FnNFHasValue := True;
end;

{ TNfeSefazRefECF }

procedure TNfeSefazRefECF.Setmod(const Value: string);
begin
  Fmod := Value;
  FmodHasValue := True;
end;

procedure TNfeSefazRefECF.SetnECF(const Value: Integer);
begin
  FnECF := Value;
  FnECFHasValue := True;
end;

procedure TNfeSefazRefECF.SetnCOO(const Value: Integer);
begin
  FnCOO := Value;
  FnCOOHasValue := True;
end;

{ TNfeSefazNFref }

destructor TNfeSefazNFref.Destroy;
begin
  FrefECF.Free;
  FrefNFP.Free;
  FrefNF.Free;
  inherited;
end;

procedure TNfeSefazNFref.SetrefNFe(const Value: string);
begin
  FrefNFe := Value;
  FrefNFeHasValue := True;
end;

procedure TNfeSefazNFref.SetrefNF(const Value: TNfeSefazRefNF);
begin
  if Value <> FrefNF then
  begin
    FrefNF.Free;
    FrefNF := Value;
  end;
end;

procedure TNfeSefazNFref.SetrefNFP(const Value: TNfeSefazRefNFP);
begin
  if Value <> FrefNFP then
  begin
    FrefNFP.Free;
    FrefNFP := Value;
  end;
end;

procedure TNfeSefazNFref.SetrefCTe(const Value: string);
begin
  FrefCTe := Value;
  FrefCTeHasValue := True;
end;

procedure TNfeSefazNFref.SetrefECF(const Value: TNfeSefazRefECF);
begin
  if Value <> FrefECF then
  begin
    FrefECF.Free;
    FrefECF := Value;
  end;
end;

{ TNfeSefazIde }

destructor TNfeSefazIde.Destroy;
begin
  FNFref.Free;
  inherited;
end;

procedure TNfeSefazIde.SetcUF(const Value: Integer);
begin
  FcUF := Value;
  FcUFHasValue := True;
end;

procedure TNfeSefazIde.SetcNF(const Value: Integer);
begin
  FcNF := Value;
  FcNFHasValue := True;
end;

procedure TNfeSefazIde.SetnatOp(const Value: string);
begin
  FnatOp := Value;
  FnatOpHasValue := True;
end;

procedure TNfeSefazIde.Setmod(const Value: Integer);
begin
  Fmod := Value;
  FmodHasValue := True;
end;

procedure TNfeSefazIde.Setserie(const Value: Integer);
begin
  Fserie := Value;
  FserieHasValue := True;
end;

procedure TNfeSefazIde.SetnNF(const Value: Integer);
begin
  FnNF := Value;
  FnNFHasValue := True;
end;

procedure TNfeSefazIde.SetdhEmi(const Value: TDateTime);
begin
  FdhEmi := Value;
  FdhEmiHasValue := True;
end;

procedure TNfeSefazIde.SetdhSaiEnt(const Value: TDateTime);
begin
  FdhSaiEnt := Value;
  FdhSaiEntHasValue := True;
end;

procedure TNfeSefazIde.SettpNF(const Value: Integer);
begin
  FtpNF := Value;
  FtpNFHasValue := True;
end;

procedure TNfeSefazIde.SetidDest(const Value: Integer);
begin
  FidDest := Value;
  FidDestHasValue := True;
end;

procedure TNfeSefazIde.SetcMunFG(const Value: Integer);
begin
  FcMunFG := Value;
  FcMunFGHasValue := True;
end;

procedure TNfeSefazIde.SettpImp(const Value: Integer);
begin
  FtpImp := Value;
  FtpImpHasValue := True;
end;

procedure TNfeSefazIde.SettpEmis(const Value: Integer);
begin
  FtpEmis := Value;
  FtpEmisHasValue := True;
end;

procedure TNfeSefazIde.SetcDV(const Value: Integer);
begin
  FcDV := Value;
  FcDVHasValue := True;
end;

procedure TNfeSefazIde.SettpAmb(const Value: Integer);
begin
  FtpAmb := Value;
  FtpAmbHasValue := True;
end;

procedure TNfeSefazIde.SetfinNFe(const Value: Integer);
begin
  FfinNFe := Value;
  FfinNFeHasValue := True;
end;

procedure TNfeSefazIde.SetindFinal(const Value: Integer);
begin
  FindFinal := Value;
  FindFinalHasValue := True;
end;

procedure TNfeSefazIde.SetindPres(const Value: Integer);
begin
  FindPres := Value;
  FindPresHasValue := True;
end;

procedure TNfeSefazIde.SetindIntermed(const Value: Integer);
begin
  FindIntermed := Value;
  FindIntermedHasValue := True;
end;

procedure TNfeSefazIde.SetprocEmi(const Value: Integer);
begin
  FprocEmi := Value;
  FprocEmiHasValue := True;
end;

procedure TNfeSefazIde.SetverProc(const Value: string);
begin
  FverProc := Value;
  FverProcHasValue := True;
end;

procedure TNfeSefazIde.SetdhCont(const Value: TDateTime);
begin
  FdhCont := Value;
  FdhContHasValue := True;
end;

procedure TNfeSefazIde.SetxJust(const Value: string);
begin
  FxJust := Value;
  FxJustHasValue := True;
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

procedure TNfeSefazEnderEmi.SetxLgr(const Value: string);
begin
  FxLgr := Value;
  FxLgrHasValue := True;
end;

procedure TNfeSefazEnderEmi.Setnro(const Value: string);
begin
  Fnro := Value;
  FnroHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetxCpl(const Value: string);
begin
  FxCpl := Value;
  FxCplHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetxBairro(const Value: string);
begin
  FxBairro := Value;
  FxBairroHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetcMun(const Value: Integer);
begin
  FcMun := Value;
  FcMunHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetxMun(const Value: string);
begin
  FxMun := Value;
  FxMunHasValue := True;
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

procedure TNfeSefazEnderEmi.SetcPais(const Value: Integer);
begin
  FcPais := Value;
  FcPaisHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetxPais(const Value: string);
begin
  FxPais := Value;
  FxPaisHasValue := True;
end;

procedure TNfeSefazEnderEmi.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

{ TNfeSefazEmit }

destructor TNfeSefazEmit.Destroy;
begin
  FenderEmit.Free;
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

procedure TNfeSefazEmit.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TNfeSefazEmit.SetxFant(const Value: string);
begin
  FxFant := Value;
  FxFantHasValue := True;
end;

procedure TNfeSefazEmit.SetenderEmit(const Value: TNfeSefazEnderEmi);
begin
  if Value <> FenderEmit then
  begin
    FenderEmit.Free;
    FenderEmit := Value;
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

procedure TNfeSefazAvulsa.SetxOrgao(const Value: string);
begin
  FxOrgao := Value;
  FxOrgaoHasValue := True;
end;

procedure TNfeSefazAvulsa.Setmatr(const Value: string);
begin
  Fmatr := Value;
  FmatrHasValue := True;
end;

procedure TNfeSefazAvulsa.SetxAgente(const Value: string);
begin
  FxAgente := Value;
  FxAgenteHasValue := True;
end;

procedure TNfeSefazAvulsa.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

procedure TNfeSefazAvulsa.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

procedure TNfeSefazAvulsa.SetnDAR(const Value: string);
begin
  FnDAR := Value;
  FnDARHasValue := True;
end;

procedure TNfeSefazAvulsa.SetdEmi(const Value: TDate);
begin
  FdEmi := Value;
  FdEmiHasValue := True;
end;

procedure TNfeSefazAvulsa.SetvDAR(const Value: Double);
begin
  FvDAR := Value;
  FvDARHasValue := True;
end;

procedure TNfeSefazAvulsa.SetrepEmi(const Value: string);
begin
  FrepEmi := Value;
  FrepEmiHasValue := True;
end;

procedure TNfeSefazAvulsa.SetdPag(const Value: TDate);
begin
  FdPag := Value;
  FdPagHasValue := True;
end;

{ TNfeSefazEndereco }

procedure TNfeSefazEndereco.SetxLgr(const Value: string);
begin
  FxLgr := Value;
  FxLgrHasValue := True;
end;

procedure TNfeSefazEndereco.Setnro(const Value: string);
begin
  Fnro := Value;
  FnroHasValue := True;
end;

procedure TNfeSefazEndereco.SetxCpl(const Value: string);
begin
  FxCpl := Value;
  FxCplHasValue := True;
end;

procedure TNfeSefazEndereco.SetxBairro(const Value: string);
begin
  FxBairro := Value;
  FxBairroHasValue := True;
end;

procedure TNfeSefazEndereco.SetcMun(const Value: Integer);
begin
  FcMun := Value;
  FcMunHasValue := True;
end;

procedure TNfeSefazEndereco.SetxMun(const Value: string);
begin
  FxMun := Value;
  FxMunHasValue := True;
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

procedure TNfeSefazEndereco.SetcPais(const Value: Integer);
begin
  FcPais := Value;
  FcPaisHasValue := True;
end;

procedure TNfeSefazEndereco.SetxPais(const Value: string);
begin
  FxPais := Value;
  FxPaisHasValue := True;
end;

procedure TNfeSefazEndereco.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

{ TNfeSefazDest }

destructor TNfeSefazDest.Destroy;
begin
  FenderDest.Free;
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

procedure TNfeSefazDest.SetidEstrangeiro(const Value: string);
begin
  FidEstrangeiro := Value;
  FidEstrangeiroHasValue := True;
end;

procedure TNfeSefazDest.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TNfeSefazDest.SetenderDest(const Value: TNfeSefazEndereco);
begin
  if Value <> FenderDest then
  begin
    FenderDest.Free;
    FenderDest := Value;
  end;
end;

procedure TNfeSefazDest.SetindIEDest(const Value: Integer);
begin
  FindIEDest := Value;
  FindIEDestHasValue := True;
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

procedure TNfeSefazDest.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
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

procedure TNfeSefazLocal.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TNfeSefazLocal.SetxLgr(const Value: string);
begin
  FxLgr := Value;
  FxLgrHasValue := True;
end;

procedure TNfeSefazLocal.Setnro(const Value: string);
begin
  Fnro := Value;
  FnroHasValue := True;
end;

procedure TNfeSefazLocal.SetxCpl(const Value: string);
begin
  FxCpl := Value;
  FxCplHasValue := True;
end;

procedure TNfeSefazLocal.SetxBairro(const Value: string);
begin
  FxBairro := Value;
  FxBairroHasValue := True;
end;

procedure TNfeSefazLocal.SetcMun(const Value: Integer);
begin
  FcMun := Value;
  FcMunHasValue := True;
end;

procedure TNfeSefazLocal.SetxMun(const Value: string);
begin
  FxMun := Value;
  FxMunHasValue := True;
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

procedure TNfeSefazLocal.SetcPais(const Value: Integer);
begin
  FcPais := Value;
  FcPaisHasValue := True;
end;

procedure TNfeSefazLocal.SetxPais(const Value: string);
begin
  FxPais := Value;
  FxPaisHasValue := True;
end;

procedure TNfeSefazLocal.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

procedure TNfeSefazLocal.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
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

procedure TNfeSefazAdi.SetnAdicao(const Value: Integer);
begin
  FnAdicao := Value;
  FnAdicaoHasValue := True;
end;

procedure TNfeSefazAdi.SetnSeqAdic(const Value: Integer);
begin
  FnSeqAdic := Value;
  FnSeqAdicHasValue := True;
end;

procedure TNfeSefazAdi.SetcFabricante(const Value: string);
begin
  FcFabricante := Value;
  FcFabricanteHasValue := True;
end;

procedure TNfeSefazAdi.SetvDescDI(const Value: Double);
begin
  FvDescDI := Value;
  FvDescDIHasValue := True;
end;

procedure TNfeSefazAdi.SetnDraw(const Value: string);
begin
  FnDraw := Value;
  FnDrawHasValue := True;
end;

{ TNfeSefazDI }

destructor TNfeSefazDI.Destroy;
begin
  Fadi.Free;
  inherited;
end;

procedure TNfeSefazDI.SetnDI(const Value: string);
begin
  FnDI := Value;
  FnDIHasValue := True;
end;

procedure TNfeSefazDI.SetdDI(const Value: TDate);
begin
  FdDI := Value;
  FdDIHasValue := True;
end;

procedure TNfeSefazDI.SetxLocDesemb(const Value: string);
begin
  FxLocDesemb := Value;
  FxLocDesembHasValue := True;
end;

procedure TNfeSefazDI.SetUFDesemb(const Value: string);
begin
  FUFDesemb := Value;
  FUFDesembHasValue := True;
end;

procedure TNfeSefazDI.SetdDesemb(const Value: TDate);
begin
  FdDesemb := Value;
  FdDesembHasValue := True;
end;

procedure TNfeSefazDI.SettpViaTransp(const Value: Integer);
begin
  FtpViaTransp := Value;
  FtpViaTranspHasValue := True;
end;

procedure TNfeSefazDI.SetvAFRMM(const Value: Double);
begin
  FvAFRMM := Value;
  FvAFRMMHasValue := True;
end;

procedure TNfeSefazDI.SettpIntermedio(const Value: Integer);
begin
  FtpIntermedio := Value;
  FtpIntermedioHasValue := True;
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

procedure TNfeSefazDI.SetcExportador(const Value: string);
begin
  FcExportador := Value;
  FcExportadorHasValue := True;
end;

procedure TNfeSefazDI.Setadi(const Value: TNfeSefazAdiList);
begin
  if Value <> Fadi then
  begin
    Fadi.Free;
    Fadi := Value;
  end;
end;

{ TNfeSefazExportInd }

procedure TNfeSefazExportInd.SetnRE(const Value: string);
begin
  FnRE := Value;
  FnREHasValue := True;
end;

procedure TNfeSefazExportInd.SetchNFe(const Value: string);
begin
  FchNFe := Value;
  FchNFeHasValue := True;
end;

procedure TNfeSefazExportInd.SetqExport(const Value: Double);
begin
  FqExport := Value;
  FqExportHasValue := True;
end;

{ TNfeSefazDetExport }

destructor TNfeSefazDetExport.Destroy;
begin
  FexportInd.Free;
  inherited;
end;

procedure TNfeSefazDetExport.SetnDraw(const Value: string);
begin
  FnDraw := Value;
  FnDrawHasValue := True;
end;

procedure TNfeSefazDetExport.SetexportInd(const Value: TNfeSefazExportInd);
begin
  if Value <> FexportInd then
  begin
    FexportInd.Free;
    FexportInd := Value;
  end;
end;

{ TNfeSefazRastro }

procedure TNfeSefazRastro.SetnLote(const Value: string);
begin
  FnLote := Value;
  FnLoteHasValue := True;
end;

procedure TNfeSefazRastro.SetqLote(const Value: Double);
begin
  FqLote := Value;
  FqLoteHasValue := True;
end;

procedure TNfeSefazRastro.SetdFab(const Value: TDate);
begin
  FdFab := Value;
  FdFabHasValue := True;
end;

procedure TNfeSefazRastro.SetdVal(const Value: TDate);
begin
  FdVal := Value;
  FdValHasValue := True;
end;

procedure TNfeSefazRastro.SetcAgreg(const Value: string);
begin
  FcAgreg := Value;
  FcAgregHasValue := True;
end;

{ TNfeSefazInfProdNFF }

procedure TNfeSefazInfProdNFF.SetcProdFisco(const Value: string);
begin
  FcProdFisco := Value;
  FcProdFiscoHasValue := True;
end;

procedure TNfeSefazInfProdNFF.SetcOperNFF(const Value: string);
begin
  FcOperNFF := Value;
  FcOperNFFHasValue := True;
end;

{ TNfeSefazInfProdEmb }

procedure TNfeSefazInfProdEmb.SetxEmb(const Value: string);
begin
  FxEmb := Value;
  FxEmbHasValue := True;
end;

procedure TNfeSefazInfProdEmb.SetqVolEmb(const Value: Double);
begin
  FqVolEmb := Value;
  FqVolEmbHasValue := True;
end;

procedure TNfeSefazInfProdEmb.SetuEmb(const Value: string);
begin
  FuEmb := Value;
  FuEmbHasValue := True;
end;

{ TNfeSefazVeicProd }

procedure TNfeSefazVeicProd.SettpOp(const Value: Integer);
begin
  FtpOp := Value;
  FtpOpHasValue := True;
end;

procedure TNfeSefazVeicProd.Setchassi(const Value: string);
begin
  Fchassi := Value;
  FchassiHasValue := True;
end;

procedure TNfeSefazVeicProd.SetcCor(const Value: string);
begin
  FcCor := Value;
  FcCorHasValue := True;
end;

procedure TNfeSefazVeicProd.SetxCor(const Value: string);
begin
  FxCor := Value;
  FxCorHasValue := True;
end;

procedure TNfeSefazVeicProd.Setpot(const Value: string);
begin
  Fpot := Value;
  FpotHasValue := True;
end;

procedure TNfeSefazVeicProd.Setcilin(const Value: string);
begin
  Fcilin := Value;
  FcilinHasValue := True;
end;

procedure TNfeSefazVeicProd.SetpesoL(const Value: string);
begin
  FpesoL := Value;
  FpesoLHasValue := True;
end;

procedure TNfeSefazVeicProd.SetpesoB(const Value: string);
begin
  FpesoB := Value;
  FpesoBHasValue := True;
end;

procedure TNfeSefazVeicProd.SetnSerie(const Value: string);
begin
  FnSerie := Value;
  FnSerieHasValue := True;
end;

procedure TNfeSefazVeicProd.SettpComb(const Value: string);
begin
  FtpComb := Value;
  FtpCombHasValue := True;
end;

procedure TNfeSefazVeicProd.SetnMotor(const Value: string);
begin
  FnMotor := Value;
  FnMotorHasValue := True;
end;

procedure TNfeSefazVeicProd.SetCMT(const Value: string);
begin
  FCMT := Value;
  FCMTHasValue := True;
end;

procedure TNfeSefazVeicProd.Setdist(const Value: string);
begin
  Fdist := Value;
  FdistHasValue := True;
end;

procedure TNfeSefazVeicProd.SetanoMod(const Value: Integer);
begin
  FanoMod := Value;
  FanoModHasValue := True;
end;

procedure TNfeSefazVeicProd.SetanoFab(const Value: Integer);
begin
  FanoFab := Value;
  FanoFabHasValue := True;
end;

procedure TNfeSefazVeicProd.SettpPint(const Value: string);
begin
  FtpPint := Value;
  FtpPintHasValue := True;
end;

procedure TNfeSefazVeicProd.SettpVeic(const Value: Integer);
begin
  FtpVeic := Value;
  FtpVeicHasValue := True;
end;

procedure TNfeSefazVeicProd.SetespVeic(const Value: Integer);
begin
  FespVeic := Value;
  FespVeicHasValue := True;
end;

procedure TNfeSefazVeicProd.SetVIN(const Value: string);
begin
  FVIN := Value;
  FVINHasValue := True;
end;

procedure TNfeSefazVeicProd.SetcondVeic(const Value: Integer);
begin
  FcondVeic := Value;
  FcondVeicHasValue := True;
end;

procedure TNfeSefazVeicProd.SetcMod(const Value: string);
begin
  FcMod := Value;
  FcModHasValue := True;
end;

procedure TNfeSefazVeicProd.SetcCorDENATRAN(const Value: string);
begin
  FcCorDENATRAN := Value;
  FcCorDENATRANHasValue := True;
end;

procedure TNfeSefazVeicProd.Setlota(const Value: Integer);
begin
  Flota := Value;
  FlotaHasValue := True;
end;

procedure TNfeSefazVeicProd.SettpRest(const Value: Integer);
begin
  FtpRest := Value;
  FtpRestHasValue := True;
end;

{ TNfeSefazMed }

procedure TNfeSefazMed.SetcProdANVISA(const Value: string);
begin
  FcProdANVISA := Value;
  FcProdANVISAHasValue := True;
end;

procedure TNfeSefazMed.SetxMotivoIsencao(const Value: string);
begin
  FxMotivoIsencao := Value;
  FxMotivoIsencaoHasValue := True;
end;

procedure TNfeSefazMed.SetvPMC(const Value: Double);
begin
  FvPMC := Value;
  FvPMCHasValue := True;
end;

{ TNfeSefazArma }

procedure TNfeSefazArma.SettpArma(const Value: Integer);
begin
  FtpArma := Value;
  FtpArmaHasValue := True;
end;

procedure TNfeSefazArma.SetnSerie(const Value: string);
begin
  FnSerie := Value;
  FnSerieHasValue := True;
end;

procedure TNfeSefazArma.SetnCano(const Value: string);
begin
  FnCano := Value;
  FnCanoHasValue := True;
end;

procedure TNfeSefazArma.Setdescr(const Value: string);
begin
  Fdescr := Value;
  FdescrHasValue := True;
end;

{ TNfeSefazCIDE }

procedure TNfeSefazCIDE.SetqBCProd(const Value: Double);
begin
  FqBCProd := Value;
  FqBCProdHasValue := True;
end;

procedure TNfeSefazCIDE.SetvAliqProd(const Value: Double);
begin
  FvAliqProd := Value;
  FvAliqProdHasValue := True;
end;

procedure TNfeSefazCIDE.SetvCIDE(const Value: Double);
begin
  FvCIDE := Value;
  FvCIDEHasValue := True;
end;

{ TNfeSefazEncerrante }

procedure TNfeSefazEncerrante.SetnBico(const Value: Integer);
begin
  FnBico := Value;
  FnBicoHasValue := True;
end;

procedure TNfeSefazEncerrante.SetnBomba(const Value: Integer);
begin
  FnBomba := Value;
  FnBombaHasValue := True;
end;

procedure TNfeSefazEncerrante.SetnTanque(const Value: Integer);
begin
  FnTanque := Value;
  FnTanqueHasValue := True;
end;

procedure TNfeSefazEncerrante.SetvEncIni(const Value: Double);
begin
  FvEncIni := Value;
  FvEncIniHasValue := True;
end;

procedure TNfeSefazEncerrante.SetvEncFin(const Value: Double);
begin
  FvEncFin := Value;
  FvEncFinHasValue := True;
end;

{ TNfeSefazComb }

destructor TNfeSefazComb.Destroy;
begin
  Fencerrante.Free;
  FCIDE.Free;
  inherited;
end;

procedure TNfeSefazComb.SetcProdANP(const Value: Integer);
begin
  FcProdANP := Value;
  FcProdANPHasValue := True;
end;

procedure TNfeSefazComb.SetdescANP(const Value: string);
begin
  FdescANP := Value;
  FdescANPHasValue := True;
end;

procedure TNfeSefazComb.SetpGLP(const Value: Double);
begin
  FpGLP := Value;
  FpGLPHasValue := True;
end;

procedure TNfeSefazComb.SetpGNn(const Value: Double);
begin
  FpGNn := Value;
  FpGNnHasValue := True;
end;

procedure TNfeSefazComb.SetpGNi(const Value: Double);
begin
  FpGNi := Value;
  FpGNiHasValue := True;
end;

procedure TNfeSefazComb.SetvPart(const Value: Double);
begin
  FvPart := Value;
  FvPartHasValue := True;
end;

procedure TNfeSefazComb.SetCODIF(const Value: string);
begin
  FCODIF := Value;
  FCODIFHasValue := True;
end;

procedure TNfeSefazComb.SetqTemp(const Value: Double);
begin
  FqTemp := Value;
  FqTempHasValue := True;
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

procedure TNfeSefazComb.Setencerrante(const Value: TNfeSefazEncerrante);
begin
  if Value <> Fencerrante then
  begin
    Fencerrante.Free;
    Fencerrante := Value;
  end;
end;

{ TNfeSefazProd }

destructor TNfeSefazProd.Destroy;
begin
  Fcomb.Free;
  Farma.Free;
  Fmed.Free;
  FveicProd.Free;
  FinfProdEmb.Free;
  FinfProdNFF.Free;
  Frastro.Free;
  FdetExport.Free;
  FDI.Free;
  FNVE.Free;
  inherited;
end;

procedure TNfeSefazProd.SetcProd(const Value: string);
begin
  FcProd := Value;
  FcProdHasValue := True;
end;

procedure TNfeSefazProd.SetcEAN(const Value: string);
begin
  FcEAN := Value;
  FcEANHasValue := True;
end;

procedure TNfeSefazProd.SetcBarra(const Value: string);
begin
  FcBarra := Value;
  FcBarraHasValue := True;
end;

procedure TNfeSefazProd.SetxProd(const Value: string);
begin
  FxProd := Value;
  FxProdHasValue := True;
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

procedure TNfeSefazProd.SetindEscala(const Value: string);
begin
  FindEscala := Value;
  FindEscalaHasValue := True;
end;

procedure TNfeSefazProd.SetCNPJFab(const Value: string);
begin
  FCNPJFab := Value;
  FCNPJFabHasValue := True;
end;

procedure TNfeSefazProd.SetcBenef(const Value: string);
begin
  FcBenef := Value;
  FcBenefHasValue := True;
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

procedure TNfeSefazProd.SetuCom(const Value: string);
begin
  FuCom := Value;
  FuComHasValue := True;
end;

procedure TNfeSefazProd.SetqCom(const Value: Double);
begin
  FqCom := Value;
  FqComHasValue := True;
end;

procedure TNfeSefazProd.SetvUnCom(const Value: Double);
begin
  FvUnCom := Value;
  FvUnComHasValue := True;
end;

procedure TNfeSefazProd.SetvProd(const Value: Double);
begin
  FvProd := Value;
  FvProdHasValue := True;
end;

procedure TNfeSefazProd.SetcEANTrib(const Value: string);
begin
  FcEANTrib := Value;
  FcEANTribHasValue := True;
end;

procedure TNfeSefazProd.SetcBarraTrib(const Value: string);
begin
  FcBarraTrib := Value;
  FcBarraTribHasValue := True;
end;

procedure TNfeSefazProd.SetuTrib(const Value: string);
begin
  FuTrib := Value;
  FuTribHasValue := True;
end;

procedure TNfeSefazProd.SetqTrib(const Value: Double);
begin
  FqTrib := Value;
  FqTribHasValue := True;
end;

procedure TNfeSefazProd.SetvUnTrib(const Value: Double);
begin
  FvUnTrib := Value;
  FvUnTribHasValue := True;
end;

procedure TNfeSefazProd.SetvFrete(const Value: Double);
begin
  FvFrete := Value;
  FvFreteHasValue := True;
end;

procedure TNfeSefazProd.SetvSeg(const Value: Double);
begin
  FvSeg := Value;
  FvSegHasValue := True;
end;

procedure TNfeSefazProd.SetvDesc(const Value: Double);
begin
  FvDesc := Value;
  FvDescHasValue := True;
end;

procedure TNfeSefazProd.SetvOutro(const Value: Double);
begin
  FvOutro := Value;
  FvOutroHasValue := True;
end;

procedure TNfeSefazProd.SetindTot(const Value: Integer);
begin
  FindTot := Value;
  FindTotHasValue := True;
end;

procedure TNfeSefazProd.SetDI(const Value: TNfeSefazDIList);
begin
  if Value <> FDI then
  begin
    FDI.Free;
    FDI := Value;
  end;
end;

procedure TNfeSefazProd.SetdetExport(const Value: TNfeSefazDetExportList);
begin
  if Value <> FdetExport then
  begin
    FdetExport.Free;
    FdetExport := Value;
  end;
end;

procedure TNfeSefazProd.SetxPed(const Value: string);
begin
  FxPed := Value;
  FxPedHasValue := True;
end;

procedure TNfeSefazProd.SetnItemPed(const Value: Integer);
begin
  FnItemPed := Value;
  FnItemPedHasValue := True;
end;

procedure TNfeSefazProd.SetnFCI(const Value: string);
begin
  FnFCI := Value;
  FnFCIHasValue := True;
end;

procedure TNfeSefazProd.Setrastro(const Value: TNfeSefazRastroList);
begin
  if Value <> Frastro then
  begin
    Frastro.Free;
    Frastro := Value;
  end;
end;

procedure TNfeSefazProd.SetinfProdNFF(const Value: TNfeSefazInfProdNFF);
begin
  if Value <> FinfProdNFF then
  begin
    FinfProdNFF.Free;
    FinfProdNFF := Value;
  end;
end;

procedure TNfeSefazProd.SetinfProdEmb(const Value: TNfeSefazInfProdEmb);
begin
  if Value <> FinfProdEmb then
  begin
    FinfProdEmb.Free;
    FinfProdEmb := Value;
  end;
end;

procedure TNfeSefazProd.SetveicProd(const Value: TNfeSefazVeicProd);
begin
  if Value <> FveicProd then
  begin
    FveicProd.Free;
    FveicProd := Value;
  end;
end;

procedure TNfeSefazProd.Setmed(const Value: TNfeSefazMed);
begin
  if Value <> Fmed then
  begin
    Fmed.Free;
    Fmed := Value;
  end;
end;

procedure TNfeSefazProd.Setarma(const Value: TNfeSefazArmaList);
begin
  if Value <> Farma then
  begin
    Farma.Free;
    Farma := Value;
  end;
end;

procedure TNfeSefazProd.Setcomb(const Value: TNfeSefazComb);
begin
  if Value <> Fcomb then
  begin
    Fcomb.Free;
    Fcomb := Value;
  end;
end;

procedure TNfeSefazProd.SetnRECOPI(const Value: string);
begin
  FnRECOPI := Value;
  FnRECOPIHasValue := True;
end;

{ TNfeSefazICMS00 }

procedure TNfeSefazICMS00.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMS00.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS00.SetmodBC(const Value: Integer);
begin
  FmodBC := Value;
  FmodBCHasValue := True;
end;

procedure TNfeSefazICMS00.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazICMS00.SetpICMS(const Value: Double);
begin
  FpICMS := Value;
  FpICMSHasValue := True;
end;

procedure TNfeSefazICMS00.SetvICMS(const Value: Double);
begin
  FvICMS := Value;
  FvICMSHasValue := True;
end;

procedure TNfeSefazICMS00.SetpFCP(const Value: Double);
begin
  FpFCP := Value;
  FpFCPHasValue := True;
end;

procedure TNfeSefazICMS00.SetvFCP(const Value: Double);
begin
  FvFCP := Value;
  FvFCPHasValue := True;
end;

{ TNfeSefazICMS10 }

procedure TNfeSefazICMS10.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMS10.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetmodBC(const Value: Integer);
begin
  FmodBC := Value;
  FmodBCHasValue := True;
end;

procedure TNfeSefazICMS10.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazICMS10.SetpICMS(const Value: Double);
begin
  FpICMS := Value;
  FpICMSHasValue := True;
end;

procedure TNfeSefazICMS10.SetvICMS(const Value: Double);
begin
  FvICMS := Value;
  FvICMSHasValue := True;
end;

procedure TNfeSefazICMS10.SetvBCFCP(const Value: Double);
begin
  FvBCFCP := Value;
  FvBCFCPHasValue := True;
end;

procedure TNfeSefazICMS10.SetpFCP(const Value: Double);
begin
  FpFCP := Value;
  FpFCPHasValue := True;
end;

procedure TNfeSefazICMS10.SetvFCP(const Value: Double);
begin
  FvFCP := Value;
  FvFCPHasValue := True;
end;

procedure TNfeSefazICMS10.SetmodBCST(const Value: Integer);
begin
  FmodBCST := Value;
  FmodBCSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetpMVAST(const Value: Double);
begin
  FpMVAST := Value;
  FpMVASTHasValue := True;
end;

procedure TNfeSefazICMS10.SetpRedBCST(const Value: Double);
begin
  FpRedBCST := Value;
  FpRedBCSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetvBCST(const Value: Double);
begin
  FvBCST := Value;
  FvBCSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetpICMSST(const Value: Double);
begin
  FpICMSST := Value;
  FpICMSSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetvICMSST(const Value: Double);
begin
  FvICMSST := Value;
  FvICMSSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetvBCFCPST(const Value: Double);
begin
  FvBCFCPST := Value;
  FvBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetpFCPST(const Value: Double);
begin
  FpFCPST := Value;
  FpFCPSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetvFCPST(const Value: Double);
begin
  FvFCPST := Value;
  FvFCPSTHasValue := True;
end;

procedure TNfeSefazICMS10.SetvICMSSTDeson(const Value: Double);
begin
  FvICMSSTDeson := Value;
  FvICMSSTDesonHasValue := True;
end;

procedure TNfeSefazICMS10.SetmotDesICMSST(const Value: Integer);
begin
  FmotDesICMSST := Value;
  FmotDesICMSSTHasValue := True;
end;

{ TNfeSefazICMS20 }

procedure TNfeSefazICMS20.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMS20.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS20.SetmodBC(const Value: Integer);
begin
  FmodBC := Value;
  FmodBCHasValue := True;
end;

procedure TNfeSefazICMS20.SetpRedBC(const Value: Double);
begin
  FpRedBC := Value;
  FpRedBCHasValue := True;
end;

procedure TNfeSefazICMS20.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazICMS20.SetpICMS(const Value: Double);
begin
  FpICMS := Value;
  FpICMSHasValue := True;
end;

procedure TNfeSefazICMS20.SetvICMS(const Value: Double);
begin
  FvICMS := Value;
  FvICMSHasValue := True;
end;

procedure TNfeSefazICMS20.SetvBCFCP(const Value: Double);
begin
  FvBCFCP := Value;
  FvBCFCPHasValue := True;
end;

procedure TNfeSefazICMS20.SetpFCP(const Value: Double);
begin
  FpFCP := Value;
  FpFCPHasValue := True;
end;

procedure TNfeSefazICMS20.SetvFCP(const Value: Double);
begin
  FvFCP := Value;
  FvFCPHasValue := True;
end;

procedure TNfeSefazICMS20.SetvICMSDeson(const Value: Double);
begin
  FvICMSDeson := Value;
  FvICMSDesonHasValue := True;
end;

procedure TNfeSefazICMS20.SetmotDesICMS(const Value: Integer);
begin
  FmotDesICMS := Value;
  FmotDesICMSHasValue := True;
end;

{ TNfeSefazICMS30 }

procedure TNfeSefazICMS30.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMS30.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetmodBCST(const Value: Integer);
begin
  FmodBCST := Value;
  FmodBCSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetpMVAST(const Value: Double);
begin
  FpMVAST := Value;
  FpMVASTHasValue := True;
end;

procedure TNfeSefazICMS30.SetpRedBCST(const Value: Double);
begin
  FpRedBCST := Value;
  FpRedBCSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetvBCST(const Value: Double);
begin
  FvBCST := Value;
  FvBCSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetpICMSST(const Value: Double);
begin
  FpICMSST := Value;
  FpICMSSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetvICMSST(const Value: Double);
begin
  FvICMSST := Value;
  FvICMSSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetvBCFCPST(const Value: Double);
begin
  FvBCFCPST := Value;
  FvBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetpFCPST(const Value: Double);
begin
  FpFCPST := Value;
  FpFCPSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetvFCPST(const Value: Double);
begin
  FvFCPST := Value;
  FvFCPSTHasValue := True;
end;

procedure TNfeSefazICMS30.SetvICMSDeson(const Value: Double);
begin
  FvICMSDeson := Value;
  FvICMSDesonHasValue := True;
end;

procedure TNfeSefazICMS30.SetmotDesICMS(const Value: Integer);
begin
  FmotDesICMS := Value;
  FmotDesICMSHasValue := True;
end;

{ TNfeSefazICMS40 }

procedure TNfeSefazICMS40.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMS40.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS40.SetvICMSDeson(const Value: Double);
begin
  FvICMSDeson := Value;
  FvICMSDesonHasValue := True;
end;

procedure TNfeSefazICMS40.SetmotDesICMS(const Value: Integer);
begin
  FmotDesICMS := Value;
  FmotDesICMSHasValue := True;
end;

{ TNfeSefazICMS51 }

procedure TNfeSefazICMS51.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMS51.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS51.SetmodBC(const Value: Integer);
begin
  FmodBC := Value;
  FmodBCHasValue := True;
end;

procedure TNfeSefazICMS51.SetpRedBC(const Value: Double);
begin
  FpRedBC := Value;
  FpRedBCHasValue := True;
end;

procedure TNfeSefazICMS51.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazICMS51.SetpICMS(const Value: Double);
begin
  FpICMS := Value;
  FpICMSHasValue := True;
end;

procedure TNfeSefazICMS51.SetvICMSOp(const Value: Double);
begin
  FvICMSOp := Value;
  FvICMSOpHasValue := True;
end;

procedure TNfeSefazICMS51.SetpDif(const Value: Double);
begin
  FpDif := Value;
  FpDifHasValue := True;
end;

procedure TNfeSefazICMS51.SetvICMSDif(const Value: Double);
begin
  FvICMSDif := Value;
  FvICMSDifHasValue := True;
end;

procedure TNfeSefazICMS51.SetvICMS(const Value: Double);
begin
  FvICMS := Value;
  FvICMSHasValue := True;
end;

procedure TNfeSefazICMS51.SetvBCFCP(const Value: Double);
begin
  FvBCFCP := Value;
  FvBCFCPHasValue := True;
end;

procedure TNfeSefazICMS51.SetpFCP(const Value: Double);
begin
  FpFCP := Value;
  FpFCPHasValue := True;
end;

procedure TNfeSefazICMS51.SetvFCP(const Value: Double);
begin
  FvFCP := Value;
  FvFCPHasValue := True;
end;

procedure TNfeSefazICMS51.SetpFCPDif(const Value: Double);
begin
  FpFCPDif := Value;
  FpFCPDifHasValue := True;
end;

procedure TNfeSefazICMS51.SetvFCPDif(const Value: Double);
begin
  FvFCPDif := Value;
  FvFCPDifHasValue := True;
end;

procedure TNfeSefazICMS51.SetvFCPEfet(const Value: Double);
begin
  FvFCPEfet := Value;
  FvFCPEfetHasValue := True;
end;

{ TNfeSefazICMS60 }

procedure TNfeSefazICMS60.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMS60.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS60.SetvBCSTRet(const Value: Double);
begin
  FvBCSTRet := Value;
  FvBCSTRetHasValue := True;
end;

procedure TNfeSefazICMS60.SetpST(const Value: Double);
begin
  FpST := Value;
  FpSTHasValue := True;
end;

procedure TNfeSefazICMS60.SetvICMSSubstituto(const Value: Double);
begin
  FvICMSSubstituto := Value;
  FvICMSSubstitutoHasValue := True;
end;

procedure TNfeSefazICMS60.SetvICMSSTRet(const Value: Double);
begin
  FvICMSSTRet := Value;
  FvICMSSTRetHasValue := True;
end;

procedure TNfeSefazICMS60.SetvBCFCPSTRet(const Value: Double);
begin
  FvBCFCPSTRet := Value;
  FvBCFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMS60.SetpFCPSTRet(const Value: Double);
begin
  FpFCPSTRet := Value;
  FpFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMS60.SetvFCPSTRet(const Value: Double);
begin
  FvFCPSTRet := Value;
  FvFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMS60.SetpRedBCEfet(const Value: Double);
begin
  FpRedBCEfet := Value;
  FpRedBCEfetHasValue := True;
end;

procedure TNfeSefazICMS60.SetvBCEfet(const Value: Double);
begin
  FvBCEfet := Value;
  FvBCEfetHasValue := True;
end;

procedure TNfeSefazICMS60.SetpICMSEfet(const Value: Double);
begin
  FpICMSEfet := Value;
  FpICMSEfetHasValue := True;
end;

procedure TNfeSefazICMS60.SetvICMSEfet(const Value: Double);
begin
  FvICMSEfet := Value;
  FvICMSEfetHasValue := True;
end;

{ TNfeSefazICMS70 }

procedure TNfeSefazICMS70.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMS70.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetmodBC(const Value: Integer);
begin
  FmodBC := Value;
  FmodBCHasValue := True;
end;

procedure TNfeSefazICMS70.SetpRedBC(const Value: Double);
begin
  FpRedBC := Value;
  FpRedBCHasValue := True;
end;

procedure TNfeSefazICMS70.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazICMS70.SetpICMS(const Value: Double);
begin
  FpICMS := Value;
  FpICMSHasValue := True;
end;

procedure TNfeSefazICMS70.SetvICMS(const Value: Double);
begin
  FvICMS := Value;
  FvICMSHasValue := True;
end;

procedure TNfeSefazICMS70.SetvBCFCP(const Value: Double);
begin
  FvBCFCP := Value;
  FvBCFCPHasValue := True;
end;

procedure TNfeSefazICMS70.SetpFCP(const Value: Double);
begin
  FpFCP := Value;
  FpFCPHasValue := True;
end;

procedure TNfeSefazICMS70.SetvFCP(const Value: Double);
begin
  FvFCP := Value;
  FvFCPHasValue := True;
end;

procedure TNfeSefazICMS70.SetmodBCST(const Value: Integer);
begin
  FmodBCST := Value;
  FmodBCSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetpMVAST(const Value: Double);
begin
  FpMVAST := Value;
  FpMVASTHasValue := True;
end;

procedure TNfeSefazICMS70.SetpRedBCST(const Value: Double);
begin
  FpRedBCST := Value;
  FpRedBCSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetvBCST(const Value: Double);
begin
  FvBCST := Value;
  FvBCSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetpICMSST(const Value: Double);
begin
  FpICMSST := Value;
  FpICMSSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetvICMSST(const Value: Double);
begin
  FvICMSST := Value;
  FvICMSSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetvBCFCPST(const Value: Double);
begin
  FvBCFCPST := Value;
  FvBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetpFCPST(const Value: Double);
begin
  FpFCPST := Value;
  FpFCPSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetvFCPST(const Value: Double);
begin
  FvFCPST := Value;
  FvFCPSTHasValue := True;
end;

procedure TNfeSefazICMS70.SetvICMSDeson(const Value: Double);
begin
  FvICMSDeson := Value;
  FvICMSDesonHasValue := True;
end;

procedure TNfeSefazICMS70.SetmotDesICMS(const Value: Integer);
begin
  FmotDesICMS := Value;
  FmotDesICMSHasValue := True;
end;

procedure TNfeSefazICMS70.SetvICMSSTDeson(const Value: Double);
begin
  FvICMSSTDeson := Value;
  FvICMSSTDesonHasValue := True;
end;

procedure TNfeSefazICMS70.SetmotDesICMSST(const Value: Integer);
begin
  FmotDesICMSST := Value;
  FmotDesICMSSTHasValue := True;
end;

{ TNfeSefazICMS90 }

procedure TNfeSefazICMS90.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMS90.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetmodBC(const Value: Integer);
begin
  FmodBC := Value;
  FmodBCHasValue := True;
end;

procedure TNfeSefazICMS90.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazICMS90.SetpRedBC(const Value: Double);
begin
  FpRedBC := Value;
  FpRedBCHasValue := True;
end;

procedure TNfeSefazICMS90.SetpICMS(const Value: Double);
begin
  FpICMS := Value;
  FpICMSHasValue := True;
end;

procedure TNfeSefazICMS90.SetvICMS(const Value: Double);
begin
  FvICMS := Value;
  FvICMSHasValue := True;
end;

procedure TNfeSefazICMS90.SetvBCFCP(const Value: Double);
begin
  FvBCFCP := Value;
  FvBCFCPHasValue := True;
end;

procedure TNfeSefazICMS90.SetpFCP(const Value: Double);
begin
  FpFCP := Value;
  FpFCPHasValue := True;
end;

procedure TNfeSefazICMS90.SetvFCP(const Value: Double);
begin
  FvFCP := Value;
  FvFCPHasValue := True;
end;

procedure TNfeSefazICMS90.SetmodBCST(const Value: Integer);
begin
  FmodBCST := Value;
  FmodBCSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetpMVAST(const Value: Double);
begin
  FpMVAST := Value;
  FpMVASTHasValue := True;
end;

procedure TNfeSefazICMS90.SetpRedBCST(const Value: Double);
begin
  FpRedBCST := Value;
  FpRedBCSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetvBCST(const Value: Double);
begin
  FvBCST := Value;
  FvBCSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetpICMSST(const Value: Double);
begin
  FpICMSST := Value;
  FpICMSSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetvICMSST(const Value: Double);
begin
  FvICMSST := Value;
  FvICMSSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetvBCFCPST(const Value: Double);
begin
  FvBCFCPST := Value;
  FvBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetpFCPST(const Value: Double);
begin
  FpFCPST := Value;
  FpFCPSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetvFCPST(const Value: Double);
begin
  FvFCPST := Value;
  FvFCPSTHasValue := True;
end;

procedure TNfeSefazICMS90.SetvICMSDeson(const Value: Double);
begin
  FvICMSDeson := Value;
  FvICMSDesonHasValue := True;
end;

procedure TNfeSefazICMS90.SetmotDesICMS(const Value: Integer);
begin
  FmotDesICMS := Value;
  FmotDesICMSHasValue := True;
end;

procedure TNfeSefazICMS90.SetvICMSSTDeson(const Value: Double);
begin
  FvICMSSTDeson := Value;
  FvICMSSTDesonHasValue := True;
end;

procedure TNfeSefazICMS90.SetmotDesICMSST(const Value: Integer);
begin
  FmotDesICMSST := Value;
  FmotDesICMSSTHasValue := True;
end;

{ TNfeSefazICMSPart }

procedure TNfeSefazICMSPart.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMSPart.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetmodBC(const Value: Integer);
begin
  FmodBC := Value;
  FmodBCHasValue := True;
end;

procedure TNfeSefazICMSPart.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazICMSPart.SetpRedBC(const Value: Double);
begin
  FpRedBC := Value;
  FpRedBCHasValue := True;
end;

procedure TNfeSefazICMSPart.SetpICMS(const Value: Double);
begin
  FpICMS := Value;
  FpICMSHasValue := True;
end;

procedure TNfeSefazICMSPart.SetvICMS(const Value: Double);
begin
  FvICMS := Value;
  FvICMSHasValue := True;
end;

procedure TNfeSefazICMSPart.SetmodBCST(const Value: Integer);
begin
  FmodBCST := Value;
  FmodBCSTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetpMVAST(const Value: Double);
begin
  FpMVAST := Value;
  FpMVASTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetpRedBCST(const Value: Double);
begin
  FpRedBCST := Value;
  FpRedBCSTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetvBCST(const Value: Double);
begin
  FvBCST := Value;
  FvBCSTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetpICMSST(const Value: Double);
begin
  FpICMSST := Value;
  FpICMSSTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetvICMSST(const Value: Double);
begin
  FvICMSST := Value;
  FvICMSSTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetpBCOp(const Value: Double);
begin
  FpBCOp := Value;
  FpBCOpHasValue := True;
end;

procedure TNfeSefazICMSPart.SetUFST(const Value: string);
begin
  FUFST := Value;
  FUFSTHasValue := True;
end;

{ TNfeSefazICMSST }

procedure TNfeSefazICMSST.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMSST.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazICMSST.SetvBCSTRet(const Value: Double);
begin
  FvBCSTRet := Value;
  FvBCSTRetHasValue := True;
end;

procedure TNfeSefazICMSST.SetpST(const Value: Double);
begin
  FpST := Value;
  FpSTHasValue := True;
end;

procedure TNfeSefazICMSST.SetvICMSSubstituto(const Value: Double);
begin
  FvICMSSubstituto := Value;
  FvICMSSubstitutoHasValue := True;
end;

procedure TNfeSefazICMSST.SetvICMSSTRet(const Value: Double);
begin
  FvICMSSTRet := Value;
  FvICMSSTRetHasValue := True;
end;

procedure TNfeSefazICMSST.SetvBCFCPSTRet(const Value: Double);
begin
  FvBCFCPSTRet := Value;
  FvBCFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMSST.SetpFCPSTRet(const Value: Double);
begin
  FpFCPSTRet := Value;
  FpFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMSST.SetvFCPSTRet(const Value: Double);
begin
  FvFCPSTRet := Value;
  FvFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMSST.SetvBCSTDest(const Value: Double);
begin
  FvBCSTDest := Value;
  FvBCSTDestHasValue := True;
end;

procedure TNfeSefazICMSST.SetvICMSSTDest(const Value: Double);
begin
  FvICMSSTDest := Value;
  FvICMSSTDestHasValue := True;
end;

procedure TNfeSefazICMSST.SetpRedBCEfet(const Value: Double);
begin
  FpRedBCEfet := Value;
  FpRedBCEfetHasValue := True;
end;

procedure TNfeSefazICMSST.SetvBCEfet(const Value: Double);
begin
  FvBCEfet := Value;
  FvBCEfetHasValue := True;
end;

procedure TNfeSefazICMSST.SetpICMSEfet(const Value: Double);
begin
  FpICMSEfet := Value;
  FpICMSEfetHasValue := True;
end;

procedure TNfeSefazICMSST.SetvICMSEfet(const Value: Double);
begin
  FvICMSEfet := Value;
  FvICMSEfetHasValue := True;
end;

{ TNfeSefazICMSSN101 }

procedure TNfeSefazICMSSN101.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMSSN101.SetCSOSN(const Value: Integer);
begin
  FCSOSN := Value;
  FCSOSNHasValue := True;
end;

procedure TNfeSefazICMSSN101.SetpCredSN(const Value: Double);
begin
  FpCredSN := Value;
  FpCredSNHasValue := True;
end;

procedure TNfeSefazICMSSN101.SetvCredICMSSN(const Value: Double);
begin
  FvCredICMSSN := Value;
  FvCredICMSSNHasValue := True;
end;

{ TNfeSefazICMSSN102 }

procedure TNfeSefazICMSSN102.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMSSN102.SetCSOSN(const Value: Integer);
begin
  FCSOSN := Value;
  FCSOSNHasValue := True;
end;

{ TNfeSefazICMSSN201 }

procedure TNfeSefazICMSSN201.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetCSOSN(const Value: Integer);
begin
  FCSOSN := Value;
  FCSOSNHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetmodBCST(const Value: Integer);
begin
  FmodBCST := Value;
  FmodBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetpMVAST(const Value: Double);
begin
  FpMVAST := Value;
  FpMVASTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetpRedBCST(const Value: Double);
begin
  FpRedBCST := Value;
  FpRedBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetvBCST(const Value: Double);
begin
  FvBCST := Value;
  FvBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetpICMSST(const Value: Double);
begin
  FpICMSST := Value;
  FpICMSSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetvICMSST(const Value: Double);
begin
  FvICMSST := Value;
  FvICMSSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetvBCFCPST(const Value: Double);
begin
  FvBCFCPST := Value;
  FvBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetpFCPST(const Value: Double);
begin
  FpFCPST := Value;
  FpFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetvFCPST(const Value: Double);
begin
  FvFCPST := Value;
  FvFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetpCredSN(const Value: Double);
begin
  FpCredSN := Value;
  FpCredSNHasValue := True;
end;

procedure TNfeSefazICMSSN201.SetvCredICMSSN(const Value: Double);
begin
  FvCredICMSSN := Value;
  FvCredICMSSNHasValue := True;
end;

{ TNfeSefazICMSSN202 }

procedure TNfeSefazICMSSN202.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetCSOSN(const Value: Integer);
begin
  FCSOSN := Value;
  FCSOSNHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetmodBCST(const Value: Integer);
begin
  FmodBCST := Value;
  FmodBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetpMVAST(const Value: Double);
begin
  FpMVAST := Value;
  FpMVASTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetpRedBCST(const Value: Double);
begin
  FpRedBCST := Value;
  FpRedBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetvBCST(const Value: Double);
begin
  FvBCST := Value;
  FvBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetpICMSST(const Value: Double);
begin
  FpICMSST := Value;
  FpICMSSTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetvICMSST(const Value: Double);
begin
  FvICMSST := Value;
  FvICMSSTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetvBCFCPST(const Value: Double);
begin
  FvBCFCPST := Value;
  FvBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetpFCPST(const Value: Double);
begin
  FpFCPST := Value;
  FpFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN202.SetvFCPST(const Value: Double);
begin
  FvFCPST := Value;
  FvFCPSTHasValue := True;
end;

{ TNfeSefazICMSSN500 }

procedure TNfeSefazICMSSN500.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetCSOSN(const Value: Integer);
begin
  FCSOSN := Value;
  FCSOSNHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetvBCSTRet(const Value: Double);
begin
  FvBCSTRet := Value;
  FvBCSTRetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetpST(const Value: Double);
begin
  FpST := Value;
  FpSTHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetvICMSSubstituto(const Value: Double);
begin
  FvICMSSubstituto := Value;
  FvICMSSubstitutoHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetvICMSSTRet(const Value: Double);
begin
  FvICMSSTRet := Value;
  FvICMSSTRetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetvBCFCPSTRet(const Value: Double);
begin
  FvBCFCPSTRet := Value;
  FvBCFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetpFCPSTRet(const Value: Double);
begin
  FpFCPSTRet := Value;
  FpFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetvFCPSTRet(const Value: Double);
begin
  FvFCPSTRet := Value;
  FvFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetpRedBCEfet(const Value: Double);
begin
  FpRedBCEfet := Value;
  FpRedBCEfetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetvBCEfet(const Value: Double);
begin
  FvBCEfet := Value;
  FvBCEfetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetpICMSEfet(const Value: Double);
begin
  FpICMSEfet := Value;
  FpICMSEfetHasValue := True;
end;

procedure TNfeSefazICMSSN500.SetvICMSEfet(const Value: Double);
begin
  FvICMSEfet := Value;
  FvICMSEfetHasValue := True;
end;

{ TNfeSefazICMSSN900 }

procedure TNfeSefazICMSSN900.Setorig(const Value: Integer);
begin
  Forig := Value;
  ForigHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetCSOSN(const Value: Integer);
begin
  FCSOSN := Value;
  FCSOSNHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetmodBC(const Value: Integer);
begin
  FmodBC := Value;
  FmodBCHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetpRedBC(const Value: Double);
begin
  FpRedBC := Value;
  FpRedBCHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetpICMS(const Value: Double);
begin
  FpICMS := Value;
  FpICMSHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetvICMS(const Value: Double);
begin
  FvICMS := Value;
  FvICMSHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetmodBCST(const Value: Integer);
begin
  FmodBCST := Value;
  FmodBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetpMVAST(const Value: Double);
begin
  FpMVAST := Value;
  FpMVASTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetpRedBCST(const Value: Double);
begin
  FpRedBCST := Value;
  FpRedBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetvBCST(const Value: Double);
begin
  FvBCST := Value;
  FvBCSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetpICMSST(const Value: Double);
begin
  FpICMSST := Value;
  FpICMSSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetvICMSST(const Value: Double);
begin
  FvICMSST := Value;
  FvICMSSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetvBCFCPST(const Value: Double);
begin
  FvBCFCPST := Value;
  FvBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetpFCPST(const Value: Double);
begin
  FpFCPST := Value;
  FpFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetvFCPST(const Value: Double);
begin
  FvFCPST := Value;
  FvFCPSTHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetpCredSN(const Value: Double);
begin
  FpCredSN := Value;
  FpCredSNHasValue := True;
end;

procedure TNfeSefazICMSSN900.SetvCredICMSSN(const Value: Double);
begin
  FvCredICMSSN := Value;
  FvCredICMSSNHasValue := True;
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

procedure TNfeSefazIPITrib.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazIPITrib.SetpIPI(const Value: Double);
begin
  FpIPI := Value;
  FpIPIHasValue := True;
end;

procedure TNfeSefazIPITrib.SetqUnid(const Value: Double);
begin
  FqUnid := Value;
  FqUnidHasValue := True;
end;

procedure TNfeSefazIPITrib.SetvUnid(const Value: Double);
begin
  FvUnid := Value;
  FvUnidHasValue := True;
end;

procedure TNfeSefazIPITrib.SetvIPI(const Value: Double);
begin
  FvIPI := Value;
  FvIPIHasValue := True;
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

procedure TNfeSefazIpi.SetcSelo(const Value: string);
begin
  FcSelo := Value;
  FcSeloHasValue := True;
end;

procedure TNfeSefazIpi.SetqSelo(const Value: Integer);
begin
  FqSelo := Value;
  FqSeloHasValue := True;
end;

procedure TNfeSefazIpi.SetcEnq(const Value: string);
begin
  FcEnq := Value;
  FcEnqHasValue := True;
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

procedure TNfeSefazII.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazII.SetvDespAdu(const Value: Double);
begin
  FvDespAdu := Value;
  FvDespAduHasValue := True;
end;

procedure TNfeSefazII.SetvII(const Value: Double);
begin
  FvII := Value;
  FvIIHasValue := True;
end;

procedure TNfeSefazII.SetvIOF(const Value: Double);
begin
  FvIOF := Value;
  FvIOFHasValue := True;
end;

{ TNfeSefazISSQN }

procedure TNfeSefazISSQN.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazISSQN.SetvAliq(const Value: Double);
begin
  FvAliq := Value;
  FvAliqHasValue := True;
end;

procedure TNfeSefazISSQN.SetvISSQN(const Value: Double);
begin
  FvISSQN := Value;
  FvISSQNHasValue := True;
end;

procedure TNfeSefazISSQN.SetcMunFG(const Value: Integer);
begin
  FcMunFG := Value;
  FcMunFGHasValue := True;
end;

procedure TNfeSefazISSQN.SetcListServ(const Value: string);
begin
  FcListServ := Value;
  FcListServHasValue := True;
end;

procedure TNfeSefazISSQN.SetvDeducao(const Value: Double);
begin
  FvDeducao := Value;
  FvDeducaoHasValue := True;
end;

procedure TNfeSefazISSQN.SetvOutro(const Value: Double);
begin
  FvOutro := Value;
  FvOutroHasValue := True;
end;

procedure TNfeSefazISSQN.SetvDescIncond(const Value: Double);
begin
  FvDescIncond := Value;
  FvDescIncondHasValue := True;
end;

procedure TNfeSefazISSQN.SetvDescCond(const Value: Double);
begin
  FvDescCond := Value;
  FvDescCondHasValue := True;
end;

procedure TNfeSefazISSQN.SetvISSRet(const Value: Double);
begin
  FvISSRet := Value;
  FvISSRetHasValue := True;
end;

procedure TNfeSefazISSQN.SetindISS(const Value: Integer);
begin
  FindISS := Value;
  FindISSHasValue := True;
end;

procedure TNfeSefazISSQN.SetcServico(const Value: string);
begin
  FcServico := Value;
  FcServicoHasValue := True;
end;

procedure TNfeSefazISSQN.SetcMun(const Value: Integer);
begin
  FcMun := Value;
  FcMunHasValue := True;
end;

procedure TNfeSefazISSQN.SetcPais(const Value: Integer);
begin
  FcPais := Value;
  FcPaisHasValue := True;
end;

procedure TNfeSefazISSQN.SetnProcesso(const Value: string);
begin
  FnProcesso := Value;
  FnProcessoHasValue := True;
end;

procedure TNfeSefazISSQN.SetindIncentivo(const Value: Integer);
begin
  FindIncentivo := Value;
  FindIncentivoHasValue := True;
end;

{ TNfeSefazPISAliq }

procedure TNfeSefazPISAliq.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazPISAliq.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazPISAliq.SetpPIS(const Value: Double);
begin
  FpPIS := Value;
  FpPISHasValue := True;
end;

procedure TNfeSefazPISAliq.SetvPIS(const Value: Double);
begin
  FvPIS := Value;
  FvPISHasValue := True;
end;

{ TNfeSefazPISQtde }

procedure TNfeSefazPISQtde.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazPISQtde.SetqBCProd(const Value: Double);
begin
  FqBCProd := Value;
  FqBCProdHasValue := True;
end;

procedure TNfeSefazPISQtde.SetvAliqProd(const Value: Double);
begin
  FvAliqProd := Value;
  FvAliqProdHasValue := True;
end;

procedure TNfeSefazPISQtde.SetvPIS(const Value: Double);
begin
  FvPIS := Value;
  FvPISHasValue := True;
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

procedure TNfeSefazPISOutr.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazPISOutr.SetpPIS(const Value: Double);
begin
  FpPIS := Value;
  FpPISHasValue := True;
end;

procedure TNfeSefazPISOutr.SetqBCProd(const Value: Double);
begin
  FqBCProd := Value;
  FqBCProdHasValue := True;
end;

procedure TNfeSefazPISOutr.SetvAliqProd(const Value: Double);
begin
  FvAliqProd := Value;
  FvAliqProdHasValue := True;
end;

procedure TNfeSefazPISOutr.SetvPIS(const Value: Double);
begin
  FvPIS := Value;
  FvPISHasValue := True;
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

procedure TNfeSefazPISST.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazPISST.SetpPIS(const Value: Double);
begin
  FpPIS := Value;
  FpPISHasValue := True;
end;

procedure TNfeSefazPISST.SetqBCProd(const Value: Double);
begin
  FqBCProd := Value;
  FqBCProdHasValue := True;
end;

procedure TNfeSefazPISST.SetvAliqProd(const Value: Double);
begin
  FvAliqProd := Value;
  FvAliqProdHasValue := True;
end;

procedure TNfeSefazPISST.SetvPIS(const Value: Double);
begin
  FvPIS := Value;
  FvPISHasValue := True;
end;

procedure TNfeSefazPISST.SetindSomaPISST(const Value: Integer);
begin
  FindSomaPISST := Value;
  FindSomaPISSTHasValue := True;
end;

{ TNfeSefazCOFINSAliq }

procedure TNfeSefazCOFINSAliq.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazCOFINSAliq.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazCOFINSAliq.SetpCOFINS(const Value: Double);
begin
  FpCOFINS := Value;
  FpCOFINSHasValue := True;
end;

procedure TNfeSefazCOFINSAliq.SetvCOFINS(const Value: Double);
begin
  FvCOFINS := Value;
  FvCOFINSHasValue := True;
end;

{ TNfeSefazCOFINSQtde }

procedure TNfeSefazCOFINSQtde.SetCST(const Value: string);
begin
  FCST := Value;
  FCSTHasValue := True;
end;

procedure TNfeSefazCOFINSQtde.SetqBCProd(const Value: Double);
begin
  FqBCProd := Value;
  FqBCProdHasValue := True;
end;

procedure TNfeSefazCOFINSQtde.SetvAliqProd(const Value: Double);
begin
  FvAliqProd := Value;
  FvAliqProdHasValue := True;
end;

procedure TNfeSefazCOFINSQtde.SetvCOFINS(const Value: Double);
begin
  FvCOFINS := Value;
  FvCOFINSHasValue := True;
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

procedure TNfeSefazCOFINSOutr.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazCOFINSOutr.SetpCOFINS(const Value: Double);
begin
  FpCOFINS := Value;
  FpCOFINSHasValue := True;
end;

procedure TNfeSefazCOFINSOutr.SetqBCProd(const Value: Double);
begin
  FqBCProd := Value;
  FqBCProdHasValue := True;
end;

procedure TNfeSefazCOFINSOutr.SetvAliqProd(const Value: Double);
begin
  FvAliqProd := Value;
  FvAliqProdHasValue := True;
end;

procedure TNfeSefazCOFINSOutr.SetvCOFINS(const Value: Double);
begin
  FvCOFINS := Value;
  FvCOFINSHasValue := True;
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

procedure TNfeSefazCOFINSST.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazCOFINSST.SetpCOFINS(const Value: Double);
begin
  FpCOFINS := Value;
  FpCOFINSHasValue := True;
end;

procedure TNfeSefazCOFINSST.SetqBCProd(const Value: Double);
begin
  FqBCProd := Value;
  FqBCProdHasValue := True;
end;

procedure TNfeSefazCOFINSST.SetvAliqProd(const Value: Double);
begin
  FvAliqProd := Value;
  FvAliqProdHasValue := True;
end;

procedure TNfeSefazCOFINSST.SetvCOFINS(const Value: Double);
begin
  FvCOFINS := Value;
  FvCOFINSHasValue := True;
end;

procedure TNfeSefazCOFINSST.SetindSomaCOFINSST(const Value: Integer);
begin
  FindSomaCOFINSST := Value;
  FindSomaCOFINSSTHasValue := True;
end;

{ TNfeSefazICMSUFDest }

procedure TNfeSefazICMSUFDest.SetvBCUFDest(const Value: Double);
begin
  FvBCUFDest := Value;
  FvBCUFDestHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetvBCFCPUFDest(const Value: Double);
begin
  FvBCFCPUFDest := Value;
  FvBCFCPUFDestHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetpFCPUFDest(const Value: Double);
begin
  FpFCPUFDest := Value;
  FpFCPUFDestHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetpICMSUFDest(const Value: Double);
begin
  FpICMSUFDest := Value;
  FpICMSUFDestHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetpICMSInter(const Value: Double);
begin
  FpICMSInter := Value;
  FpICMSInterHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetpICMSInterPart(const Value: Double);
begin
  FpICMSInterPart := Value;
  FpICMSInterPartHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetvFCPUFDest(const Value: Double);
begin
  FvFCPUFDest := Value;
  FvFCPUFDestHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetvICMSUFDest(const Value: Double);
begin
  FvICMSUFDest := Value;
  FvICMSUFDestHasValue := True;
end;

procedure TNfeSefazICMSUFDest.SetvICMSUFRemet(const Value: Double);
begin
  FvICMSUFRemet := Value;
  FvICMSUFRemetHasValue := True;
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

procedure TNfeSefazImposto.SetvTotTrib(const Value: Double);
begin
  FvTotTrib := Value;
  FvTotTribHasValue := True;
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

procedure TNfeSefazImpostoDevolIPI.SetvIPIDevol(const Value: Double);
begin
  FvIPIDevol := Value;
  FvIPIDevolHasValue := True;
end;

{ TNfeSefazImpostoDevol }

destructor TNfeSefazImpostoDevol.Destroy;
begin
  FIPI.Free;
  inherited;
end;

procedure TNfeSefazImpostoDevol.SetpDevol(const Value: Double);
begin
  FpDevol := Value;
  FpDevolHasValue := True;
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
  FimpostoDevol.Free;
  Fimposto.Free;
  Fprod.Free;
  inherited;
end;

procedure TNfeSefazDet.SetnItem(const Value: Integer);
begin
  FnItem := Value;
  FnItemHasValue := True;
end;

procedure TNfeSefazDet.Setprod(const Value: TNfeSefazProd);
begin
  if Value <> Fprod then
  begin
    Fprod.Free;
    Fprod := Value;
  end;
end;

procedure TNfeSefazDet.Setimposto(const Value: TNfeSefazImposto);
begin
  if Value <> Fimposto then
  begin
    Fimposto.Free;
    Fimposto := Value;
  end;
end;

procedure TNfeSefazDet.SetimpostoDevol(const Value: TNfeSefazImpostoDevol);
begin
  if Value <> FimpostoDevol then
  begin
    FimpostoDevol.Free;
    FimpostoDevol := Value;
  end;
end;

procedure TNfeSefazDet.SetinfAdProd(const Value: string);
begin
  FinfAdProd := Value;
  FinfAdProdHasValue := True;
end;

{ TNfeSefazICMSTot }

procedure TNfeSefazICMSTot.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvICMS(const Value: Double);
begin
  FvICMS := Value;
  FvICMSHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvICMSDeson(const Value: Double);
begin
  FvICMSDeson := Value;
  FvICMSDesonHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvFCPUFDest(const Value: Double);
begin
  FvFCPUFDest := Value;
  FvFCPUFDestHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvICMSUFDest(const Value: Double);
begin
  FvICMSUFDest := Value;
  FvICMSUFDestHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvICMSUFRemet(const Value: Double);
begin
  FvICMSUFRemet := Value;
  FvICMSUFRemetHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvFCP(const Value: Double);
begin
  FvFCP := Value;
  FvFCPHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvBCST(const Value: Double);
begin
  FvBCST := Value;
  FvBCSTHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvST(const Value: Double);
begin
  FvST := Value;
  FvSTHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvFCPST(const Value: Double);
begin
  FvFCPST := Value;
  FvFCPSTHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvFCPSTRet(const Value: Double);
begin
  FvFCPSTRet := Value;
  FvFCPSTRetHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvProd(const Value: Double);
begin
  FvProd := Value;
  FvProdHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvFrete(const Value: Double);
begin
  FvFrete := Value;
  FvFreteHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvSeg(const Value: Double);
begin
  FvSeg := Value;
  FvSegHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvDesc(const Value: Double);
begin
  FvDesc := Value;
  FvDescHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvII(const Value: Double);
begin
  FvII := Value;
  FvIIHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvIPI(const Value: Double);
begin
  FvIPI := Value;
  FvIPIHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvIPIDevol(const Value: Double);
begin
  FvIPIDevol := Value;
  FvIPIDevolHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvPIS(const Value: Double);
begin
  FvPIS := Value;
  FvPISHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvCOFINS(const Value: Double);
begin
  FvCOFINS := Value;
  FvCOFINSHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvOutro(const Value: Double);
begin
  FvOutro := Value;
  FvOutroHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvNF(const Value: Double);
begin
  FvNF := Value;
  FvNFHasValue := True;
end;

procedure TNfeSefazICMSTot.SetvTotTrib(const Value: Double);
begin
  FvTotTrib := Value;
  FvTotTribHasValue := True;
end;

{ TNfeSefazISSQNtot }

procedure TNfeSefazISSQNtot.SetvServ(const Value: Double);
begin
  FvServ := Value;
  FvServHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetvBC(const Value: Double);
begin
  FvBC := Value;
  FvBCHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetvISS(const Value: Double);
begin
  FvISS := Value;
  FvISSHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetvPIS(const Value: Double);
begin
  FvPIS := Value;
  FvPISHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetvCOFINS(const Value: Double);
begin
  FvCOFINS := Value;
  FvCOFINSHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetdCompet(const Value: TDate);
begin
  FdCompet := Value;
  FdCompetHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetvDeducao(const Value: Double);
begin
  FvDeducao := Value;
  FvDeducaoHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetvOutro(const Value: Double);
begin
  FvOutro := Value;
  FvOutroHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetvDescIncond(const Value: Double);
begin
  FvDescIncond := Value;
  FvDescIncondHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetvDescCond(const Value: Double);
begin
  FvDescCond := Value;
  FvDescCondHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetvISSRet(const Value: Double);
begin
  FvISSRet := Value;
  FvISSRetHasValue := True;
end;

procedure TNfeSefazISSQNtot.SetcRegTrib(const Value: Integer);
begin
  FcRegTrib := Value;
  FcRegTribHasValue := True;
end;

{ TNfeSefazRetTrib }

procedure TNfeSefazRetTrib.SetvRetPIS(const Value: Double);
begin
  FvRetPIS := Value;
  FvRetPISHasValue := True;
end;

procedure TNfeSefazRetTrib.SetvRetCOFINS(const Value: Double);
begin
  FvRetCOFINS := Value;
  FvRetCOFINSHasValue := True;
end;

procedure TNfeSefazRetTrib.SetvRetCSLL(const Value: Double);
begin
  FvRetCSLL := Value;
  FvRetCSLLHasValue := True;
end;

procedure TNfeSefazRetTrib.SetvBCIRRF(const Value: Double);
begin
  FvBCIRRF := Value;
  FvBCIRRFHasValue := True;
end;

procedure TNfeSefazRetTrib.SetvIRRF(const Value: Double);
begin
  FvIRRF := Value;
  FvIRRFHasValue := True;
end;

procedure TNfeSefazRetTrib.SetvBCRetPrev(const Value: Double);
begin
  FvBCRetPrev := Value;
  FvBCRetPrevHasValue := True;
end;

procedure TNfeSefazRetTrib.SetvRetPrev(const Value: Double);
begin
  FvRetPrev := Value;
  FvRetPrevHasValue := True;
end;

{ TNfeSefazTotal }

destructor TNfeSefazTotal.Destroy;
begin
  FretTrib.Free;
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

procedure TNfeSefazTotal.SetretTrib(const Value: TNfeSefazRetTrib);
begin
  if Value <> FretTrib then
  begin
    FretTrib.Free;
    FretTrib := Value;
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

procedure TNfeSefazTransporta.SetxNome(const Value: string);
begin
  FxNome := Value;
  FxNomeHasValue := True;
end;

procedure TNfeSefazTransporta.SetIE(const Value: string);
begin
  FIE := Value;
  FIEHasValue := True;
end;

procedure TNfeSefazTransporta.SetxEnder(const Value: string);
begin
  FxEnder := Value;
  FxEnderHasValue := True;
end;

procedure TNfeSefazTransporta.SetxMun(const Value: string);
begin
  FxMun := Value;
  FxMunHasValue := True;
end;

procedure TNfeSefazTransporta.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

{ TNfeSefazRetTransp }

procedure TNfeSefazRetTransp.SetvServ(const Value: Double);
begin
  FvServ := Value;
  FvServHasValue := True;
end;

procedure TNfeSefazRetTransp.SetvBCRet(const Value: Double);
begin
  FvBCRet := Value;
  FvBCRetHasValue := True;
end;

procedure TNfeSefazRetTransp.SetpICMSRet(const Value: Double);
begin
  FpICMSRet := Value;
  FpICMSRetHasValue := True;
end;

procedure TNfeSefazRetTransp.SetvICMSRet(const Value: Double);
begin
  FvICMSRet := Value;
  FvICMSRetHasValue := True;
end;

procedure TNfeSefazRetTransp.SetCFOP(const Value: Integer);
begin
  FCFOP := Value;
  FCFOPHasValue := True;
end;

procedure TNfeSefazRetTransp.SetcMunFG(const Value: Integer);
begin
  FcMunFG := Value;
  FcMunFGHasValue := True;
end;

{ TNfeSefazVeiculo }

procedure TNfeSefazVeiculo.Setplaca(const Value: string);
begin
  Fplaca := Value;
  FplacaHasValue := True;
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

procedure TNfeSefazLacres.SetnLacre(const Value: string);
begin
  FnLacre := Value;
  FnLacreHasValue := True;
end;

{ TNfeSefazVol }

destructor TNfeSefazVol.Destroy;
begin
  Flacres.Free;
  inherited;
end;

procedure TNfeSefazVol.SetqVol(const Value: Integer);
begin
  FqVol := Value;
  FqVolHasValue := True;
end;

procedure TNfeSefazVol.Setesp(const Value: string);
begin
  Fesp := Value;
  FespHasValue := True;
end;

procedure TNfeSefazVol.Setmarca(const Value: string);
begin
  Fmarca := Value;
  FmarcaHasValue := True;
end;

procedure TNfeSefazVol.SetnVol(const Value: string);
begin
  FnVol := Value;
  FnVolHasValue := True;
end;

procedure TNfeSefazVol.SetpesoL(const Value: Double);
begin
  FpesoL := Value;
  FpesoLHasValue := True;
end;

procedure TNfeSefazVol.SetpesoB(const Value: Double);
begin
  FpesoB := Value;
  FpesoBHasValue := True;
end;

procedure TNfeSefazVol.Setlacres(const Value: TNfeSefazLacresList);
begin
  if Value <> Flacres then
  begin
    Flacres.Free;
    Flacres := Value;
  end;
end;

{ TNfeSefazTransp }

destructor TNfeSefazTransp.Destroy;
begin
  Fvol.Free;
  Freboque.Free;
  FveicTransp.Free;
  FretTransp.Free;
  Ftransporta.Free;
  inherited;
end;

procedure TNfeSefazTransp.SetmodFrete(const Value: Integer);
begin
  FmodFrete := Value;
  FmodFreteHasValue := True;
end;

procedure TNfeSefazTransp.Settransporta(const Value: TNfeSefazTransporta);
begin
  if Value <> Ftransporta then
  begin
    Ftransporta.Free;
    Ftransporta := Value;
  end;
end;

procedure TNfeSefazTransp.SetretTransp(const Value: TNfeSefazRetTransp);
begin
  if Value <> FretTransp then
  begin
    FretTransp.Free;
    FretTransp := Value;
  end;
end;

procedure TNfeSefazTransp.SetveicTransp(const Value: TNfeSefazVeiculo);
begin
  if Value <> FveicTransp then
  begin
    FveicTransp.Free;
    FveicTransp := Value;
  end;
end;

procedure TNfeSefazTransp.Setreboque(const Value: TNfeSefazVeiculoList);
begin
  if Value <> Freboque then
  begin
    Freboque.Free;
    Freboque := Value;
  end;
end;

procedure TNfeSefazTransp.Setvagao(const Value: string);
begin
  Fvagao := Value;
  FvagaoHasValue := True;
end;

procedure TNfeSefazTransp.Setbalsa(const Value: string);
begin
  Fbalsa := Value;
  FbalsaHasValue := True;
end;

procedure TNfeSefazTransp.Setvol(const Value: TNfeSefazVolList);
begin
  if Value <> Fvol then
  begin
    Fvol.Free;
    Fvol := Value;
  end;
end;

{ TNfeSefazFat }

procedure TNfeSefazFat.SetnFat(const Value: string);
begin
  FnFat := Value;
  FnFatHasValue := True;
end;

procedure TNfeSefazFat.SetvOrig(const Value: Double);
begin
  FvOrig := Value;
  FvOrigHasValue := True;
end;

procedure TNfeSefazFat.SetvDesc(const Value: Double);
begin
  FvDesc := Value;
  FvDescHasValue := True;
end;

procedure TNfeSefazFat.SetvLiq(const Value: Double);
begin
  FvLiq := Value;
  FvLiqHasValue := True;
end;

{ TNfeSefazDup }

procedure TNfeSefazDup.SetnDup(const Value: string);
begin
  FnDup := Value;
  FnDupHasValue := True;
end;

procedure TNfeSefazDup.SetdVenc(const Value: TDate);
begin
  FdVenc := Value;
  FdVencHasValue := True;
end;

procedure TNfeSefazDup.SetvDup(const Value: Double);
begin
  FvDup := Value;
  FvDupHasValue := True;
end;

{ TNfeSefazCobr }

destructor TNfeSefazCobr.Destroy;
begin
  Fdup.Free;
  Ffat.Free;
  inherited;
end;

procedure TNfeSefazCobr.Setfat(const Value: TNfeSefazFat);
begin
  if Value <> Ffat then
  begin
    Ffat.Free;
    Ffat := Value;
  end;
end;

procedure TNfeSefazCobr.Setdup(const Value: TNfeSefazDupList);
begin
  if Value <> Fdup then
  begin
    Fdup.Free;
    Fdup := Value;
  end;
end;

{ TNfeSefazCard }

procedure TNfeSefazCard.SettpIntegra(const Value: Integer);
begin
  FtpIntegra := Value;
  FtpIntegraHasValue := True;
end;

procedure TNfeSefazCard.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazCard.SettBand(const Value: string);
begin
  FtBand := Value;
  FtBandHasValue := True;
end;

procedure TNfeSefazCard.SetcAut(const Value: string);
begin
  FcAut := Value;
  FcAutHasValue := True;
end;

{ TNfeSefazDetPag }

destructor TNfeSefazDetPag.Destroy;
begin
  Fcard.Free;
  inherited;
end;

procedure TNfeSefazDetPag.SetindPag(const Value: Integer);
begin
  FindPag := Value;
  FindPagHasValue := True;
end;

procedure TNfeSefazDetPag.SettPag(const Value: string);
begin
  FtPag := Value;
  FtPagHasValue := True;
end;

procedure TNfeSefazDetPag.SetxPag(const Value: string);
begin
  FxPag := Value;
  FxPagHasValue := True;
end;

procedure TNfeSefazDetPag.SetvPag(const Value: Double);
begin
  FvPag := Value;
  FvPagHasValue := True;
end;

procedure TNfeSefazDetPag.Setcard(const Value: TNfeSefazCard);
begin
  if Value <> Fcard then
  begin
    Fcard.Free;
    Fcard := Value;
  end;
end;

{ TNfeSefazPag }

destructor TNfeSefazPag.Destroy;
begin
  FdetPag.Free;
  inherited;
end;

procedure TNfeSefazPag.SetdetPag(const Value: TNfeSefazDetPagList);
begin
  if Value <> FdetPag then
  begin
    FdetPag.Free;
    FdetPag := Value;
  end;
end;

procedure TNfeSefazPag.SetvTroco(const Value: Double);
begin
  FvTroco := Value;
  FvTrocoHasValue := True;
end;

{ TNfeSefazInfIntermed }

procedure TNfeSefazInfIntermed.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazInfIntermed.SetidCadIntTran(const Value: string);
begin
  FidCadIntTran := Value;
  FidCadIntTranHasValue := True;
end;

{ TNfeSefazObsCont }

procedure TNfeSefazObsCont.SetxCampo(const Value: string);
begin
  FxCampo := Value;
  FxCampoHasValue := True;
end;

procedure TNfeSefazObsCont.SetxTexto(const Value: string);
begin
  FxTexto := Value;
  FxTextoHasValue := True;
end;

{ TNfeSefazObsFisco }

procedure TNfeSefazObsFisco.SetxCampo(const Value: string);
begin
  FxCampo := Value;
  FxCampoHasValue := True;
end;

procedure TNfeSefazObsFisco.SetxTexto(const Value: string);
begin
  FxTexto := Value;
  FxTextoHasValue := True;
end;

{ TNfeSefazProcRef }

procedure TNfeSefazProcRef.SetnProc(const Value: string);
begin
  FnProc := Value;
  FnProcHasValue := True;
end;

procedure TNfeSefazProcRef.SetindProc(const Value: Integer);
begin
  FindProc := Value;
  FindProcHasValue := True;
end;

{ TNfeSefazInfAdic }

destructor TNfeSefazInfAdic.Destroy;
begin
  FprocRef.Free;
  FobsFisco.Free;
  FobsCont.Free;
  inherited;
end;

procedure TNfeSefazInfAdic.SetinfAdFisco(const Value: string);
begin
  FinfAdFisco := Value;
  FinfAdFiscoHasValue := True;
end;

procedure TNfeSefazInfAdic.SetinfCpl(const Value: string);
begin
  FinfCpl := Value;
  FinfCplHasValue := True;
end;

procedure TNfeSefazInfAdic.SetobsCont(const Value: TNfeSefazObsContList);
begin
  if Value <> FobsCont then
  begin
    FobsCont.Free;
    FobsCont := Value;
  end;
end;

procedure TNfeSefazInfAdic.SetobsFisco(const Value: TNfeSefazObsFiscoList);
begin
  if Value <> FobsFisco then
  begin
    FobsFisco.Free;
    FobsFisco := Value;
  end;
end;

procedure TNfeSefazInfAdic.SetprocRef(const Value: TNfeSefazProcRefList);
begin
  if Value <> FprocRef then
  begin
    FprocRef.Free;
    FprocRef := Value;
  end;
end;

{ TNfeSefazExporta }

procedure TNfeSefazExporta.SetUFSaidaPais(const Value: string);
begin
  FUFSaidaPais := Value;
  FUFSaidaPaisHasValue := True;
end;

procedure TNfeSefazExporta.SetxLocExporta(const Value: string);
begin
  FxLocExporta := Value;
  FxLocExportaHasValue := True;
end;

procedure TNfeSefazExporta.SetxLocDespacho(const Value: string);
begin
  FxLocDespacho := Value;
  FxLocDespachoHasValue := True;
end;

{ TNfeSefazCompra }

procedure TNfeSefazCompra.SetxNEmp(const Value: string);
begin
  FxNEmp := Value;
  FxNEmpHasValue := True;
end;

procedure TNfeSefazCompra.SetxPed(const Value: string);
begin
  FxPed := Value;
  FxPedHasValue := True;
end;

procedure TNfeSefazCompra.SetxCont(const Value: string);
begin
  FxCont := Value;
  FxContHasValue := True;
end;

{ TNfeSefazForDia }

procedure TNfeSefazForDia.Setdia(const Value: Integer);
begin
  Fdia := Value;
  FdiaHasValue := True;
end;

procedure TNfeSefazForDia.Setqtde(const Value: Double);
begin
  Fqtde := Value;
  FqtdeHasValue := True;
end;

{ TNfeSefazDeduc }

procedure TNfeSefazDeduc.SetxDed(const Value: string);
begin
  FxDed := Value;
  FxDedHasValue := True;
end;

procedure TNfeSefazDeduc.SetvDed(const Value: Double);
begin
  FvDed := Value;
  FvDedHasValue := True;
end;

{ TNfeSefazCana }

destructor TNfeSefazCana.Destroy;
begin
  Fdeduc.Free;
  FforDia.Free;
  inherited;
end;

procedure TNfeSefazCana.Setsafra(const Value: string);
begin
  Fsafra := Value;
  FsafraHasValue := True;
end;

procedure TNfeSefazCana.Setref(const Value: string);
begin
  Fref := Value;
  FrefHasValue := True;
end;

procedure TNfeSefazCana.SetforDia(const Value: TNfeSefazForDiaList);
begin
  if Value <> FforDia then
  begin
    FforDia.Free;
    FforDia := Value;
  end;
end;

procedure TNfeSefazCana.SetqTotMes(const Value: Double);
begin
  FqTotMes := Value;
  FqTotMesHasValue := True;
end;

procedure TNfeSefazCana.SetqTotAnt(const Value: Double);
begin
  FqTotAnt := Value;
  FqTotAntHasValue := True;
end;

procedure TNfeSefazCana.SetqTotGer(const Value: Double);
begin
  FqTotGer := Value;
  FqTotGerHasValue := True;
end;

procedure TNfeSefazCana.Setdeduc(const Value: TNfeSefazDeducList);
begin
  if Value <> Fdeduc then
  begin
    Fdeduc.Free;
    Fdeduc := Value;
  end;
end;

procedure TNfeSefazCana.SetvFor(const Value: Double);
begin
  FvFor := Value;
  FvForHasValue := True;
end;

procedure TNfeSefazCana.SetvTotDed(const Value: Double);
begin
  FvTotDed := Value;
  FvTotDedHasValue := True;
end;

procedure TNfeSefazCana.SetvLiqFor(const Value: Double);
begin
  FvLiqFor := Value;
  FvLiqForHasValue := True;
end;

{ TNfeSefazInfRespTec }

procedure TNfeSefazInfRespTec.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
  FCNPJHasValue := True;
end;

procedure TNfeSefazInfRespTec.SetxContato(const Value: string);
begin
  FxContato := Value;
  FxContatoHasValue := True;
end;

procedure TNfeSefazInfRespTec.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
end;

procedure TNfeSefazInfRespTec.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
end;

procedure TNfeSefazInfRespTec.SetidCSRT(const Value: Integer);
begin
  FidCSRT := Value;
  FidCSRTHasValue := True;
end;

procedure TNfeSefazInfRespTec.SethashCSRT(const Value: string);
begin
  FhashCSRT := Value;
  FhashCSRTHasValue := True;
end;

{ TNfeSefazInfSolicNFF }

procedure TNfeSefazInfSolicNFF.SetxSolic(const Value: string);
begin
  FxSolic := Value;
  FxSolicHasValue := True;
end;

{ TNfeSefazInfNFe }

destructor TNfeSefazInfNFe.Destroy;
begin
  FinfSolicNFF.Free;
  FinfRespTec.Free;
  Fcana.Free;
  Fcompra.Free;
  Fexporta.Free;
  FinfAdic.Free;
  FinfIntermed.Free;
  Fpag.Free;
  Fcobr.Free;
  Ftransp.Free;
  Ftotal.Free;
  Fdet.Free;
  FautXML.Free;
  Fentrega.Free;
  Fretirada.Free;
  Fdest.Free;
  Favulsa.Free;
  Femit.Free;
  Fide.Free;
  inherited;
end;

procedure TNfeSefazInfNFe.Setversao(const Value: string);
begin
  Fversao := Value;
  FversaoHasValue := True;
end;

procedure TNfeSefazInfNFe.SetId(const Value: string);
begin
  FId := Value;
  FIdHasValue := True;
end;

procedure TNfeSefazInfNFe.Setide(const Value: TNfeSefazIde);
begin
  if Value <> Fide then
  begin
    Fide.Free;
    Fide := Value;
  end;
end;

procedure TNfeSefazInfNFe.Setemit(const Value: TNfeSefazEmit);
begin
  if Value <> Femit then
  begin
    Femit.Free;
    Femit := Value;
  end;
end;

procedure TNfeSefazInfNFe.Setavulsa(const Value: TNfeSefazAvulsa);
begin
  if Value <> Favulsa then
  begin
    Favulsa.Free;
    Favulsa := Value;
  end;
end;

procedure TNfeSefazInfNFe.Setdest(const Value: TNfeSefazDest);
begin
  if Value <> Fdest then
  begin
    Fdest.Free;
    Fdest := Value;
  end;
end;

procedure TNfeSefazInfNFe.Setretirada(const Value: TNfeSefazLocal);
begin
  if Value <> Fretirada then
  begin
    Fretirada.Free;
    Fretirada := Value;
  end;
end;

procedure TNfeSefazInfNFe.Setentrega(const Value: TNfeSefazLocal);
begin
  if Value <> Fentrega then
  begin
    Fentrega.Free;
    Fentrega := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetautXML(const Value: TNfeSefazAutXMLList);
begin
  if Value <> FautXML then
  begin
    FautXML.Free;
    FautXML := Value;
  end;
end;

procedure TNfeSefazInfNFe.Setdet(const Value: TNfeSefazDetList);
begin
  if Value <> Fdet then
  begin
    Fdet.Free;
    Fdet := Value;
  end;
end;

procedure TNfeSefazInfNFe.Settotal(const Value: TNfeSefazTotal);
begin
  if Value <> Ftotal then
  begin
    Ftotal.Free;
    Ftotal := Value;
  end;
end;

procedure TNfeSefazInfNFe.Settransp(const Value: TNfeSefazTransp);
begin
  if Value <> Ftransp then
  begin
    Ftransp.Free;
    Ftransp := Value;
  end;
end;

procedure TNfeSefazInfNFe.Setcobr(const Value: TNfeSefazCobr);
begin
  if Value <> Fcobr then
  begin
    Fcobr.Free;
    Fcobr := Value;
  end;
end;

procedure TNfeSefazInfNFe.Setpag(const Value: TNfeSefazPag);
begin
  if Value <> Fpag then
  begin
    Fpag.Free;
    Fpag := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetinfIntermed(const Value: TNfeSefazInfIntermed);
begin
  if Value <> FinfIntermed then
  begin
    FinfIntermed.Free;
    FinfIntermed := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetinfAdic(const Value: TNfeSefazInfAdic);
begin
  if Value <> FinfAdic then
  begin
    FinfAdic.Free;
    FinfAdic := Value;
  end;
end;

procedure TNfeSefazInfNFe.Setexporta(const Value: TNfeSefazExporta);
begin
  if Value <> Fexporta then
  begin
    Fexporta.Free;
    Fexporta := Value;
  end;
end;

procedure TNfeSefazInfNFe.Setcompra(const Value: TNfeSefazCompra);
begin
  if Value <> Fcompra then
  begin
    Fcompra.Free;
    Fcompra := Value;
  end;
end;

procedure TNfeSefazInfNFe.Setcana(const Value: TNfeSefazCana);
begin
  if Value <> Fcana then
  begin
    Fcana.Free;
    Fcana := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetinfRespTec(const Value: TNfeSefazInfRespTec);
begin
  if Value <> FinfRespTec then
  begin
    FinfRespTec.Free;
    FinfRespTec := Value;
  end;
end;

procedure TNfeSefazInfNFe.SetinfSolicNFF(const Value: TNfeSefazInfSolicNFF);
begin
  if Value <> FinfSolicNFF then
  begin
    FinfSolicNFF.Free;
    FinfSolicNFF := Value;
  end;
end;

{ TNfeSefazInfNFeSupl }

procedure TNfeSefazInfNFeSupl.SetqrCode(const Value: string);
begin
  FqrCode := Value;
  FqrCodeHasValue := True;
end;

procedure TNfeSefazInfNFeSupl.SeturlChave(const Value: string);
begin
  FurlChave := Value;
  FurlChaveHasValue := True;
end;

{ TNfePedidoEmissao }

destructor TNfePedidoEmissao.Destroy;
begin
  FinfNFeSupl.Free;
  FinfNFe.Free;
  inherited;
end;

procedure TNfePedidoEmissao.SetinfNFe(const Value: TNfeSefazInfNFe);
begin
  if Value <> FinfNFe then
  begin
    FinfNFe.Free;
    FinfNFe := Value;
  end;
end;

procedure TNfePedidoEmissao.SetinfNFeSupl(const Value: TNfeSefazInfNFeSupl);
begin
  if Value <> FinfNFeSupl then
  begin
    FinfNFeSupl.Free;
    FinfNFeSupl := Value;
  end;
end;

procedure TNfePedidoEmissao.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TNfePedidoEmissao.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
end;

{ TNfePedidoEmissaoLote }

destructor TNfePedidoEmissaoLote.Destroy;
begin
  Fdocumentos.Free;
  inherited;
end;

procedure TNfePedidoEmissaoLote.Setdocumentos(const Value: TNfePedidoEmissaoList);
begin
  if Value <> Fdocumentos then
  begin
    Fdocumentos.Free;
    Fdocumentos := Value;
  end;
end;

procedure TNfePedidoEmissaoLote.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TNfePedidoEmissaoLote.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
end;

procedure TNfePedidoEmissaoLote.Setid_lote(const Value: string);
begin
  Fid_lote := Value;
  Fid_loteHasValue := True;
end;

{ TNfePedidoCancelamento }

procedure TNfePedidoCancelamento.Setjustificativa(const Value: string);
begin
  Fjustificativa := Value;
  FjustificativaHasValue := True;
end;

{ TNfePedidoCartaCorrecao }

procedure TNfePedidoCartaCorrecao.Setcorrecao(const Value: string);
begin
  Fcorrecao := Value;
  FcorrecaoHasValue := True;
end;

{ TDfeCartaCorrecao }

destructor TDfeCartaCorrecao.Destroy;
begin
  Fautor.Free;
  inherited;
end;

procedure TDfeCartaCorrecao.Setcorrecao(const Value: string);
begin
  Fcorrecao := Value;
  FcorrecaoHasValue := True;
end;

procedure TDfeCartaCorrecao.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TDfeCartaCorrecao.Setambiente(const Value: string);
begin
  Fambiente := Value;
  FambienteHasValue := True;
end;

procedure TDfeCartaCorrecao.Setstatus(const Value: string);
begin
  Fstatus := Value;
  FstatusHasValue := True;
end;

procedure TDfeCartaCorrecao.Setautor(const Value: TDfeAutorEvento);
begin
  if Value <> Fautor then
  begin
    Fautor.Free;
    Fautor := Value;
  end;
end;

procedure TDfeCartaCorrecao.Setchave_acesso(const Value: string);
begin
  Fchave_acesso := Value;
  Fchave_acessoHasValue := True;
end;

procedure TDfeCartaCorrecao.Setdata_evento(const Value: TDateTime);
begin
  Fdata_evento := Value;
  Fdata_eventoHasValue := True;
end;

procedure TDfeCartaCorrecao.Setnumero_sequencial(const Value: Integer);
begin
  Fnumero_sequencial := Value;
  Fnumero_sequencialHasValue := True;
end;

procedure TDfeCartaCorrecao.Setdata_recebimento(const Value: TDateTime);
begin
  Fdata_recebimento := Value;
  Fdata_recebimentoHasValue := True;
end;

procedure TDfeCartaCorrecao.Setcodigo_status(const Value: Integer);
begin
  Fcodigo_status := Value;
  Fcodigo_statusHasValue := True;
end;

procedure TDfeCartaCorrecao.Setmotivo_status(const Value: string);
begin
  Fmotivo_status := Value;
  Fmotivo_statusHasValue := True;
end;

procedure TDfeCartaCorrecao.Setnumero_protocolo(const Value: string);
begin
  Fnumero_protocolo := Value;
  Fnumero_protocoloHasValue := True;
end;

procedure TDfeCartaCorrecao.Setcodigo_mensagem(const Value: Integer);
begin
  Fcodigo_mensagem := Value;
  Fcodigo_mensagemHasValue := True;
end;

procedure TDfeCartaCorrecao.Setmensagem(const Value: string);
begin
  Fmensagem := Value;
  FmensagemHasValue := True;
end;

procedure TDfeCartaCorrecao.Settipo_evento(const Value: string);
begin
  Ftipo_evento := Value;
  Ftipo_eventoHasValue := True;
end;

{ TCnpjNaturezaJuridica }

procedure TCnpjNaturezaJuridica.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
  FcodigoHasValue := True;
end;

procedure TCnpjNaturezaJuridica.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
  FdescricaoHasValue := True;
end;

{ TCnpjPorteEmpresa }

procedure TCnpjPorteEmpresa.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
  FcodigoHasValue := True;
end;

procedure TCnpjPorteEmpresa.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
  FdescricaoHasValue := True;
end;

{ TCnpjSituacaoCadastral }

procedure TCnpjSituacaoCadastral.Setdata(const Value: TDate);
begin
  Fdata := Value;
  FdataHasValue := True;
end;

procedure TCnpjSituacaoCadastral.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
  FcodigoHasValue := True;
end;

procedure TCnpjSituacaoCadastral.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
  FdescricaoHasValue := True;
end;

{ TCnpjPais }

procedure TCnpjPais.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
  FcodigoHasValue := True;
end;

procedure TCnpjPais.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
  FdescricaoHasValue := True;
end;

{ TCnpjCnae }

procedure TCnpjCnae.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
  FcodigoHasValue := True;
end;

procedure TCnpjCnae.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
  FdescricaoHasValue := True;
end;

{ TCnpjMunicipio }

procedure TCnpjMunicipio.Setcodigo_tom(const Value: string);
begin
  Fcodigo_tom := Value;
  Fcodigo_tomHasValue := True;
end;

procedure TCnpjMunicipio.Setcodigo_ibge(const Value: string);
begin
  Fcodigo_ibge := Value;
  Fcodigo_ibgeHasValue := True;
end;

procedure TCnpjMunicipio.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
  FdescricaoHasValue := True;
end;

{ TCnpjEndereco }

destructor TCnpjEndereco.Destroy;
begin
  Fmunicipio.Free;
  inherited;
end;

procedure TCnpjEndereco.Settipo_logradouro(const Value: string);
begin
  Ftipo_logradouro := Value;
  Ftipo_logradouroHasValue := True;
end;

procedure TCnpjEndereco.Setlogradouro(const Value: string);
begin
  Flogradouro := Value;
  FlogradouroHasValue := True;
end;

procedure TCnpjEndereco.Setnumero(const Value: string);
begin
  Fnumero := Value;
  FnumeroHasValue := True;
end;

procedure TCnpjEndereco.Setcomplemento(const Value: string);
begin
  Fcomplemento := Value;
  FcomplementoHasValue := True;
end;

procedure TCnpjEndereco.Setbairro(const Value: string);
begin
  Fbairro := Value;
  FbairroHasValue := True;
end;

procedure TCnpjEndereco.Setcep(const Value: string);
begin
  Fcep := Value;
  FcepHasValue := True;
end;

procedure TCnpjEndereco.Setuf(const Value: string);
begin
  Fuf := Value;
  FufHasValue := True;
end;

procedure TCnpjEndereco.Setmunicipio(const Value: TCnpjMunicipio);
begin
  if Value <> Fmunicipio then
  begin
    Fmunicipio.Free;
    Fmunicipio := Value;
  end;
end;

{ TCnpjTelefone }

procedure TCnpjTelefone.Setddd(const Value: string);
begin
  Fddd := Value;
  FdddHasValue := True;
end;

procedure TCnpjTelefone.Setnumero(const Value: string);
begin
  Fnumero := Value;
  FnumeroHasValue := True;
end;

{ TCnpjOpcaoSimples }

procedure TCnpjOpcaoSimples.Setoptante(const Value: Boolean);
begin
  Foptante := Value;
  FoptanteHasValue := True;
end;

procedure TCnpjOpcaoSimples.Setdata_opcao(const Value: TDate);
begin
  Fdata_opcao := Value;
  Fdata_opcaoHasValue := True;
end;

procedure TCnpjOpcaoSimples.Setdata_exclusao(const Value: TDate);
begin
  Fdata_exclusao := Value;
  Fdata_exclusaoHasValue := True;
end;

{ TCnpjIdentificadorSocio }

procedure TCnpjIdentificadorSocio.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
  FcodigoHasValue := True;
end;

procedure TCnpjIdentificadorSocio.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
  FdescricaoHasValue := True;
end;

{ TCnpjQualificacaoSocio }

procedure TCnpjQualificacaoSocio.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
  FcodigoHasValue := True;
end;

procedure TCnpjQualificacaoSocio.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
  FdescricaoHasValue := True;
end;

{ TCnpjRepresentanteLegal }

destructor TCnpjRepresentanteLegal.Destroy;
begin
  Fqualificacao.Free;
  inherited;
end;

procedure TCnpjRepresentanteLegal.Setcpf(const Value: string);
begin
  Fcpf := Value;
  FcpfHasValue := True;
end;

procedure TCnpjRepresentanteLegal.Setnome(const Value: string);
begin
  Fnome := Value;
  FnomeHasValue := True;
end;

procedure TCnpjRepresentanteLegal.Setqualificacao(const Value: TCnpjQualificacaoSocio);
begin
  if Value <> Fqualificacao then
  begin
    Fqualificacao.Free;
    Fqualificacao := Value;
  end;
end;

{ TCnpjFaixaEtaria }

procedure TCnpjFaixaEtaria.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
  FcodigoHasValue := True;
end;

procedure TCnpjFaixaEtaria.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
  FdescricaoHasValue := True;
end;

{ TCnpjSocio }

destructor TCnpjSocio.Destroy;
begin
  Ffaixa_etaria.Free;
  Frepresentante_legal.Free;
  Fpais.Free;
  Fqualificacao.Free;
  Fidentificador_socio.Free;
  inherited;
end;

procedure TCnpjSocio.Setidentificador_socio(const Value: TCnpjIdentificadorSocio);
begin
  if Value <> Fidentificador_socio then
  begin
    Fidentificador_socio.Free;
    Fidentificador_socio := Value;
  end;
end;

procedure TCnpjSocio.Setnome(const Value: string);
begin
  Fnome := Value;
  FnomeHasValue := True;
end;

procedure TCnpjSocio.Setcpf_cnpj(const Value: string);
begin
  Fcpf_cnpj := Value;
  Fcpf_cnpjHasValue := True;
end;

procedure TCnpjSocio.Setqualificacao(const Value: TCnpjQualificacaoSocio);
begin
  if Value <> Fqualificacao then
  begin
    Fqualificacao.Free;
    Fqualificacao := Value;
  end;
end;

procedure TCnpjSocio.Setdata_entrada_sociedade(const Value: TDate);
begin
  Fdata_entrada_sociedade := Value;
  Fdata_entrada_sociedadeHasValue := True;
end;

procedure TCnpjSocio.Setpais(const Value: TCnpjPais);
begin
  if Value <> Fpais then
  begin
    Fpais.Free;
    Fpais := Value;
  end;
end;

procedure TCnpjSocio.Setrepresentante_legal(const Value: TCnpjRepresentanteLegal);
begin
  if Value <> Frepresentante_legal then
  begin
    Frepresentante_legal.Free;
    Frepresentante_legal := Value;
  end;
end;

procedure TCnpjSocio.Setfaixa_etaria(const Value: TCnpjFaixaEtaria);
begin
  if Value <> Ffaixa_etaria then
  begin
    Ffaixa_etaria.Free;
    Ffaixa_etaria := Value;
  end;
end;

{ TCnpjEmpresa }

destructor TCnpjEmpresa.Destroy;
begin
  Fsocios.Free;
  Fsimei.Free;
  Fsimples.Free;
  Fsituacao_especial.Free;
  Ftelefones.Free;
  Fendereco.Free;
  Fatividades_secundarias.Free;
  Fatividade_principal.Free;
  Fpais.Free;
  Fmotivo_situacao_cadastral.Free;
  Fsituacao_cadastral.Free;
  Fporte.Free;
  Fnatureza_juridica.Free;
  inherited;
end;

procedure TCnpjEmpresa.Setcnpj(const Value: string);
begin
  Fcnpj := Value;
  FcnpjHasValue := True;
end;

procedure TCnpjEmpresa.Setrazao_social(const Value: string);
begin
  Frazao_social := Value;
  Frazao_socialHasValue := True;
end;

procedure TCnpjEmpresa.Setnome_fantasia(const Value: string);
begin
  Fnome_fantasia := Value;
  Fnome_fantasiaHasValue := True;
end;

procedure TCnpjEmpresa.Setdata_inicio_atividade(const Value: TDate);
begin
  Fdata_inicio_atividade := Value;
  Fdata_inicio_atividadeHasValue := True;
end;

procedure TCnpjEmpresa.Setmatriz(const Value: Boolean);
begin
  Fmatriz := Value;
  FmatrizHasValue := True;
end;

procedure TCnpjEmpresa.Setnatureza_juridica(const Value: TCnpjNaturezaJuridica);
begin
  if Value <> Fnatureza_juridica then
  begin
    Fnatureza_juridica.Free;
    Fnatureza_juridica := Value;
  end;
end;

procedure TCnpjEmpresa.Setcapital_social(const Value: Double);
begin
  Fcapital_social := Value;
  Fcapital_socialHasValue := True;
end;

procedure TCnpjEmpresa.Setporte(const Value: TCnpjPorteEmpresa);
begin
  if Value <> Fporte then
  begin
    Fporte.Free;
    Fporte := Value;
  end;
end;

procedure TCnpjEmpresa.Setente_federativo_responsavel(const Value: string);
begin
  Fente_federativo_responsavel := Value;
  Fente_federativo_responsavelHasValue := True;
end;

procedure TCnpjEmpresa.Setsituacao_cadastral(const Value: TCnpjSituacaoCadastral);
begin
  if Value <> Fsituacao_cadastral then
  begin
    Fsituacao_cadastral.Free;
    Fsituacao_cadastral := Value;
  end;
end;

procedure TCnpjEmpresa.Setmotivo_situacao_cadastral(const Value: TCnpjSituacaoCadastral);
begin
  if Value <> Fmotivo_situacao_cadastral then
  begin
    Fmotivo_situacao_cadastral.Free;
    Fmotivo_situacao_cadastral := Value;
  end;
end;

procedure TCnpjEmpresa.Setnome_da_cidade_no_exterior(const Value: string);
begin
  Fnome_da_cidade_no_exterior := Value;
  Fnome_da_cidade_no_exteriorHasValue := True;
end;

procedure TCnpjEmpresa.Setpais(const Value: TCnpjPais);
begin
  if Value <> Fpais then
  begin
    Fpais.Free;
    Fpais := Value;
  end;
end;

procedure TCnpjEmpresa.Setatividade_principal(const Value: TCnpjCnae);
begin
  if Value <> Fatividade_principal then
  begin
    Fatividade_principal.Free;
    Fatividade_principal := Value;
  end;
end;

procedure TCnpjEmpresa.Setatividades_secundarias(const Value: TCnpjCnaeList);
begin
  if Value <> Fatividades_secundarias then
  begin
    Fatividades_secundarias.Free;
    Fatividades_secundarias := Value;
  end;
end;

procedure TCnpjEmpresa.Setendereco(const Value: TCnpjEndereco);
begin
  if Value <> Fendereco then
  begin
    Fendereco.Free;
    Fendereco := Value;
  end;
end;

procedure TCnpjEmpresa.Settelefones(const Value: TCnpjTelefoneList);
begin
  if Value <> Ftelefones then
  begin
    Ftelefones.Free;
    Ftelefones := Value;
  end;
end;

procedure TCnpjEmpresa.Setemail(const Value: string);
begin
  Femail := Value;
  FemailHasValue := True;
end;

procedure TCnpjEmpresa.Setsituacao_especial(const Value: TCnpjSituacaoCadastral);
begin
  if Value <> Fsituacao_especial then
  begin
    Fsituacao_especial.Free;
    Fsituacao_especial := Value;
  end;
end;

procedure TCnpjEmpresa.Setsimples(const Value: TCnpjOpcaoSimples);
begin
  if Value <> Fsimples then
  begin
    Fsimples.Free;
    Fsimples := Value;
  end;
end;

procedure TCnpjEmpresa.Setsimei(const Value: TCnpjOpcaoSimples);
begin
  if Value <> Fsimei then
  begin
    Fsimei.Free;
    Fsimei := Value;
  end;
end;

procedure TCnpjEmpresa.Setsocios(const Value: TCnpjSocioList);
begin
  if Value <> Fsocios then
  begin
    Fsocios.Free;
    Fsocios := Value;
  end;
end;

{ TCepEndereco }

procedure TCepEndereco.Setbairro(const Value: string);
begin
  Fbairro := Value;
  FbairroHasValue := True;
end;

procedure TCepEndereco.Setcep(const Value: string);
begin
  Fcep := Value;
  FcepHasValue := True;
end;

procedure TCepEndereco.Setcodigo_ibge(const Value: string);
begin
  Fcodigo_ibge := Value;
  Fcodigo_ibgeHasValue := True;
end;

procedure TCepEndereco.Setcomplemento(const Value: string);
begin
  Fcomplemento := Value;
  FcomplementoHasValue := True;
end;

procedure TCepEndereco.Setlogradouro(const Value: string);
begin
  Flogradouro := Value;
  FlogradouroHasValue := True;
end;

procedure TCepEndereco.Setmunicipio(const Value: string);
begin
  Fmunicipio := Value;
  FmunicipioHasValue := True;
end;

procedure TCepEndereco.Settipo_logradouro(const Value: string);
begin
  Ftipo_logradouro := Value;
  Ftipo_logradouroHasValue := True;
end;

procedure TCepEndereco.Setuf(const Value: string);
begin
  Fuf := Value;
  FufHasValue := True;
end;

end.
