unit NuvemFiscalDtos;

{$IFDEF FPC}{$MODE Delphi}{$ENDIF}

interface

uses
  Generics.Collections, 
  SysUtils;

type
  TEmpresaEndereco = class;
  TEmpresa = class;
  TEmpresaList = class;
  TEmpresaListagem = class;
  TEmpresaPedidoCadastroCertificado = class;
  TEmpresaCertificado = class;
  TEmpresaConfigNfe = class;
  TEmpresaConfigNfceSefaz = class;
  TEmpresaConfigNfce = class;
  TEmpresaConfigRps = class;
  TEmpresaConfigPrefeitura = class;
  TEmpresaConfigNfse = class;
  TEmpresaConfigMdfe = class;
  TEmpresaConfigCte = class;
  TRpsIdentificacaoPrestador = class;
  TRpsDadosTomadorEndereco = class;
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
  TDps = class;
  TRpsLoteList = class;
  TRpsLoteListagem = class;
  TNfsePedidoEmissao = class;
  TNfseListagem = class;
  TNfsePedidoCancelamento = class;
  TContaCota = class;
  TContaCotaList = class;
  TContaCotaListagem = class;
  TDfeSefazStatus = class;
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
  TDfeLoteList = class;
  TDfeLoteListagem = class;
  TDfeListagem = class;
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
  TMdfeSefazInfContrato = class;
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
  TNfeSefazObsCont = class;
  TNfeSefazObsFisco = class;
  TNfeSefazObsItem = class;
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
  TNfeSefazInfAdicObsCont = class;
  TNfeSefazInfAdicObsContList = class;
  TNfeSefazInfAdicObsFisco = class;
  TNfeSefazInfAdicObsFiscoList = class;
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
  TCnpjMotivoSituacaoCadastral = class;
  TCnpjPais = class;
  TCnpjCnae = class;
  TCnpjCnaeList = class;
  TCnpjMunicipio = class;
  TCnpjEndereco = class;
  TCnpjTelefone = class;
  TCnpjTelefoneList = class;
  TCnpjSituacaoEspecial = class;
  TCnpjOpcaoSimples = class;
  TCnpjOpcaoSimei = class;
  TCnpjEmpresa = class;
  TCnpjEmpresaList = class;
  TCnpjListagem = class;
  TCepEndereco = class;
  
  TEmpresaEndereco = class
  private
    Flogradouro: string;
    Fnumero: string;
    Fcomplemento: string;
    FcomplementoHasValue: Boolean;
    Fbairro: string;
    Fcodigo_municipio: string;
    Fcidade: string;
    FcidadeHasValue: Boolean;
    Fuf: string;
    Fcodigo_pais: string;
    Fcodigo_paisHasValue: Boolean;
    Fpais: string;
    FpaisHasValue: Boolean;
    Fcep: string;
    procedure Setcomplemento(const Value: string);
    procedure Setcidade(const Value: string);
    procedure Setcodigo_pais(const Value: string);
    procedure Setpais(const Value: string);
  public
    /// <summary>
    /// Logradouro.
    /// </summary>
    property logradouro: string read Flogradouro write Flogradouro;
    /// <summary>
    /// Número.
    /// </summary>
    property numero: string read Fnumero write Fnumero;
    /// <summary>
    /// Complemento.
    /// </summary>
    property complemento: string read Fcomplemento write Setcomplemento;
    property complementoHasValue: Boolean read FcomplementoHasValue write FcomplementoHasValue;
    /// <summary>
    /// Bairro.
    /// </summary>
    property bairro: string read Fbairro write Fbairro;
    /// <summary>
    /// Código IBGE do município.
    /// </summary>
    property codigo_municipio: string read Fcodigo_municipio write Fcodigo_municipio;
    /// <summary>
    /// Cidade.
    /// </summary>
    property cidade: string read Fcidade write Setcidade;
    property cidadeHasValue: Boolean read FcidadeHasValue write FcidadeHasValue;
    /// <summary>
    /// Sigla do estado.
    /// </summary>
    property uf: string read Fuf write Fuf;
    /// <summary>
    /// Código do país.
    /// Valor padrão: `1058`
    /// </summary>
    property codigo_pais: string read Fcodigo_pais write Setcodigo_pais;
    property codigo_paisHasValue: Boolean read Fcodigo_paisHasValue write Fcodigo_paisHasValue;
    /// <summary>
    /// Nome do país.
    /// Valor padrão: `Brasil`
    /// </summary>
    property pais: string read Fpais write Setpais;
    property paisHasValue: Boolean read FpaisHasValue write FpaisHasValue;
    /// <summary>
    /// CEP.
    /// Utilize o valor sem máscara.
    /// </summary>
    property cep: string read Fcep write Fcep;
  end;
  
  TEmpresa = class
  private
    Fcpf_cnpj: string;
    Fcreated_at: TDateTime;
    Fcreated_atHasValue: Boolean;
    Fupdated_at: TDateTime;
    Fupdated_atHasValue: Boolean;
    Finscricao_estadual: string;
    Finscricao_estadualHasValue: Boolean;
    Finscricao_municipal: string;
    Finscricao_municipalHasValue: Boolean;
    Fnome_razao_social: string;
    Fnome_fantasia: string;
    Fnome_fantasiaHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    Femail: string;
    Fendereco: TEmpresaEndereco;
    Foptante_simples_nacional: Boolean;
    Foptante_simples_nacionalHasValue: Boolean;
    Fregime_tributacao: Integer;
    Fregime_especial_tributacao: Integer;
    Fincentivo_fiscal: Boolean;
    Fincentivo_fiscalHasValue: Boolean;
    Fincentivador_cultural: Boolean;
    Fincentivador_culturalHasValue: Boolean;
    procedure Setcreated_at(const Value: TDateTime);
    procedure Setupdated_at(const Value: TDateTime);
    procedure Setinscricao_estadual(const Value: string);
    procedure Setinscricao_municipal(const Value: string);
    procedure Setnome_fantasia(const Value: string);
    procedure Setfone(const Value: string);
    procedure Setendereco(const Value: TEmpresaEndereco);
    procedure Setoptante_simples_nacional(const Value: Boolean);
    procedure Setincentivo_fiscal(const Value: Boolean);
    procedure Setincentivador_cultural(const Value: Boolean);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </summary>
    property cpf_cnpj: string read Fcpf_cnpj write Fcpf_cnpj;
    /// <summary>
    /// Data e hora que o objeto foi criado.
    /// A Nuvem Fiscal gerencia esse campo automaticamente.
    /// </summary>
    property created_at: TDateTime read Fcreated_at write Setcreated_at;
    property created_atHasValue: Boolean read Fcreated_atHasValue write Fcreated_atHasValue;
    /// <summary>
    /// Data e hora que o objeto foi alterado pela última vez.
    /// A Nuvem Fiscal gerencia esse campo automaticamente.
    /// </summary>
    property updated_at: TDateTime read Fupdated_at write Setupdated_at;
    property updated_atHasValue: Boolean read Fupdated_atHasValue write Fupdated_atHasValue;
    /// <summary>
    /// Inscrição estadual da empresa.
    /// </summary>
    property inscricao_estadual: string read Finscricao_estadual write Setinscricao_estadual;
    property inscricao_estadualHasValue: Boolean read Finscricao_estadualHasValue write Finscricao_estadualHasValue;
    /// <summary>
    /// Inscrição municipal da empresa.
    /// </summary>
    property inscricao_municipal: string read Finscricao_municipal write Setinscricao_municipal;
    property inscricao_municipalHasValue: Boolean read Finscricao_municipalHasValue write Finscricao_municipalHasValue;
    /// <summary>
    /// Razão social da empresa.
    /// </summary>
    property nome_razao_social: string read Fnome_razao_social write Fnome_razao_social;
    /// <summary>
    /// Nome fantasia da empresa.
    /// </summary>
    property nome_fantasia: string read Fnome_fantasia write Setnome_fantasia;
    property nome_fantasiaHasValue: Boolean read Fnome_fantasiaHasValue write Fnome_fantasiaHasValue;
    /// <summary>
    /// Telefone da empresa.
    /// </summary>
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    /// <summary>
    /// Email da empresa.
    /// </summary>
    property email: string read Femail write Femail;
    /// <summary>
    /// Endereço da empresa.
    /// </summary>
    property endereco: TEmpresaEndereco read Fendereco write Setendereco;
    /// <summary>
    /// Optante pelo simples nacional.
    /// </summary>
    property optante_simples_nacional: Boolean read Foptante_simples_nacional write Setoptante_simples_nacional;
    property optante_simples_nacionalHasValue: Boolean read Foptante_simples_nacionalHasValue write Foptante_simples_nacionalHasValue;
    /// <summary>
    /// Regime Tributário da Empresa:
    /// 0 - Nenhum
    /// 1 - Simples Nacional
    /// 2 - Simples Nacional - Excesso
    /// 3 - Normal - Lucro Presumido
    /// 4 - Normal - Lucro Real
    /// </summary>
    property regime_tributacao: Integer read Fregime_tributacao write Fregime_tributacao;
    /// <summary>
    /// Regime especial de tributação da Empresa:
    /// 0 - Sem Regime Tributário Especial
    /// 1 - Micro Empresa Municipal
    /// 2 - Estimativa
    /// 3 - Sociedade de Profissionais
    /// 4 - Cooperativa
    /// 5 - Microempresário Individual - MEI
    /// 6 - Microempresa ou Pequeno Porte - ME EPP
    /// </summary>
    property regime_especial_tributacao: Integer read Fregime_especial_tributacao write Fregime_especial_tributacao;
    /// <summary>
    /// Indicador se a empresa possui algum tipo de incentivo fiscal.
    /// </summary>
    property incentivo_fiscal: Boolean read Fincentivo_fiscal write Setincentivo_fiscal;
    property incentivo_fiscalHasValue: Boolean read Fincentivo_fiscalHasValue write Fincentivo_fiscalHasValue;
    /// <summary>
    /// Indicador se a empresa é um incentivador cultural.
    /// </summary>
    property incentivador_cultural: Boolean read Fincentivador_cultural write Setincentivador_cultural;
    property incentivador_culturalHasValue: Boolean read Fincentivador_culturalHasValue write Fincentivador_culturalHasValue;
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
    Fpassword: string;
  public
    /// <summary>
    /// Binário do certificado digital (.pfx ou .p12) codificado em base64.
    /// </summary>
    property certificado: TBytes read Fcertificado write Fcertificado;
    /// <summary>
    /// Senha do certificado.
    /// </summary>
    property password: string read Fpassword write Fpassword;
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
  
  TEmpresaConfigNfe = class
  private
    Fambiente: string;
  public
    /// <summary>
    /// Indica se a empresa irá emitir em produção ou homologação.
    /// </summary>
    property ambiente: string read Fambiente write Fambiente;
  end;
  
  TEmpresaConfigNfceSefaz = class
  private
    Fid_csc: Integer;
    Fcsc: string;
  public
    /// <summary>
    /// Número de identificação do CSC.
    /// </summary>
    property id_csc: Integer read Fid_csc write Fid_csc;
    /// <summary>
    /// Código do CSC.
    /// </summary>
    property csc: string read Fcsc write Fcsc;
  end;
  
  TEmpresaConfigNfce = class
  private
    Fsefaz: TEmpresaConfigNfceSefaz;
    Fambiente: string;
    procedure Setsefaz(const Value: TEmpresaConfigNfceSefaz);
  public
    constructor Create;
    destructor Destroy; override;
    property sefaz: TEmpresaConfigNfceSefaz read Fsefaz write Setsefaz;
    /// <summary>
    /// Indica se a empresa irá emitir em produção ou homologação.
    /// </summary>
    property ambiente: string read Fambiente write Fambiente;
  end;
  
  TEmpresaConfigRps = class
  private
    Flote: Integer;
    Fserie: string;
    Fnumero: Integer;
  public
    /// <summary>
    /// Número do Lote de RPS.
    /// Informe o próximo número do lote RPS a ser utilizado. Após isso, a Nuvem
    /// Fiscal gerenciará esse campo (a cada novo envio de lote o número é
    /// incrementado em + 1). Portanto, basta informá-lo no cadastro da empresa
    /// uma única vez.
    /// </summary>
    property lote: Integer read Flote write Flote;
    /// <summary>
    /// Série do RPS.
    /// A série dos RPS varia de acordo com cada prefeitura, podendo ser
    /// número (1, 2 ou 3, por exemplo) ou letras (A, S, NFS, por exemplo).
    /// Portanto, consulte-a com o município da empresa antes de iniciar a
    /// </summary>
    property serie: string read Fserie write Fserie;
    /// <summary>
    /// Número do RPS.
    /// Informe o próximo número de RPS a ser utilizado. Após isso, a Nuvem
    /// Fiscal gerenciará esse campo (a cada novo envio de RPS o número é
    /// incrementado em + 1). Portanto, basta informá-lo no cadastro da empresa
    /// uma única vez.
    /// </summary>
    property numero: Integer read Fnumero write Fnumero;
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
    /// <summary>
    /// Login de autenticação com a prefeitura, caso não utilize certificado digital.
    /// </summary>
    property login: string read Flogin write Setlogin;
    property loginHasValue: Boolean read FloginHasValue write FloginHasValue;
    /// <summary>
    /// Senha de autenticação com a prefeitura, caso não utilize certificado digital.
    /// </summary>
    property senha: string read Fsenha write Setsenha;
    property senhaHasValue: Boolean read FsenhaHasValue write FsenhaHasValue;
    /// <summary>
    /// Token de autenticação com a prefeitura, caso não utilize certificado digital.
    /// </summary>
    property token: string read Ftoken write Settoken;
    property tokenHasValue: Boolean read FtokenHasValue write FtokenHasValue;
  end;
  
  TEmpresaConfigNfse = class
  private
    Frps: TEmpresaConfigRps;
    Fprefeitura: TEmpresaConfigPrefeitura;
    Fambiente: string;
    procedure Setrps(const Value: TEmpresaConfigRps);
    procedure Setprefeitura(const Value: TEmpresaConfigPrefeitura);
  public
    constructor Create;
    destructor Destroy; override;
    property rps: TEmpresaConfigRps read Frps write Setrps;
    /// <summary>
    /// Dados adicionais para comunicação com a prefeitura. Essa validação é
    /// dinâmica, de acordo com a necessidade de cada município.
    /// </summary>
    property prefeitura: TEmpresaConfigPrefeitura read Fprefeitura write Setprefeitura;
    /// <summary>
    /// Indica se a empresa irá emitir em produção ou homologação.
    /// </summary>
    property ambiente: string read Fambiente write Fambiente;
  end;
  
  TEmpresaConfigMdfe = class
  private
    Fambiente: string;
  public
    /// <summary>
    /// Indica se a empresa irá emitir em produção ou homologação.
    /// </summary>
    property ambiente: string read Fambiente write Fambiente;
  end;
  
  TEmpresaConfigCte = class
  private
    Fambiente: string;
  public
    /// <summary>
    /// Indica se a empresa irá emitir em produção ou homologação.
    /// </summary>
    property ambiente: string read Fambiente write Fambiente;
  end;
  
  TRpsIdentificacaoPrestador = class
  private
    Fcpf_cnpj: string;
  public
    /// <summary>
    /// CPF ou CNPJ do prestador.
    /// Utilize o valor sem máscara.
    /// </summary>
    property cpf_cnpj: string read Fcpf_cnpj write Fcpf_cnpj;
  end;
  
  TRpsDadosTomadorEndereco = class
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
    /// <summary>
    /// Logradouro.
    /// </summary>
    property logradouro: string read Flogradouro write Setlogradouro;
    property logradouroHasValue: Boolean read FlogradouroHasValue write FlogradouroHasValue;
    /// <summary>
    /// Número.
    /// </summary>
    property numero: string read Fnumero write Setnumero;
    property numeroHasValue: Boolean read FnumeroHasValue write FnumeroHasValue;
    /// <summary>
    /// Complemento.
    /// </summary>
    property complemento: string read Fcomplemento write Setcomplemento;
    property complementoHasValue: Boolean read FcomplementoHasValue write FcomplementoHasValue;
    /// <summary>
    /// Bairro.
    /// </summary>
    property bairro: string read Fbairro write Setbairro;
    property bairroHasValue: Boolean read FbairroHasValue write FbairroHasValue;
    /// <summary>
    /// Código IBGE do município.
    /// </summary>
    property codigo_municipio: string read Fcodigo_municipio write Setcodigo_municipio;
    property codigo_municipioHasValue: Boolean read Fcodigo_municipioHasValue write Fcodigo_municipioHasValue;
    /// <summary>
    /// Cidade.
    /// </summary>
    property cidade: string read Fcidade write Setcidade;
    property cidadeHasValue: Boolean read FcidadeHasValue write FcidadeHasValue;
    /// <summary>
    /// Sigla do estado.
    /// </summary>
    property uf: string read Fuf write Setuf;
    property ufHasValue: Boolean read FufHasValue write FufHasValue;
    /// <summary>
    /// Código do país.
    /// Valor padrão: `1058`
    /// </summary>
    property codigo_pais: string read Fcodigo_pais write Setcodigo_pais;
    property codigo_paisHasValue: Boolean read Fcodigo_paisHasValue write Fcodigo_paisHasValue;
    /// <summary>
    /// Nome do país.
    /// </summary>
    property pais: string read Fpais write Setpais;
    property paisHasValue: Boolean read FpaisHasValue write FpaisHasValue;
    /// <summary>
    /// CEP.
    /// Utilize o valor sem máscara.
    /// </summary>
    property cep: string read Fcep write Setcep;
    property cepHasValue: Boolean read FcepHasValue write FcepHasValue;
  end;
  
  TRpsDadosTomador = class
  private
    Fcpf_cnpj: string;
    Fcpf_cnpjHasValue: Boolean;
    Finscricao_municipal: string;
    Finscricao_municipalHasValue: Boolean;
    Fnome_razao_social: string;
    Ffone: string;
    FfoneHasValue: Boolean;
    Femail: string;
    FemailHasValue: Boolean;
    Fendereco: TRpsDadosTomadorEndereco;
    procedure Setcpf_cnpj(const Value: string);
    procedure Setinscricao_municipal(const Value: string);
    procedure Setfone(const Value: string);
    procedure Setemail(const Value: string);
    procedure Setendereco(const Value: TRpsDadosTomadorEndereco);
  public
    destructor Destroy; override;
    /// <summary>
    /// CPF ou CNPJ do tomador/destinatário.
    /// </summary>
    property cpf_cnpj: string read Fcpf_cnpj write Setcpf_cnpj;
    property cpf_cnpjHasValue: Boolean read Fcpf_cnpjHasValue write Fcpf_cnpjHasValue;
    /// <summary>
    /// Inscrição Municipal do tomador/destinatário.
    /// </summary>
    property inscricao_municipal: string read Finscricao_municipal write Setinscricao_municipal;
    property inscricao_municipalHasValue: Boolean read Finscricao_municipalHasValue write Finscricao_municipalHasValue;
    /// <summary>
    /// Nome ou Razão Social do tomador/destinatário.
    /// </summary>
    property nome_razao_social: string read Fnome_razao_social write Fnome_razao_social;
    /// <summary>
    /// Telefone do tomador/destinatário.
    /// </summary>
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    /// <summary>
    /// Email do tomador/destinatário.
    /// </summary>
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
    /// <summary>
    /// Endereço do tomador/destinatário.
    /// </summary>
    property endereco: TRpsDadosTomadorEndereco read Fendereco write Setendereco;
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
    /// <summary>
    /// Valor unitário do serviço.
    /// </summary>
    property valor_unitario: Double read Fvalor_unitario write Fvalor_unitario;
    /// <summary>
    /// Valor total do serviço.
    /// </summary>
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
    Fcodigo_cnae: string;
    Fcodigo_cnaeHasValue: Boolean;
    Fcodigo_tributacao_municipio: string;
    Fcodigo_tributacao_municipioHasValue: Boolean;
    Fdiscriminacao: string;
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
    procedure Setcodigo_cnae(const Value: string);
    procedure Setcodigo_tributacao_municipio(const Value: string);
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Reter ISSQN.
    /// Valor padrão: `false`
    /// </summary>
    property iss_retido: Boolean read Fiss_retido write Setiss_retido;
    property iss_retidoHasValue: Boolean read Fiss_retidoHasValue write Fiss_retidoHasValue;
    /// <summary>
    /// Responsável pela retenção:
    /// 0 - Prestador;
    /// 1 - Tomador;
    /// 2 - Intermediário.
    /// 
    /// Valor padrão: `0`
    /// </summary>
    property responsavel_retencao: Integer read Fresponsavel_retencao write Setresponsavel_retencao;
    property responsavel_retencaoHasValue: Boolean read Fresponsavel_retencaoHasValue write Fresponsavel_retencaoHasValue;
    /// <summary>
    /// Código do item da lista de serviço, geralmente segue a LC116, podendo variar de acordo com a prefeitura.
    /// 
    /// Você pode encontrar esse dado no portal da prefeitura, em uma nota emitida ou junto ao contador.
    /// </summary>
    property item_lista_servico: string read Fitem_lista_servico write Fitem_lista_servico;
    /// <summary>
    /// Código CNAE (Classificação Nacional de Atividades Econômicas).
    /// </summary>
    property codigo_cnae: string read Fcodigo_cnae write Setcodigo_cnae;
    property codigo_cnaeHasValue: Boolean read Fcodigo_cnaeHasValue write Fcodigo_cnaeHasValue;
    /// <summary>
    /// Código de tributação do município.
    /// </summary>
    property codigo_tributacao_municipio: string read Fcodigo_tributacao_municipio write Setcodigo_tributacao_municipio;
    property codigo_tributacao_municipioHasValue: Boolean read Fcodigo_tributacao_municipioHasValue write Fcodigo_tributacao_municipioHasValue;
    /// <summary>
    /// Detalhamento do serviço prestado.
    /// </summary>
    property discriminacao: string read Fdiscriminacao write Fdiscriminacao;
    /// <summary>
    /// Código IBGE do município de prestação do serviço.
    /// Caso não informado, será considerado o município do prestador.
    /// </summary>
    property codigo_municipio: string read Fcodigo_municipio write Setcodigo_municipio;
    property codigo_municipioHasValue: Boolean read Fcodigo_municipioHasValue write Fcodigo_municipioHasValue;
    /// <summary>
    /// Código do país de prestação do serviço.
    /// </summary>
    property codigo_pais: string read Fcodigo_pais write Setcodigo_pais;
    property codigo_paisHasValue: Boolean read Fcodigo_paisHasValue write Fcodigo_paisHasValue;
    /// <summary>
    /// Tipo de Tributação do Serviço:
    /// 1 - Isento de ISS
    /// 2 - Imune
    /// 3 - Não Incidência no Município
    /// 4 - Não Tributável
    /// 5 - Retido
    /// 6 - Tributável Dentro do Município
    /// 7 - Tributável Fora do Município
    /// 8 - Tributável Dentro do Município pelo tomador
    /// 
    /// Valor padrão: `6`
    /// </summary>
    property tipo_tributacao: Integer read Ftipo_tributacao write Settipo_tributacao;
    property tipo_tributacaoHasValue: Boolean read Ftipo_tributacaoHasValue write Ftipo_tributacaoHasValue;
    /// <summary>
    /// Exigibilidade do ISS:
    /// 1 - Exigível
    /// 2 - Não Incidência
    /// 3 - Isenção
    /// 4 - Exportação
    /// 5 - Imunidade
    /// 6 - Suspenso por Decisão Judicial
    /// 7 - Suspenso por Processo Administrativo
    /// 
    /// Valor padrão: `1`
    /// </summary>
    property exigibilidade_iss: Integer read Fexigibilidade_iss write Setexigibilidade_iss;
    property exigibilidade_issHasValue: Boolean read Fexigibilidade_issHasValue write Fexigibilidade_issHasValue;
    /// <summary>
    /// Código IBGE do município de incidência do ISSQN.
    /// </summary>
    property codigo_municipio_incidencia: string read Fcodigo_municipio_incidencia write Setcodigo_municipio_incidencia;
    property codigo_municipio_incidenciaHasValue: Boolean read Fcodigo_municipio_incidenciaHasValue write Fcodigo_municipio_incidenciaHasValue;
    /// <summary>
    /// Número do Processo de Suspensão da Exigibilidade.
    /// </summary>
    property numero_processo: string read Fnumero_processo write Setnumero_processo;
    property numero_processoHasValue: Boolean read Fnumero_processoHasValue write Fnumero_processoHasValue;
    /// <summary>
    /// Unidade do serviço prestado.
    /// </summary>
    property unidade: string read Funidade write Setunidade;
    property unidadeHasValue: Boolean read FunidadeHasValue write FunidadeHasValue;
    /// <summary>
    /// Quantidade dos serviços prestados.
    /// Valor padrão: `1`
    /// </summary>
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Seu identificador único para este documento. Opcional, ajuda a evitar o envio duplicado de um mesmo documento.
    /// </summary>
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
    /// <summary>
    /// Data e Hora de Emissão do RPS, no formato AAAA-MM-DDTHH:MM:SSTZD.
    /// Caso não informado, será considerada a data/hora da requisição à API da Nuvem Fiscal.
    /// </summary>
    property data_emissao: TDateTime read Fdata_emissao write Setdata_emissao;
    property data_emissaoHasValue: Boolean read Fdata_emissaoHasValue write Fdata_emissaoHasValue;
    /// <summary>
    /// Competência do RPS, no formato AAAA-MM-DD.
    /// Caso não informado, será considerada a data da requisição à API da Nuvem Fiscal.
    /// </summary>
    property competencia: TDate read Fcompetencia write Setcompetencia;
    property competenciaHasValue: Boolean read FcompetenciaHasValue write FcompetenciaHasValue;
    /// <summary>
    /// Natureza da tributação:
    /// 1 - Simples Nacional;
    /// 2 - Fixo;
    /// 3 - Depósito em juízo;
    /// 4 - Exigibilidade suspensa por decisão judicial;
    /// 5 - Exigibilidade suspensa por procedimento administrativo;
    /// 6 - Isenção parcial.
    /// </summary>
    property natureza_tributacao: Integer read Fnatureza_tributacao write Setnatureza_tributacao;
    property natureza_tributacaoHasValue: Boolean read Fnatureza_tributacaoHasValue write Fnatureza_tributacaoHasValue;
    /// <summary>
    /// Dados da empresa emitente.
    /// </summary>
    property prestador: TRpsIdentificacaoPrestador read Fprestador write Setprestador;
    /// <summary>
    /// Dados do tomador/destinatário.
    /// </summary>
    property tomador: TRpsDadosTomador read Ftomador write Settomador;
    /// <summary>
    /// Dados do íntermediário.
    /// </summary>
    property intermediario: TRpsDadosIntermediario read Fintermediario write Setintermediario;
    property construcao_civil: TRpsDadosConstrucaoCivil read Fconstrucao_civil write Setconstrucao_civil;
    property servicos: TRpsDadosServicoList read Fservicos write Setservicos;
  end;
  
  TRpsPedidoEmissaoList = class(TObjectList<TRpsPedidoEmissao>)
  end;
  
  TRpsPedidoEmissaoLote = class
  private
    Fambiente: string;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    Flista_rps: TRpsPedidoEmissaoList;
    procedure Setreferencia(const Value: string);
    procedure Setlista_rps(const Value: TRpsPedidoEmissaoList);
  public
    destructor Destroy; override;
    /// <summary>
    /// Identificação do Ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Fambiente;
    /// <summary>
    /// Seu identificador único para este documento. Opcional, ajuda a evitar o envio duplicado de um mesmo documento.
    /// </summary>
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
    constructor Create;
    destructor Destroy; override;
    property rps: TRpsDados read Frps write Setrps;
    property competencia: TDate read Fcompetencia write Setcompetencia;
    property competenciaHasValue: Boolean read FcompetenciaHasValue write FcompetenciaHasValue;
    /// <summary>
    /// Natureza da tributação
    /// 1 - Simples Nacional;
    /// 2 - Fixo;
    /// 3 - Depósito em juízo;
    /// 4 - Exigibilidade suspensa por decisão judicial;
    /// 5 - Exigibilidade suspensa por procedimento administrativo;
    /// 6 - Isenção parcial.
    /// </summary>
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
    Fcodigo: string;
    FcodigoHasValue: Boolean;
    Fmotivo: string;
    FmotivoHasValue: Boolean;
    Fdata_hora: TDateTime;
    Fdata_horaHasValue: Boolean;
    Fmensagens: TNfseMensagemRetornoList;
    procedure Setid(const Value: string);
    procedure Setstatus(const Value: string);
    procedure Setcodigo(const Value: string);
    procedure Setmotivo(const Value: string);
    procedure Setdata_hora(const Value: TDateTime);
    procedure Setmensagens(const Value: TNfseMensagemRetornoList);
  public
    destructor Destroy; override;
    /// <summary>
    /// ID único do cancelamento gerado automaticamente pela Nuvem Fiscal.
    /// </summary>
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    property motivo: string read Fmotivo write Setmotivo;
    property motivoHasValue: Boolean read FmotivoHasValue write FmotivoHasValue;
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
    /// <summary>
    /// ID único da nota gerado automaticamente pela Nuvem Fiscal.
    /// </summary>
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
    /// <summary>
    /// ID único do lote gerado automaticamente pela Nuvem Fiscal.
    /// </summary>
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
  
  TDps = class
  private
    Fid: string;
    FidHasValue: Boolean;
    Fnumero: string;
    FnumeroHasValue: Boolean;
    Fserie: string;
    FserieHasValue: Boolean;
    procedure Setid(const Value: string);
    procedure Setnumero(const Value: string);
    procedure Setserie(const Value: string);
  public
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property numero: string read Fnumero write Setnumero;
    property numeroHasValue: Boolean read FnumeroHasValue write FnumeroHasValue;
    property serie: string read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
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
    Frps: TRpsPedidoEmissao;
    procedure Setrps(const Value: TRpsPedidoEmissao);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Identificação do Ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Fambiente;
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
  
  TNfsePedidoCancelamento = class
  private
    Fcodigo: string;
    FcodigoHasValue: Boolean;
    Fmotivo: string;
    FmotivoHasValue: Boolean;
    procedure Setcodigo(const Value: string);
    procedure Setmotivo(const Value: string);
  public
    /// <summary>
    /// Código de cancelamento, exigido por algumas prefeituras.
    /// Para saber quais valores são aceitos, consulte o manual da prefeitura.
    /// </summary>
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    /// <summary>
    /// Motivo de cancelamento, exigido por algumas prefeituras.
    /// </summary>
    property motivo: string read Fmotivo write Setmotivo;
    property motivoHasValue: Boolean read FmotivoHasValue write FmotivoHasValue;
  end;
  
  TContaCota = class
  private
    Fnome: string;
    FnomeHasValue: Boolean;
    Fconsumo: Integer;
    FconsumoHasValue: Boolean;
    Flimite: Integer;
    FlimiteHasValue: Boolean;
    procedure Setnome(const Value: string);
    procedure Setconsumo(const Value: Integer);
    procedure Setlimite(const Value: Integer);
  public
    property nome: string read Fnome write Setnome;
    property nomeHasValue: Boolean read FnomeHasValue write FnomeHasValue;
    property consumo: Integer read Fconsumo write Setconsumo;
    property consumoHasValue: Boolean read FconsumoHasValue write FconsumoHasValue;
    property limite: Integer read Flimite write Setlimite;
    property limiteHasValue: Boolean read FlimiteHasValue write FlimiteHasValue;
  end;
  
  TContaCotaList = class(TObjectList<TContaCota>)
  end;
  
  TContaCotaListagem = class
  private
    F_count: Integer;
    F_countHasValue: Boolean;
    Fdata: TContaCotaList;
    procedure Set_count(const Value: Integer);
    procedure Setdata(const Value: TContaCotaList);
  public
    destructor Destroy; override;
    property _count: Integer read F_count write Set_count;
    property _countHasValue: Boolean read F_countHasValue write F_countHasValue;
    property data: TContaCotaList read Fdata write Setdata;
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
    /// <summary>
    /// SEFAZ autorizadora responsável.
    /// </summary>
    property autorizador: string read Fautorizador write Setautorizador;
    property autorizadorHasValue: Boolean read FautorizadorHasValue write FautorizadorHasValue;
    /// <summary>
    /// Identificação do Ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    /// <summary>
    /// Data e hora da consulta.
    /// </summary>
    property data_hora_consulta: TDateTime read Fdata_hora_consulta write Setdata_hora_consulta;
    property data_hora_consultaHasValue: Boolean read Fdata_hora_consultaHasValue write Fdata_hora_consultaHasValue;
    /// <summary>
    /// Código do status da mensagem enviada.
    /// </summary>
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    /// <summary>
    /// Descrição literal do status do serviço solicitado.
    /// </summary>
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    /// <summary>
    /// Tempo médio de resposta do serviço (em segundos) dos últimos 5 minutos.
    /// </summary>
    property tempo_medio_resposta: Integer read Ftempo_medio_resposta write Settempo_medio_resposta;
    property tempo_medio_respostaHasValue: Boolean read Ftempo_medio_respostaHasValue write Ftempo_medio_respostaHasValue;
    /// <summary>
    /// Data e hora prevista para o retorno dos serviços prestados.
    /// </summary>
    property data_hora_retorno: TDateTime read Fdata_hora_retorno write Setdata_hora_retorno;
    property data_hora_retornoHasValue: Boolean read Fdata_hora_retornoHasValue write Fdata_hora_retornoHasValue;
  end;
  
  TCteSefazToma3 = class
  private
    Ftoma: Integer;
  public
    /// <summary>
    /// Tomador do Serviço.
    /// Preencher com:
    /// 															0-Remetente;
    /// 															1-Expedidor;
    /// 															2-Recebedor;
    /// 															3-Destinatário
    /// 															Serão utilizadas as informações contidas no respectivo grupo, conforme indicado pelo conteúdo deste campo.
    /// </summary>
    property toma: Integer read Ftoma write Ftoma;
  end;
  
  TCteSefazEndereco = class
  private
    FxLgr: string;
    Fnro: string;
    FxCpl: string;
    FxCplHasValue: Boolean;
    FxBairro: string;
    FcMun: string;
    FxMun: string;
    FCEP: string;
    FCEPHasValue: Boolean;
    FUF: string;
    FcPais: string;
    FcPaisHasValue: Boolean;
    FxPais: string;
    FxPaisHasValue: Boolean;
    procedure SetxCpl(const Value: string);
    procedure SetCEP(const Value: string);
    procedure SetcPais(const Value: string);
    procedure SetxPais(const Value: string);
  public
    /// <summary>
    /// Logradouro.
    /// </summary>
    property xLgr: string read FxLgr write FxLgr;
    /// <summary>
    /// Número.
    /// </summary>
    property nro: string read Fnro write Fnro;
    /// <summary>
    /// Complemento.
    /// </summary>
    property xCpl: string read FxCpl write SetxCpl;
    property xCplHasValue: Boolean read FxCplHasValue write FxCplHasValue;
    /// <summary>
    /// Bairro.
    /// </summary>
    property xBairro: string read FxBairro write FxBairro;
    /// <summary>
    /// Código do município (utilizar a tabela do IBGE).
    /// Informar 9999999 para operações com o exterior.
    /// </summary>
    property cMun: string read FcMun write FcMun;
    /// <summary>
    /// Nome do município.
    /// Informar EXTERIOR para operações com o exterior.
    /// </summary>
    property xMun: string read FxMun write FxMun;
    /// <summary>
    /// CEP.
    /// Informar os zeros não significativos.
    /// </summary>
    property CEP: string read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    /// <summary>
    /// Sigla da UF.
    /// Informar EX para operações com o exterior.
    /// </summary>
    property UF: string read FUF write FUF;
    /// <summary>
    /// Código do país.
    /// Utilizar a tabela do BACEN.
    /// </summary>
    property cPais: string read FcPais write SetcPais;
    property cPaisHasValue: Boolean read FcPaisHasValue write FcPaisHasValue;
    /// <summary>
    /// Nome do país.
    /// </summary>
    property xPais: string read FxPais write SetxPais;
    property xPaisHasValue: Boolean read FxPaisHasValue write FxPaisHasValue;
  end;
  
  TCteSefazToma4 = class
  private
    Ftoma: Integer;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FxNome: string;
    FxFant: string;
    FxFantHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    FenderToma: TCteSefazEndereco;
    Femail: string;
    FemailHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetxFant(const Value: string);
    procedure Setfone(const Value: string);
    procedure SetenderToma(const Value: TCteSefazEndereco);
    procedure Setemail(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Tomador do Serviço.
    /// Preencher com: 
    /// 															4 - Outros
    /// 															Obs: Informar os dados cadastrais do tomador do serviço.
    /// </summary>
    property toma: Integer read Ftoma write Ftoma;
    /// <summary>
    /// Número do CNPJ.
    /// Em caso de empresa não estabelecida no Brasil, será informado o CNPJ com zeros.															
    /// Informar os zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Número do CPF.
    /// Informar os zeros não significativos.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Inscrição Estadual.
    /// Informar a IE do tomador ou ISENTO se tomador é contribuinte do ICMS isento de inscrição no cadastro de contribuintes do ICMS. Caso o tomador não seja contribuinte do ICMS não informar o conteúdo.
    /// </summary>
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    /// <summary>
    /// Razão Social ou Nome.
    /// </summary>
    property xNome: string read FxNome write FxNome;
    /// <summary>
    /// Nome Fantasia.
    /// </summary>
    property xFant: string read FxFant write SetxFant;
    property xFantHasValue: Boolean read FxFantHasValue write FxFantHasValue;
    /// <summary>
    /// Telefone.
    /// </summary>
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    /// <summary>
    /// Dados do endereço.
    /// </summary>
    property enderToma: TCteSefazEndereco read FenderToma write SetenderToma;
    /// <summary>
    /// Endereço de email.
    /// </summary>
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
  end;
  
  TCteSefazIde = class
  private
    FcUF: Integer;
    FcCT: string;
    FcCTHasValue: Boolean;
    FCFOP: string;
    FnatOp: string;
    Fmod: Integer;
    FmodHasValue: Boolean;
    Fserie: Integer;
    FnCT: Integer;
    FdhEmi: TDateTime;
    FtpImp: Integer;
    FtpEmis: Integer;
    FcDV: Integer;
    FcDVHasValue: Boolean;
    FtpAmb: Integer;
    FtpAmbHasValue: Boolean;
    FtpCTe: Integer;
    FprocEmi: Integer;
    FverProc: string;
    FindGlobalizado: Integer;
    FindGlobalizadoHasValue: Boolean;
    FcMunEnv: string;
    FxMunEnv: string;
    FUFEnv: string;
    Fmodal: string;
    FtpServ: Integer;
    FcMunIni: string;
    FxMunIni: string;
    FUFIni: string;
    FcMunFim: string;
    FxMunFim: string;
    FUFFim: string;
    Fretira: Integer;
    FxDetRetira: string;
    FxDetRetiraHasValue: Boolean;
    FindIEToma: Integer;
    Ftoma3: TCteSefazToma3;
    Ftoma4: TCteSefazToma4;
    FdhCont: TDateTime;
    FdhContHasValue: Boolean;
    FxJust: string;
    FxJustHasValue: Boolean;
    procedure SetcCT(const Value: string);
    procedure Setmod(const Value: Integer);
    procedure SetcDV(const Value: Integer);
    procedure SettpAmb(const Value: Integer);
    procedure SetindGlobalizado(const Value: Integer);
    procedure SetxDetRetira(const Value: string);
    procedure Settoma3(const Value: TCteSefazToma3);
    procedure Settoma4(const Value: TCteSefazToma4);
    procedure SetdhCont(const Value: TDateTime);
    procedure SetxJust(const Value: string);
  public
    destructor Destroy; override;
    /// <summary>
    /// Código da UF do emitente do CT-e.
    /// Utilizar a Tabela do IBGE.
    /// </summary>
    property cUF: Integer read FcUF write FcUF;
    /// <summary>
    /// Código numérico que compõe a Chave de Acesso.
    /// Número aleatório gerado pelo emitente para cada CT-e, com o objetivo de evitar acessos indevidos ao documento.
    /// Geramos automaticamente quando nenhum valor é informado.
    /// </summary>
    property cCT: string read FcCT write SetcCT;
    property cCTHasValue: Boolean read FcCTHasValue write FcCTHasValue;
    /// <summary>
    /// Código Fiscal de Operações e Prestações.
    /// </summary>
    property CFOP: string read FCFOP write FCFOP;
    /// <summary>
    /// Natureza da Operação.
    /// </summary>
    property natOp: string read FnatOp write FnatOp;
    /// <summary>
    /// Modelo do documento fiscal.
    /// Utilizar o código 57 para identificação do CT-e, emitido em substituição aos modelos de conhecimentos em papel.
    /// </summary>
    property &mod: Integer read Fmod write Setmod;
    property &modHasValue: Boolean read FmodHasValue write FmodHasValue;
    /// <summary>
    /// Série do CT-e.
    /// Preencher com "0" no caso de série única.
    /// </summary>
    property serie: Integer read Fserie write Fserie;
    /// <summary>
    /// Número do CT-e.
    /// </summary>
    property nCT: Integer read FnCT write FnCT;
    /// <summary>
    /// Data e hora de emissão do CT-e.
    /// Formato AAAA-MM-DDTHH:MM:DD TZD.
    /// </summary>
    property dhEmi: TDateTime read FdhEmi write FdhEmi;
    /// <summary>
    /// Formato de impressão do DACTE.
    /// Preencher com: 1 - Retrato; 2 - Paisagem.
    /// </summary>
    property tpImp: Integer read FtpImp write FtpImp;
    /// <summary>
    /// Forma de emissão do CT-e.
    /// Preencher com:
    /// 1 - Normal;
    ///  3-Regime Especial NFF;  4-EPEC pela SVC; 5 - Contingência FSDA;
    /// 	7 - Autorização pela SVC-RS;
    ///   8 - Autorização pela SVC-SP.
    /// </summary>
    property tpEmis: Integer read FtpEmis write FtpEmis;
    /// <summary>
    /// Digito Verificador da chave de acesso do CT-e.
    /// Informar o dígito  de controle da chave de acesso do CT-e, que deve ser calculado com a aplicação do algoritmo módulo 11 (base 2,9) da chave de acesso.
    /// Geramos automaticamente quando nenhum valor é informado.
    /// </summary>
    property cDV: Integer read FcDV write SetcDV;
    property cDVHasValue: Boolean read FcDVHasValue write FcDVHasValue;
    /// <summary>
    /// Tipo do Ambiente.
    /// Preencher com:1 - Produção; 2 - Homologação.
    /// </summary>
    property tpAmb: Integer read FtpAmb write SettpAmb;
    property tpAmbHasValue: Boolean read FtpAmbHasValue write FtpAmbHasValue;
    /// <summary>
    /// Tipo do CT-e.
    /// Preencher com:
    /// 	0 - CT-e Normal;
    ///  1 - CT-e de Complemento de Valores;	2 - CT-e de Anulação;
    ///  3 - CT-e de Substituição.
    /// </summary>
    property tpCTe: Integer read FtpCTe write FtpCTe;
    /// <summary>
    /// Identificador do processo de emissão do CT-e.
    /// Preencher com: 
    /// 											0 - emissão de CT-e com aplicativo do contribuinte;
    /// 											3- emissão CT-e pelo contribuinte com aplicativo fornecido pelo SEBRAE.
    /// </summary>
    property procEmi: Integer read FprocEmi write FprocEmi;
    /// <summary>
    /// Versão do processo de emissão.
    /// Iinformar a versão do aplicativo emissor de CT-e.
    /// </summary>
    property verProc: string read FverProc write FverProc;
    /// <summary>
    /// Indicador de CT-e Globalizado.
    /// Informar valor 1 quando for Globalizado e não informar a tag quando não tratar de CT-e Globalizado.
    /// </summary>
    property indGlobalizado: Integer read FindGlobalizado write SetindGlobalizado;
    property indGlobalizadoHasValue: Boolean read FindGlobalizadoHasValue write FindGlobalizadoHasValue;
    /// <summary>
    /// Código do Município de envio do CT-e (de onde o documento foi transmitido).
    /// Utilizar a tabela do IBGE. Informar 9999999 para as operações com o exterior.
    /// </summary>
    property cMunEnv: string read FcMunEnv write FcMunEnv;
    /// <summary>
    /// Nome do Município de envio do CT-e (de onde o documento foi transmitido).
    /// Informar PAIS/Municipio para as operações com o exterior.
    /// </summary>
    property xMunEnv: string read FxMunEnv write FxMunEnv;
    /// <summary>
    /// Sigla da UF de envio do CT-e (de onde o documento foi transmitido).
    /// Informar 'EX' para operações com o exterior.
    /// </summary>
    property UFEnv: string read FUFEnv write FUFEnv;
    /// <summary>
    /// Modal.
    /// Preencher com:01-Rodoviário;
    /// 02-Aéreo;03-Aquaviário;04-Ferroviário;05-Dutoviário;06-Multimodal;.
    /// </summary>
    property modal: string read Fmodal write Fmodal;
    /// <summary>
    /// Tipo do Serviço.
    /// Preencher com: 
    /// 0 - Normal;1 - Subcontratação;
    /// 2 - Redespacho;3 - Redespacho Intermediário; 4 - Serviço Vinculado a Multimodal.
    /// </summary>
    property tpServ: Integer read FtpServ write FtpServ;
    /// <summary>
    /// Código do Município de início da prestação.
    /// Utilizar a tabela do IBGE. Informar 9999999 para operações com o exterior.
    /// </summary>
    property cMunIni: string read FcMunIni write FcMunIni;
    /// <summary>
    /// Nome do Município do início da prestação.
    /// Informar 'EXTERIOR' para operações com o exterior.
    /// </summary>
    property xMunIni: string read FxMunIni write FxMunIni;
    /// <summary>
    /// UF do início da prestação.
    /// Informar 'EX' para operações com o exterior.
    /// </summary>
    property UFIni: string read FUFIni write FUFIni;
    /// <summary>
    /// Código do Município de término da prestação.
    /// Utilizar a tabela do IBGE. Informar 9999999 para operações com o exterior.
    /// </summary>
    property cMunFim: string read FcMunFim write FcMunFim;
    /// <summary>
    /// Nome do Município do término da prestação.
    /// Informar 'EXTERIOR' para operações com o exterior.
    /// </summary>
    property xMunFim: string read FxMunFim write FxMunFim;
    /// <summary>
    /// UF do término da prestação.
    /// Informar 'EX' para operações com o exterior.
    /// </summary>
    property UFFim: string read FUFFim write FUFFim;
    /// <summary>
    /// Indicador se o Recebedor retira no Aeroporto, Filial, Porto ou Estação de Destino?.
    /// Preencher com: 0 - sim; 1 - não.
    /// </summary>
    property retira: Integer read Fretira write Fretira;
    /// <summary>
    /// Detalhes do retira.
    /// </summary>
    property xDetRetira: string read FxDetRetira write SetxDetRetira;
    property xDetRetiraHasValue: Boolean read FxDetRetiraHasValue write FxDetRetiraHasValue;
    /// <summary>
    /// Indicador do papel do tomador na prestação do serviço:
    /// 1 – Contribuinte ICMS;
    /// 2 – Contribuinte isento de inscrição;
    /// 9 – Não Contribuinte.
    /// Aplica-se ao tomador que for indicado no toma3 ou toma4.
    /// </summary>
    property indIEToma: Integer read FindIEToma write FindIEToma;
    /// <summary>
    /// Indicador do "papel" do tomador do serviço no CT-e.
    /// </summary>
    property toma3: TCteSefazToma3 read Ftoma3 write Settoma3;
    /// <summary>
    /// Indicador do "papel" do tomador do serviço no CT-e.
    /// </summary>
    property toma4: TCteSefazToma4 read Ftoma4 write Settoma4;
    /// <summary>
    /// Data e Hora da entrada em contingência.
    /// Informar a data e hora no formato AAAA-MM-DDTHH:MM:SS.
    /// </summary>
    property dhCont: TDateTime read FdhCont write SetdhCont;
    property dhContHasValue: Boolean read FdhContHasValue write FdhContHasValue;
    /// <summary>
    /// Justificativa da entrada em contingência.
    /// </summary>
    property xJust: string read FxJust write SetxJust;
    property xJustHasValue: Boolean read FxJustHasValue write FxJustHasValue;
  end;
  
  TCteSefazPass = class
  private
    FxPass: string;
    FxPassHasValue: Boolean;
    procedure SetxPass(const Value: string);
  public
    /// <summary>
    /// Sigla ou código interno da Filial/Porto/Estação/Aeroporto de Passagem.
    /// Observação para o modal aéreo:
    /// 																	- O código de três letras IATA, referente ao aeroporto de transferência, deverá ser incluído, quando for o caso. Quando não for possível,  utilizar a sigla OACI. Qualquer solicitação de itinerário deverá ser incluída.
    /// </summary>
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
    /// <summary>
    /// Sigla ou código interno da Filial/Porto/Estação/ Aeroporto de Origem.
    /// Observações para o modal aéreo:
    /// 														- Preenchimento obrigatório para o modal aéreo.
    /// 														- O código de três letras IATA do aeroporto de partida deverá ser incluído como primeira anotação. Quando não for possível, utilizar a sigla OACI.
    /// </summary>
    property xOrig: string read FxOrig write SetxOrig;
    property xOrigHasValue: Boolean read FxOrigHasValue write FxOrigHasValue;
    property pass: TCteSefazPassList read Fpass write Setpass;
    /// <summary>
    /// Sigla ou código interno da Filial/Porto/Estação/Aeroporto de Destino.
    /// Observações para o modal aéreo:
    /// 														- Preenchimento obrigatório para o modal aéreo.
    /// 														- Deverá ser incluído o código de três letras IATA do aeroporto de destino. Quando não for possível, utilizar a sigla OACI.
    /// </summary>
    property xDest: string read FxDest write SetxDest;
    property xDestHasValue: Boolean read FxDestHasValue write FxDestHasValue;
    /// <summary>
    /// Código da Rota de Entrega.
    /// </summary>
    property xRota: string read FxRota write SetxRota;
    property xRotaHasValue: Boolean read FxRotaHasValue write FxRotaHasValue;
  end;
  
  TCteSefazSemData = class
  private
    FtpPer: Integer;
  public
    /// <summary>
    /// Tipo de data/período programado para entrega.
    /// 0- Sem data definida.
    /// </summary>
    property tpPer: Integer read FtpPer write FtpPer;
  end;
  
  TCteSefazComData = class
  private
    FtpPer: Integer;
    FdProg: TDate;
  public
    /// <summary>
    /// Tipo de data/período programado para entrega.
    /// Preencher com:
    /// 																		1-Na data;
    /// 																		2-Até a data;
    /// 																		3-A partir da data.
    /// </summary>
    property tpPer: Integer read FtpPer write FtpPer;
    /// <summary>
    /// Data programada.
    /// Formato AAAA-MM-DD.
    /// </summary>
    property dProg: TDate read FdProg write FdProg;
  end;
  
  TCteSefazNoPeriodo = class
  private
    FtpPer: Integer;
    FdIni: TDate;
    FdFim: TDate;
  public
    /// <summary>
    /// Tipo período.
    /// 4-no período.
    /// </summary>
    property tpPer: Integer read FtpPer write FtpPer;
    /// <summary>
    /// Data inicial.
    /// Formato AAAA-MM-DD.
    /// </summary>
    property dIni: TDate read FdIni write FdIni;
    /// <summary>
    /// Data final.
    /// Formato AAAA-MM-DD.
    /// </summary>
    property dFim: TDate read FdFim write FdFim;
  end;
  
  TCteSefazSemHora = class
  private
    FtpHor: Integer;
  public
    /// <summary>
    /// Tipo de hora.
    /// 0- Sem hora definida.
    /// </summary>
    property tpHor: Integer read FtpHor write FtpHor;
  end;
  
  TCteSefazComHora = class
  private
    FtpHor: Integer;
    FhProg: string;
  public
    /// <summary>
    /// Tipo de hora.
    /// Preencher com:
    /// 																		1 - No horário;
    /// 																		2 - Até o horário;
    /// 																		3 - A partir do horário.
    /// </summary>
    property tpHor: Integer read FtpHor write FtpHor;
    /// <summary>
    /// Hora programada.
    /// Formato HH:MM:SS.
    /// </summary>
    property hProg: string read FhProg write FhProg;
  end;
  
  TCteSefazNoInter = class
  private
    FtpHor: Integer;
    FhIni: string;
    FhFim: string;
  public
    /// <summary>
    /// Tipo de hora.
    /// 4 - No intervalo de tempo.
    /// </summary>
    property tpHor: Integer read FtpHor write FtpHor;
    /// <summary>
    /// Hora inicial.
    /// Formato HH:MM:SS.
    /// </summary>
    property hIni: string read FhIni write FhIni;
    /// <summary>
    /// Hora final.
    /// Formato HH:MM:SS.
    /// </summary>
    property hFim: string read FhFim write FhFim;
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
    /// <summary>
    /// Entrega sem data definida.
    /// Esta opção é proibida para o modal aéreo.
    /// </summary>
    property semData: TCteSefazSemData read FsemData write SetsemData;
    /// <summary>
    /// Entrega com data definida.
    /// </summary>
    property comData: TCteSefazComData read FcomData write SetcomData;
    /// <summary>
    /// Entrega no período definido.
    /// </summary>
    property noPeriodo: TCteSefazNoPeriodo read FnoPeriodo write SetnoPeriodo;
    /// <summary>
    /// Entrega sem hora definida.
    /// </summary>
    property semHora: TCteSefazSemHora read FsemHora write SetsemHora;
    /// <summary>
    /// Entrega com hora definida.
    /// </summary>
    property comHora: TCteSefazComHora read FcomHora write SetcomHora;
    /// <summary>
    /// Entrega no intervalo de horário definido.
    /// </summary>
    property noInter: TCteSefazNoInter read FnoInter write SetnoInter;
  end;
  
  TCteSefazObsCont = class
  private
    FxCampo: string;
    FxTexto: string;
  public
    /// <summary>
    /// Identificação do campo.
    /// </summary>
    property xCampo: string read FxCampo write FxCampo;
    /// <summary>
    /// Conteúdo do campo.
    /// </summary>
    property xTexto: string read FxTexto write FxTexto;
  end;
  
  TCteSefazObsContList = class(TObjectList<TCteSefazObsCont>)
  end;
  
  TCteSefazObsFisco = class
  private
    FxCampo: string;
    FxTexto: string;
  public
    /// <summary>
    /// Identificação do campo.
    /// </summary>
    property xCampo: string read FxCampo write FxCampo;
    /// <summary>
    /// Conteúdo do campo.
    /// </summary>
    property xTexto: string read FxTexto write FxTexto;
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
    /// <summary>
    /// Característica adicional do transporte.
    /// Texto livre:
    /// REENTREGA; DEVOLUÇÃO; REFATURAMENTO; etc.
    /// </summary>
    property xCaracAd: string read FxCaracAd write SetxCaracAd;
    property xCaracAdHasValue: Boolean read FxCaracAdHasValue write FxCaracAdHasValue;
    /// <summary>
    /// Característica adicional do serviço.
    /// Texto livre:
    /// 											ENTREGA EXPRESSA; LOGÍSTICA REVERSA; CONVENCIONAL; EMERGENCIAL; etc.
    /// </summary>
    property xCaracSer: string read FxCaracSer write SetxCaracSer;
    property xCaracSerHasValue: Boolean read FxCaracSerHasValue write FxCaracSerHasValue;
    /// <summary>
    /// Funcionário emissor do CTe.
    /// </summary>
    property xEmi: string read FxEmi write SetxEmi;
    property xEmiHasValue: Boolean read FxEmiHasValue write FxEmiHasValue;
    /// <summary>
    /// Previsão do fluxo da carga.
    /// Preenchimento obrigatório para o modal aéreo.
    /// </summary>
    property fluxo: TCteSefazFluxo read Ffluxo write Setfluxo;
    /// <summary>
    /// Informações ref. a previsão de entrega.
    /// </summary>
    property Entrega: TCteSefazEntrega read FEntrega write SetEntrega;
    /// <summary>
    /// Município de origem para efeito de cálculo do frete.
    /// </summary>
    property origCalc: string read ForigCalc write SetorigCalc;
    property origCalcHasValue: Boolean read ForigCalcHasValue write ForigCalcHasValue;
    /// <summary>
    /// Município de destino para efeito de cálculo do frete.
    /// </summary>
    property destCalc: string read FdestCalc write SetdestCalc;
    property destCalcHasValue: Boolean read FdestCalcHasValue write FdestCalcHasValue;
    /// <summary>
    /// Observações Gerais.
    /// </summary>
    property xObs: string read FxObs write SetxObs;
    property xObsHasValue: Boolean read FxObsHasValue write FxObsHasValue;
    /// <summary>
    /// Campo de uso livre do contribuinte.
    /// Informar o nome do campo no atributo xCampo e o conteúdo do campo no XTexto.
    /// </summary>
    property ObsCont: TCteSefazObsContList read FObsCont write SetObsCont;
    /// <summary>
    /// Campo de uso livre do contribuinte.
    /// Informar o nome do campo no atributo xCampo e o conteúdo do campo no XTexto.
    /// </summary>
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
    FcMun: string;
    FcMunHasValue: Boolean;
    FxMun: string;
    FxMunHasValue: Boolean;
    FCEP: string;
    FCEPHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    procedure SetxLgr(const Value: string);
    procedure Setnro(const Value: string);
    procedure SetxCpl(const Value: string);
    procedure SetxBairro(const Value: string);
    procedure SetcMun(const Value: string);
    procedure SetxMun(const Value: string);
    procedure SetCEP(const Value: string);
    procedure SetUF(const Value: string);
    procedure Setfone(const Value: string);
  public
    /// <summary>
    /// Logradouro.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xLgr: string read FxLgr write SetxLgr;
    property xLgrHasValue: Boolean read FxLgrHasValue write FxLgrHasValue;
    /// <summary>
    /// Número.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property nro: string read Fnro write Setnro;
    property nroHasValue: Boolean read FnroHasValue write FnroHasValue;
    /// <summary>
    /// Complemento.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xCpl: string read FxCpl write SetxCpl;
    property xCplHasValue: Boolean read FxCplHasValue write FxCplHasValue;
    /// <summary>
    /// Bairro.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xBairro: string read FxBairro write SetxBairro;
    property xBairroHasValue: Boolean read FxBairroHasValue write FxBairroHasValue;
    /// <summary>
    /// Código do município (utilizar a tabela do IBGE).
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property cMun: string read FcMun write SetcMun;
    property cMunHasValue: Boolean read FcMunHasValue write FcMunHasValue;
    /// <summary>
    /// Nome do município.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xMun: string read FxMun write SetxMun;
    property xMunHasValue: Boolean read FxMunHasValue write FxMunHasValue;
    /// <summary>
    /// CEP.
    /// Informar zeros não significativos.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property CEP: string read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    /// <summary>
    /// Sigla da UF.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    /// <summary>
    /// Telefone.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
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
    FCRT: Integer;
    FCRTHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetIEST(const Value: string);
    procedure SetxNome(const Value: string);
    procedure SetxFant(const Value: string);
    procedure SetenderEmit(const Value: TCteSefazEndeEmi);
    procedure SetCRT(const Value: Integer);
  public
    destructor Destroy; override;
    /// <summary>
    /// CNPJ do emitente.
    /// Informar zeros não significativos.
    /// Obrigatório caso o emitente seja pessoa jurídica.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// CPF do emitente.
    /// Informar zeros não significativos.
    /// 
    /// Usar com série específica 920-969 para emitente pessoa física com inscrição estadual.
    /// Obrigatorio caso o emitente seja pessoa física.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Inscrição Estadual do Emitente.
    /// A IE do emitente somente ficará sem informação para o caso do Regime Especial da NFF (tpEmis=3).
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    /// <summary>
    /// Inscrição Estadual do Substituto Tributário.
    /// </summary>
    property IEST: string read FIEST write SetIEST;
    property IESTHasValue: Boolean read FIESTHasValue write FIESTHasValue;
    /// <summary>
    /// Razão social ou Nome do emitente.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    /// <summary>
    /// Nome fantasia.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xFant: string read FxFant write SetxFant;
    property xFantHasValue: Boolean read FxFantHasValue write FxFantHasValue;
    /// <summary>
    /// Endereço do emitente.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property enderEmit: TCteSefazEndeEmi read FenderEmit write SetenderEmit;
    /// <summary>
    /// Código do Regime Tributário.
    /// Informar: 1=Simples Nacional; 
    /// 2=Simples Nacional, excesso sublimite de receita bruta;
    /// 3=Regime Normal.
    /// </summary>
    property CRT: Integer read FCRT write SetCRT;
    property CRTHasValue: Boolean read FCRTHasValue write FCRTHasValue;
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
    procedure SetxFant(const Value: string);
    procedure Setfone(const Value: string);
    procedure SetenderReme(const Value: TCteSefazEndereco);
    procedure Setemail(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Número do CNPJ.
    /// Em caso de empresa não estabelecida no Brasil, será informado o CNPJ com zeros.
    /// 												Informar os zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Número do CPF.
    /// Informar os zeros não significativos.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Inscrição Estadual.
    /// Informar a IE do remetente ou ISENTO se remetente é contribuinte do ICMS isento de inscrição no cadastro de contribuintes do ICMS. Caso o remetente não seja contribuinte do ICMS não informar a tag.
    /// </summary>
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    /// <summary>
    /// Razão social ou nome do remetente.
    /// </summary>
    property xNome: string read FxNome write FxNome;
    /// <summary>
    /// Nome fantasia.
    /// </summary>
    property xFant: string read FxFant write SetxFant;
    property xFantHasValue: Boolean read FxFantHasValue write FxFantHasValue;
    /// <summary>
    /// Telefone.
    /// </summary>
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    /// <summary>
    /// Dados do endereço.
    /// </summary>
    property enderReme: TCteSefazEndereco read FenderReme write SetenderReme;
    /// <summary>
    /// Endereço de email.
    /// </summary>
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
    Ffone: string;
    FfoneHasValue: Boolean;
    FenderExped: TCteSefazEndereco;
    Femail: string;
    FemailHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure Setfone(const Value: string);
    procedure SetenderExped(const Value: TCteSefazEndereco);
    procedure Setemail(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Número do CNPJ.
    /// Em caso de empresa não estabelecida no Brasil, será informado o CNPJ com zeros.
    /// 												Informar os zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Número do CPF.
    /// Informar os zeros não significativos.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Inscrição Estadual.
    /// Informar a IE do expedidor ou ISENTO se expedidor é contribuinte do ICMS isento de inscrição no cadastro de contribuintes do ICMS. Caso o expedidor não seja contribuinte do ICMS não informar a tag.
    /// </summary>
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    /// <summary>
    /// Razão Social ou Nome.
    /// </summary>
    property xNome: string read FxNome write FxNome;
    /// <summary>
    /// Telefone.
    /// </summary>
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    /// <summary>
    /// Dados do endereço.
    /// </summary>
    property enderExped: TCteSefazEndereco read FenderExped write SetenderExped;
    /// <summary>
    /// Endereço de email.
    /// </summary>
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
    Ffone: string;
    FfoneHasValue: Boolean;
    FenderReceb: TCteSefazEndereco;
    Femail: string;
    FemailHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure Setfone(const Value: string);
    procedure SetenderReceb(const Value: TCteSefazEndereco);
    procedure Setemail(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Número do CNPJ.
    /// Em caso de empresa não estabelecida no Brasil, será informado o CNPJ com zeros.
    /// 												Informar os zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Número do CPF.
    /// Informar os zeros não significativos.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Inscrição Estadual.
    /// Informar a IE do recebedor ou ISENTO se recebedor é contribuinte do ICMS isento de inscrição no cadastro de contribuintes do ICMS. Caso o recebedor não seja contribuinte do ICMS não informar o conteúdo.
    /// </summary>
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    /// <summary>
    /// Razão Social ou Nome.
    /// </summary>
    property xNome: string read FxNome write FxNome;
    /// <summary>
    /// Telefone.
    /// </summary>
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    /// <summary>
    /// Dados do endereço.
    /// </summary>
    property enderReceb: TCteSefazEndereco read FenderReceb write SetenderReceb;
    /// <summary>
    /// Endereço de email.
    /// </summary>
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
    procedure Setfone(const Value: string);
    procedure SetISUF(const Value: string);
    procedure SetenderDest(const Value: TCteSefazEndereco);
    procedure Setemail(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Número do CNPJ.
    /// Em caso de empresa não estabelecida no Brasil, será informado o CNPJ com zeros.
    /// 												Informar os zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Número do CPF.
    /// Informar os zeros não significativos.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Inscrição Estadual.
    /// Informar a IE do destinatário ou ISENTO se destinatário é contribuinte do ICMS isento de inscrição no cadastro de contribuintes do ICMS. Caso o destinatário não seja contribuinte do ICMS não informar o conteúdo.
    /// </summary>
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    /// <summary>
    /// Razão Social ou Nome do destinatário.
    /// </summary>
    property xNome: string read FxNome write FxNome;
    /// <summary>
    /// Telefone.
    /// </summary>
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    /// <summary>
    /// Inscrição na SUFRAMA.
    /// (Obrigatório nas operações com as áreas com benefícios de incentivos fiscais sob controle da SUFRAMA).
    /// </summary>
    property ISUF: string read FISUF write SetISUF;
    property ISUFHasValue: Boolean read FISUFHasValue write FISUFHasValue;
    /// <summary>
    /// Dados do endereço.
    /// </summary>
    property enderDest: TCteSefazEndereco read FenderDest write SetenderDest;
    /// <summary>
    /// Endereço de email.
    /// </summary>
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
  end;
  
  TCteSefazComp = class
  private
    FxNome: string;
    FvComp: Double;
  public
    /// <summary>
    /// Nome do componente.
    /// Exxemplos: FRETE PESO, FRETE VALOR, SEC/CAT, ADEME, AGENDAMENTO, etc.
    /// </summary>
    property xNome: string read FxNome write FxNome;
    /// <summary>
    /// Valor do componente.
    /// </summary>
    property vComp: Double read FvComp write FvComp;
  end;
  
  TCteSefazCompList = class(TObjectList<TCteSefazComp>)
  end;
  
  TCteSefazVPrest = class
  private
    FvTPrest: Double;
    FvRec: Double;
    FComp: TCteSefazCompList;
    procedure SetComp(const Value: TCteSefazCompList);
  public
    destructor Destroy; override;
    /// <summary>
    /// Valor Total da Prestação do Serviço.
    /// Pode conter zeros quando o CT-e for de complemento de ICMS.
    /// </summary>
    property vTPrest: Double read FvTPrest write FvTPrest;
    /// <summary>
    /// Valor a Receber.
    /// </summary>
    property vRec: Double read FvRec write FvRec;
    /// <summary>
    /// Componentes do Valor da Prestação.
    /// </summary>
    property Comp: TCteSefazCompList read FComp write SetComp;
  end;
  
  TCteSefazICMS00 = class
  private
    FCST: string;
    FvBC: Double;
    FpICMS: Double;
    FvICMS: Double;
  public
    /// <summary>
    /// classificação Tributária do Serviço.
    /// 00 - tributação normal ICMS.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Valor da BC do ICMS.
    /// </summary>
    property vBC: Double read FvBC write FvBC;
    /// <summary>
    /// Alíquota do ICMS.
    /// </summary>
    property pICMS: Double read FpICMS write FpICMS;
    /// <summary>
    /// Valor do ICMS.
    /// </summary>
    property vICMS: Double read FvICMS write FvICMS;
  end;
  
  TCteSefazICMS20 = class
  private
    FCST: string;
    FpRedBC: Double;
    FvBC: Double;
    FpICMS: Double;
    FvICMS: Double;
  public
    /// <summary>
    /// Classificação Tributária do serviço.
    /// 20 - tributação com BC reduzida do ICMS.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Percentual de redução da BC.
    /// </summary>
    property pRedBC: Double read FpRedBC write FpRedBC;
    /// <summary>
    /// Valor da BC do ICMS.
    /// </summary>
    property vBC: Double read FvBC write FvBC;
    /// <summary>
    /// Alíquota do ICMS.
    /// </summary>
    property pICMS: Double read FpICMS write FpICMS;
    /// <summary>
    /// Valor do ICMS.
    /// </summary>
    property vICMS: Double read FvICMS write FvICMS;
  end;
  
  TCteSefazICMS45 = class
  private
    FCST: string;
  public
    /// <summary>
    /// Classificação Tributária do Serviço.
    /// Preencher com:
    /// 								40 - ICMS isenção;
    /// 								41 - ICMS não tributada;
    /// 								51 - ICMS diferido.
    /// </summary>
    property CST: string read FCST write FCST;
  end;
  
  TCteSefazICMS60 = class
  private
    FCST: string;
    FvBCSTRet: Double;
    FvICMSSTRet: Double;
    FpICMSSTRet: Double;
    FvCred: Double;
    FvCredHasValue: Boolean;
    procedure SetvCred(const Value: Double);
  public
    /// <summary>
    /// Classificação Tributária do Serviço.
    /// 60 - ICMS cobrado por substituição tributária.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Valor da BC do ICMS ST retido.
    /// Valor do frete sobre o qual será calculado o ICMS a ser substituído na Prestação.
    /// </summary>
    property vBCSTRet: Double read FvBCSTRet write FvBCSTRet;
    /// <summary>
    /// Valor do ICMS ST retido.
    /// Resultado da multiplicação do “vBCSTRet” x “pICMSSTRet” – que será valor do ICMS a ser retido pelo Substituto. Podendo o valor do ICMS a ser retido efetivamente, sofrer ajustes conforme a opção tributaria do transportador substituído.
    /// </summary>
    property vICMSSTRet: Double read FvICMSSTRet write FvICMSSTRet;
    /// <summary>
    /// Alíquota do ICMS.
    /// Percentual de Alíquota incidente na prestação de serviço de transporte.
    /// </summary>
    property pICMSSTRet: Double read FpICMSSTRet write FpICMSSTRet;
    /// <summary>
    /// Valor do Crédito outorgado/Presumido.
    /// Preencher somente quando o transportador substituído, for optante pelo crédito outorgado previsto no Convênio 106/96 e corresponde ao percentual de 20%% do valor do ICMS ST retido.
    /// </summary>
    property vCred: Double read FvCred write SetvCred;
    property vCredHasValue: Boolean read FvCredHasValue write FvCredHasValue;
  end;
  
  TCteSefazICMS90 = class
  private
    FCST: string;
    FpRedBC: Double;
    FpRedBCHasValue: Boolean;
    FvBC: Double;
    FpICMS: Double;
    FvICMS: Double;
    FvCred: Double;
    FvCredHasValue: Boolean;
    procedure SetpRedBC(const Value: Double);
    procedure SetvCred(const Value: Double);
  public
    /// <summary>
    /// Classificação Tributária do Serviço.
    /// 90 - ICMS outros.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Percentual de redução da BC.
    /// </summary>
    property pRedBC: Double read FpRedBC write SetpRedBC;
    property pRedBCHasValue: Boolean read FpRedBCHasValue write FpRedBCHasValue;
    /// <summary>
    /// Valor da BC do ICMS.
    /// </summary>
    property vBC: Double read FvBC write FvBC;
    /// <summary>
    /// Alíquota do ICMS.
    /// </summary>
    property pICMS: Double read FpICMS write FpICMS;
    /// <summary>
    /// Valor do ICMS.
    /// </summary>
    property vICMS: Double read FvICMS write FvICMS;
    /// <summary>
    /// Valor do Crédito Outorgado/Presumido.
    /// </summary>
    property vCred: Double read FvCred write SetvCred;
    property vCredHasValue: Boolean read FvCredHasValue write FvCredHasValue;
  end;
  
  TCteSefazICMSOutraUF = class
  private
    FCST: string;
    FpRedBCOutraUF: Double;
    FpRedBCOutraUFHasValue: Boolean;
    FvBCOutraUF: Double;
    FpICMSOutraUF: Double;
    FvICMSOutraUF: Double;
    procedure SetpRedBCOutraUF(const Value: Double);
  public
    /// <summary>
    /// Classificação Tributária do Serviço.
    /// 90 - ICMS Outra UF.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Percentual de redução da BC.
    /// </summary>
    property pRedBCOutraUF: Double read FpRedBCOutraUF write SetpRedBCOutraUF;
    property pRedBCOutraUFHasValue: Boolean read FpRedBCOutraUFHasValue write FpRedBCOutraUFHasValue;
    /// <summary>
    /// Valor da BC do ICMS.
    /// </summary>
    property vBCOutraUF: Double read FvBCOutraUF write FvBCOutraUF;
    /// <summary>
    /// Alíquota do ICMS.
    /// </summary>
    property pICMSOutraUF: Double read FpICMSOutraUF write FpICMSOutraUF;
    /// <summary>
    /// Valor do ICMS devido outra UF.
    /// </summary>
    property vICMSOutraUF: Double read FvICMSOutraUF write FvICMSOutraUF;
  end;
  
  TCteSefazICMSSN = class
  private
    FCST: string;
    FindSN: Integer;
  public
    /// <summary>
    /// Classificação Tributária do Serviço.
    /// 90 - ICMS Simples Nacional.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Indica se o contribuinte é Simples Nacional			1=Sim.
    /// </summary>
    property indSN: Integer read FindSN write FindSN;
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
    /// <summary>
    /// Prestação sujeito à tributação normal do ICMS.
    /// </summary>
    property ICMS00: TCteSefazICMS00 read FICMS00 write SetICMS00;
    /// <summary>
    /// Prestação sujeito à tributação com redução de BC do ICMS.
    /// </summary>
    property ICMS20: TCteSefazICMS20 read FICMS20 write SetICMS20;
    /// <summary>
    /// ICMS  Isento, não Tributado ou diferido.
    /// </summary>
    property ICMS45: TCteSefazICMS45 read FICMS45 write SetICMS45;
    /// <summary>
    /// Tributação pelo ICMS60 - ICMS cobrado por substituição tributária.Responsabilidade do recolhimento do ICMS atribuído ao tomador ou 3º por ST.
    /// </summary>
    property ICMS60: TCteSefazICMS60 read FICMS60 write SetICMS60;
    /// <summary>
    /// ICMS Outros.
    /// </summary>
    property ICMS90: TCteSefazICMS90 read FICMS90 write SetICMS90;
    /// <summary>
    /// ICMS devido à UF de origem da prestação, quando  diferente da UF do emitente.
    /// </summary>
    property ICMSOutraUF: TCteSefazICMSOutraUF read FICMSOutraUF write SetICMSOutraUF;
    /// <summary>
    /// Simples Nacional.
    /// </summary>
    property ICMSSN: TCteSefazICMSSN read FICMSSN write SetICMSSN;
  end;
  
  TCteSefazICMSUFFim = class
  private
    FvBCUFFim: Double;
    FpFCPUFFim: Double;
    FpICMSUFFim: Double;
    FpICMSInter: Double;
    FvFCPUFFim: Double;
    FvICMSUFFim: Double;
    FvICMSUFIni: Double;
  public
    /// <summary>
    /// Valor da BC do ICMS na UF de término da prestação do serviço de transporte.
    /// </summary>
    property vBCUFFim: Double read FvBCUFFim write FvBCUFFim;
    /// <summary>
    /// Percentual do ICMS relativo ao Fundo de Combate à pobreza (FCP) na UF de término da prestação do serviço de transporte.
    /// Alíquota adotada nas operações internas na UF do destinatário.
    /// </summary>
    property pFCPUFFim: Double read FpFCPUFFim write FpFCPUFFim;
    /// <summary>
    /// Alíquota interna da UF de término da prestação do serviço de transporte.
    /// Alíquota adotada nas operações internas na UF do destinatário.
    /// </summary>
    property pICMSUFFim: Double read FpICMSUFFim write FpICMSUFFim;
    /// <summary>
    /// Alíquota interestadual das UF envolvidas.
    /// Alíquota interestadual das UF envolvidas.
    /// </summary>
    property pICMSInter: Double read FpICMSInter write FpICMSInter;
    /// <summary>
    /// Valor do ICMS relativo ao Fundo de Combate á Pobreza (FCP) da UF de término da prestação.
    /// </summary>
    property vFCPUFFim: Double read FvFCPUFFim write FvFCPUFFim;
    /// <summary>
    /// Valor do ICMS de partilha para a UF de término da prestação do serviço de transporte.
    /// </summary>
    property vICMSUFFim: Double read FvICMSUFFim write FvICMSUFFim;
    /// <summary>
    /// Valor do ICMS de partilha para a UF de início da prestação do serviço de transporte.
    /// </summary>
    property vICMSUFIni: Double read FvICMSUFIni write FvICMSUFIni;
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Informações relativas ao ICMS.
    /// </summary>
    property ICMS: TCteSefazImp read FICMS write SetICMS;
    /// <summary>
    /// Valor Total dos Tributos.
    /// </summary>
    property vTotTrib: Double read FvTotTrib write SetvTotTrib;
    property vTotTribHasValue: Boolean read FvTotTribHasValue write FvTotTribHasValue;
    /// <summary>
    /// Informações adicionais de interesse do Fisco.
    /// Norma referenciada, informações complementares, etc.
    /// </summary>
    property infAdFisco: string read FinfAdFisco write SetinfAdFisco;
    property infAdFiscoHasValue: Boolean read FinfAdFiscoHasValue write FinfAdFiscoHasValue;
    /// <summary>
    /// Informações do ICMS de partilha com a UF de término do serviço de transporte na operação interestadual.
    /// Grupo a ser informado nas prestações interestaduais para consumidor final, não contribuinte do ICMS.
    /// </summary>
    property ICMSUFFim: TCteSefazICMSUFFim read FICMSUFFim write SetICMSUFFim;
  end;
  
  TCteSefazInfQ = class
  private
    FcUnid: string;
    FtpMed: string;
    FqCarga: Double;
  public
    /// <summary>
    /// Código da Unidade de Medida.
    /// Preencher com:
    /// 																		00-M3;
    /// 																		01-KG;
    /// 																		02-TON;
    /// 																		03-UNIDADE;
    /// 																		04-LITROS;
    /// 																		05-MMBTU.
    /// </summary>
    property cUnid: string read FcUnid write FcUnid;
    /// <summary>
    /// Tipo da Medida.
    /// Exemplos:
    /// PESO BRUTO, PESO DECLARADO, PESO CUBADO, PESO AFORADO, PESO AFERIDO, PESO BASE DE CÁLCULO, LITRAGEM, CAIXAS e etc.
    /// </summary>
    property tpMed: string read FtpMed write FtpMed;
    /// <summary>
    /// Quantidade.
    /// </summary>
    property qCarga: Double read FqCarga write FqCarga;
  end;
  
  TCteSefazInfQList = class(TObjectList<TCteSefazInfQ>)
  end;
  
  TCteSefazInfCarga = class
  private
    FvCarga: Double;
    FvCargaHasValue: Boolean;
    FproPred: string;
    FxOutCat: string;
    FxOutCatHasValue: Boolean;
    FinfQ: TCteSefazInfQList;
    FvCargaAverb: Double;
    FvCargaAverbHasValue: Boolean;
    procedure SetvCarga(const Value: Double);
    procedure SetxOutCat(const Value: string);
    procedure SetinfQ(const Value: TCteSefazInfQList);
    procedure SetvCargaAverb(const Value: Double);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Valor total da carga.
    /// Dever ser informado para todos os modais, com exceção para o Dutoviário.
    /// </summary>
    property vCarga: Double read FvCarga write SetvCarga;
    property vCargaHasValue: Boolean read FvCargaHasValue write FvCargaHasValue;
    /// <summary>
    /// Produto predominante.
    /// Informar a descrição do produto predominante.
    /// </summary>
    property proPred: string read FproPred write FproPred;
    /// <summary>
    /// Outras características da carga.
    /// "FRIA", "GRANEL", "REFRIGERADA", "Medidas: 12X12X12".
    /// </summary>
    property xOutCat: string read FxOutCat write SetxOutCat;
    property xOutCatHasValue: Boolean read FxOutCatHasValue write FxOutCatHasValue;
    /// <summary>
    /// Informações de quantidades da Carga do CT-e.
    /// Para o Aéreo é obrigatório o preenchimento desse campo da seguinte forma.
    /// 1 - Peso Bruto, sempre em quilogramas (obrigatório);
    /// 2 - Peso Cubado; sempre em quilogramas;
    /// 3 - Quantidade de volumes, sempre em unidades (obrigatório);
    /// 4 - Cubagem, sempre em metros cúbicos (obrigatório apenas quando for impossível preencher as dimensões da(s) embalagem(ens) na tag xDime do leiaute do Aéreo).
    /// </summary>
    property infQ: TCteSefazInfQList read FinfQ write SetinfQ;
    /// <summary>
    /// Valor da Carga para efeito de averbação.
    /// Normalmente igual ao valor declarado da mercadoria, diferente por exemplo, quando a mercadoria transportada é isenta de tributos nacionais para exportação, onde é preciso averbar um valor maior, pois no caso de indenização, o valor a ser pago será maior.
    /// </summary>
    property vCargaAverb: Double read FvCargaAverb write SetvCargaAverb;
    property vCargaAverbHasValue: Boolean read FvCargaAverbHasValue write FvCargaAverbHasValue;
  end;
  
  TCteSefazLacUnidCarga = class
  private
    FnLacre: string;
  public
    /// <summary>
    /// Número do lacre.
    /// </summary>
    property nLacre: string read FnLacre write FnLacre;
  end;
  
  TCteSefazLacUnidCargaList = class(TObjectList<TCteSefazLacUnidCarga>)
  end;
  
  TCteSefazUnidCarga = class
  private
    FtpUnidCarga: Integer;
    FidUnidCarga: string;
    FlacUnidCarga: TCteSefazLacUnidCargaList;
    FqtdRat: Double;
    FqtdRatHasValue: Boolean;
    procedure SetlacUnidCarga(const Value: TCteSefazLacUnidCargaList);
    procedure SetqtdRat(const Value: Double);
  public
    destructor Destroy; override;
    /// <summary>
    /// Tipo da Unidade de Carga.
    /// 1 - Container
    /// 2 - ULD
    /// 3 - Pallet
    /// 4 - Outros.
    /// </summary>
    property tpUnidCarga: Integer read FtpUnidCarga write FtpUnidCarga;
    /// <summary>
    /// Identificação da Unidade de Carga.
    /// Informar a identificação da unidade de carga, por exemplo: número do container.
    /// </summary>
    property idUnidCarga: string read FidUnidCarga write FidUnidCarga;
    /// <summary>
    /// Lacres das Unidades de Carga.
    /// </summary>
    property lacUnidCarga: TCteSefazLacUnidCargaList read FlacUnidCarga write SetlacUnidCarga;
    /// <summary>
    /// Quantidade rateada (Peso,Volume).
    /// </summary>
    property qtdRat: Double read FqtdRat write SetqtdRat;
    property qtdRatHasValue: Boolean read FqtdRatHasValue write FqtdRatHasValue;
  end;
  
  TCteSefazUnidCargaList = class(TObjectList<TCteSefazUnidCarga>)
  end;
  
  TCteSefazLacUnidTransp = class
  private
    FnLacre: string;
  public
    /// <summary>
    /// Número do lacre.
    /// </summary>
    property nLacre: string read FnLacre write FnLacre;
  end;
  
  TCteSefazLacUnidTranspList = class(TObjectList<TCteSefazLacUnidTransp>)
  end;
  
  TCteSefazUnidadeTransp = class
  private
    FtpUnidTransp: Integer;
    FidUnidTransp: string;
    FlacUnidTransp: TCteSefazLacUnidTranspList;
    FinfUnidCarga: TCteSefazUnidCargaList;
    FqtdRat: Double;
    FqtdRatHasValue: Boolean;
    procedure SetlacUnidTransp(const Value: TCteSefazLacUnidTranspList);
    procedure SetinfUnidCarga(const Value: TCteSefazUnidCargaList);
    procedure SetqtdRat(const Value: Double);
  public
    destructor Destroy; override;
    /// <summary>
    /// Tipo da Unidade de Transporte.
    /// 1 - Rodoviário Tração
    /// 2 - Rodoviário Reboque
    /// 3 - Navio
    /// 4 - Balsa
    /// 5 - Aeronave
    /// 6 - Vagão
    /// 7 - Outros.
    /// </summary>
    property tpUnidTransp: Integer read FtpUnidTransp write FtpUnidTransp;
    /// <summary>
    /// Identificação da Unidade de Transporte.
    /// Informar a identificação conforme o tipo de unidade de transporte.
    /// Por exemplo: para rodoviário tração ou reboque deverá preencher com a placa do veículo.
    /// </summary>
    property idUnidTransp: string read FidUnidTransp write FidUnidTransp;
    /// <summary>
    /// Lacres das Unidades de Transporte.
    /// </summary>
    property lacUnidTransp: TCteSefazLacUnidTranspList read FlacUnidTransp write SetlacUnidTransp;
    /// <summary>
    /// Informações das Unidades de Carga (Containeres/ULD/Outros).
    /// Dispositivo de carga utilizada (Unit Load Device - ULD) significa todo tipo de contêiner de carga, vagão, contêiner de avião, palete de aeronave com rede ou palete de aeronave com rede sobre um iglu.
    /// </summary>
    property infUnidCarga: TCteSefazUnidCargaList read FinfUnidCarga write SetinfUnidCarga;
    /// <summary>
    /// Quantidade rateada (Peso,Volume).
    /// </summary>
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
    Fserie: string;
    FnDoc: string;
    FdEmi: TDate;
    FvBC: Double;
    FvICMS: Double;
    FvBCST: Double;
    FvST: Double;
    FvProd: Double;
    FvNF: Double;
    FnCFOP: string;
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
    procedure SetnPeso(const Value: Double);
    procedure SetPIN(const Value: string);
    procedure SetdPrev(const Value: TDate);
    procedure SetinfUnidCarga(const Value: TCteSefazUnidCargaList);
    procedure SetinfUnidTransp(const Value: TCteSefazUnidadeTranspList);
  public
    destructor Destroy; override;
    /// <summary>
    /// Número do Romaneio da NF.
    /// </summary>
    property nRoma: string read FnRoma write SetnRoma;
    property nRomaHasValue: Boolean read FnRomaHasValue write FnRomaHasValue;
    /// <summary>
    /// Número do Pedido da NF.
    /// </summary>
    property nPed: string read FnPed write SetnPed;
    property nPedHasValue: Boolean read FnPedHasValue write FnPedHasValue;
    /// <summary>
    /// Modelo da Nota Fiscal.
    /// Preencher com: 
    /// 01 - NF Modelo 01/1A e Avulsa; 
    /// 04 - NF de Produtor.
    /// </summary>
    property &mod: string read Fmod write Fmod;
    /// <summary>
    /// Série.
    /// </summary>
    property serie: string read Fserie write Fserie;
    /// <summary>
    /// Número.
    /// </summary>
    property nDoc: string read FnDoc write FnDoc;
    /// <summary>
    /// Data de Emissão.
    /// Formato AAAA-MM-DD.
    /// </summary>
    property dEmi: TDate read FdEmi write FdEmi;
    /// <summary>
    /// Valor da Base de Cálculo do ICMS.
    /// </summary>
    property vBC: Double read FvBC write FvBC;
    /// <summary>
    /// Valor Total do ICMS.
    /// </summary>
    property vICMS: Double read FvICMS write FvICMS;
    /// <summary>
    /// Valor da Base de Cálculo do ICMS ST.
    /// </summary>
    property vBCST: Double read FvBCST write FvBCST;
    /// <summary>
    /// Valor Total do ICMS ST.
    /// </summary>
    property vST: Double read FvST write FvST;
    /// <summary>
    /// Valor Total dos Produtos.
    /// </summary>
    property vProd: Double read FvProd write FvProd;
    /// <summary>
    /// Valor Total da NF.
    /// </summary>
    property vNF: Double read FvNF write FvNF;
    /// <summary>
    /// CFOP Predominante.
    /// CFOP da NF ou, na existência de mais de um, predominância pelo critério de valor econômico.
    /// </summary>
    property nCFOP: string read FnCFOP write FnCFOP;
    /// <summary>
    /// Peso total em Kg.
    /// </summary>
    property nPeso: Double read FnPeso write SetnPeso;
    property nPesoHasValue: Boolean read FnPesoHasValue write FnPesoHasValue;
    /// <summary>
    /// PIN SUFRAMA.
    /// PIN atribuído pela SUFRAMA para a operação.
    /// </summary>
    property PIN: string read FPIN write SetPIN;
    property PINHasValue: Boolean read FPINHasValue write FPINHasValue;
    /// <summary>
    /// Data prevista de entrega.
    /// Formato AAAA-MM-DD.
    /// </summary>
    property dPrev: TDate read FdPrev write SetdPrev;
    property dPrevHasValue: Boolean read FdPrevHasValue write FdPrevHasValue;
    /// <summary>
    /// Informações das Unidades de Carga (Containeres/ULD/Outros).
    /// Dispositivo de carga utilizada (Unit Load Device - ULD) significa todo tipo de contêiner de carga, vagão, contêiner de avião, palete de aeronave com rede ou palete de aeronave com rede sobre um iglu.
    /// </summary>
    property infUnidCarga: TCteSefazUnidCargaList read FinfUnidCarga write SetinfUnidCarga;
    /// <summary>
    /// Informações das Unidades de Transporte (Carreta/Reboque/Vagão).
    /// Deve ser preenchido com as informações das unidades de transporte utilizadas.
    /// </summary>
    property infUnidTransp: TCteSefazUnidadeTranspList read FinfUnidTransp write SetinfUnidTransp;
  end;
  
  TCteSefazInfNFList = class(TObjectList<TCteSefazInfNF>)
  end;
  
  TCteSefazInfNFe = class
  private
    Fchave: string;
    FPIN: string;
    FPINHasValue: Boolean;
    FdPrev: TDate;
    FdPrevHasValue: Boolean;
    FinfUnidCarga: TCteSefazUnidCargaList;
    FinfUnidTransp: TCteSefazUnidadeTranspList;
    procedure SetPIN(const Value: string);
    procedure SetdPrev(const Value: TDate);
    procedure SetinfUnidCarga(const Value: TCteSefazUnidCargaList);
    procedure SetinfUnidTransp(const Value: TCteSefazUnidadeTranspList);
  public
    destructor Destroy; override;
    /// <summary>
    /// Chave de acesso da NF-e.
    /// </summary>
    property chave: string read Fchave write Fchave;
    /// <summary>
    /// PIN SUFRAMA.
    /// PIN atribuído pela SUFRAMA para a operação.
    /// </summary>
    property PIN: string read FPIN write SetPIN;
    property PINHasValue: Boolean read FPINHasValue write FPINHasValue;
    /// <summary>
    /// Data prevista de entrega.
    /// Formato AAAA-MM-DD.
    /// </summary>
    property dPrev: TDate read FdPrev write SetdPrev;
    property dPrevHasValue: Boolean read FdPrevHasValue write FdPrevHasValue;
    /// <summary>
    /// Informações das Unidades de Carga (Containeres/ULD/Outros).
    /// Dispositivo de carga utilizada (Unit Load Device - ULD) significa todo tipo de contêiner de carga, vagão, contêiner de avião, palete de aeronave com rede ou palete de aeronave com rede sobre um iglu.
    /// </summary>
    property infUnidCarga: TCteSefazUnidCargaList read FinfUnidCarga write SetinfUnidCarga;
    /// <summary>
    /// Informações das Unidades de Transporte (Carreta/Reboque/Vagão).
    /// Deve ser preenchido com as informações das unidades de transporte utilizadas.
    /// </summary>
    property infUnidTransp: TCteSefazUnidadeTranspList read FinfUnidTransp write SetinfUnidTransp;
  end;
  
  TCteSefazInfNFeList = class(TObjectList<TCteSefazInfNFe>)
  end;
  
  TCteSefazInfOutros = class
  private
    FtpDoc: string;
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
    procedure SetdescOutros(const Value: string);
    procedure SetnDoc(const Value: string);
    procedure SetdEmi(const Value: TDate);
    procedure SetvDocFisc(const Value: Double);
    procedure SetdPrev(const Value: TDate);
    procedure SetinfUnidCarga(const Value: TCteSefazUnidCargaList);
    procedure SetinfUnidTransp(const Value: TCteSefazUnidadeTranspList);
  public
    destructor Destroy; override;
    /// <summary>
    /// Tipo de documento originário.
    /// Preencher com:
    /// 															00 - Declaração;
    /// 															10 - Dutoviário;
    /// 
    /// 
    /// 59 - CF-e SAT;
    /// 
    /// 65 - NFC-e;
    /// 								99 - Outros.
    /// </summary>
    property tpDoc: string read FtpDoc write FtpDoc;
    /// <summary>
    /// Descrição do documento.
    /// </summary>
    property descOutros: string read FdescOutros write SetdescOutros;
    property descOutrosHasValue: Boolean read FdescOutrosHasValue write FdescOutrosHasValue;
    /// <summary>
    /// Número.
    /// </summary>
    property nDoc: string read FnDoc write SetnDoc;
    property nDocHasValue: Boolean read FnDocHasValue write FnDocHasValue;
    /// <summary>
    /// Data de Emissão.
    /// Formato AAAA-MM-DD.
    /// </summary>
    property dEmi: TDate read FdEmi write SetdEmi;
    property dEmiHasValue: Boolean read FdEmiHasValue write FdEmiHasValue;
    /// <summary>
    /// Valor do documento.
    /// </summary>
    property vDocFisc: Double read FvDocFisc write SetvDocFisc;
    property vDocFiscHasValue: Boolean read FvDocFiscHasValue write FvDocFiscHasValue;
    /// <summary>
    /// Data prevista de entrega.
    /// Formato AAAA-MM-DD.
    /// </summary>
    property dPrev: TDate read FdPrev write SetdPrev;
    property dPrevHasValue: Boolean read FdPrevHasValue write FdPrevHasValue;
    /// <summary>
    /// Informações das Unidades de Carga (Containeres/ULD/Outros).
    /// Dispositivo de carga utilizada (Unit Load Device - ULD) significa todo tipo de contêiner de carga, vagão, contêiner de avião, palete de aeronave com rede ou palete de aeronave com rede sobre um iglu.
    /// </summary>
    property infUnidCarga: TCteSefazUnidCargaList read FinfUnidCarga write SetinfUnidCarga;
    /// <summary>
    /// Informações das Unidades de Transporte (Carreta/Reboque/Vagão).
    /// Deve ser preenchido com as informações das unidades de transporte utilizadas.
    /// </summary>
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
    /// <summary>
    /// Informações das NF.
    /// Este grupo deve ser informado quando o documento originário for NF.
    /// </summary>
    property infNF: TCteSefazInfNFList read FinfNF write SetinfNF;
    /// <summary>
    /// Informações das NF-e.
    /// </summary>
    property infNFe: TCteSefazInfNFeList read FinfNFe write SetinfNFe;
    /// <summary>
    /// Informações dos demais documentos.
    /// </summary>
    property infOutros: TCteSefazInfOutrosList read FinfOutros write SetinfOutros;
  end;
  
  TCteSefazIdDocAntPap = class
  private
    FtpDoc: string;
    Fserie: string;
    Fsubser: string;
    FsubserHasValue: Boolean;
    FnDoc: string;
    FdEmi: TDate;
    procedure Setsubser(const Value: string);
  public
    /// <summary>
    /// Tipo do Documento de Transporte Anterior.
    /// Preencher com:
    /// 07-ATRE;							
    /// 08-DTA (Despacho de Transito Aduaneiro);
    /// 09-Conhecimento Aéreo Internacional;
    /// 10 – Conhecimento - Carta de Porte Internacional;
    /// 11 – Conhecimento Avulso;
    /// 12-TIF (Transporte Internacional Ferroviário); 13-BL (Bill of Lading).
    /// </summary>
    property tpDoc: string read FtpDoc write FtpDoc;
    /// <summary>
    /// Série do Documento Fiscal.
    /// </summary>
    property serie: string read Fserie write Fserie;
    /// <summary>
    /// Série do Documento Fiscal.
    /// </summary>
    property subser: string read Fsubser write Setsubser;
    property subserHasValue: Boolean read FsubserHasValue write FsubserHasValue;
    /// <summary>
    /// Número do Documento Fiscal.
    /// </summary>
    property nDoc: string read FnDoc write FnDoc;
    /// <summary>
    /// Data de emissão (AAAA-MM-DD).
    /// </summary>
    property dEmi: TDate read FdEmi write FdEmi;
  end;
  
  TCteSefazIdDocAntPapList = class(TObjectList<TCteSefazIdDocAntPap>)
  end;
  
  TCteSefazIdDocAntEle = class
  private
    FchCTe: string;
  public
    /// <summary>
    /// Chave de acesso do CT-e.
    /// </summary>
    property chCTe: string read FchCTe write FchCTe;
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
    /// <summary>
    /// Documentos de transporte anterior em papel.
    /// </summary>
    property idDocAntPap: TCteSefazIdDocAntPapList read FidDocAntPap write SetidDocAntPap;
    /// <summary>
    /// Documentos de transporte anterior eletrônicos.
    /// </summary>
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
    FidDocAnt: TCteSefazIdDocAntList;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetidDocAnt(const Value: TCteSefazIdDocAntList);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Número do CNPJ.
    /// Em caso de empresa não estabelecida no Brasil, será informado o CNPJ com zeros.
    /// 																			Informar os zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Número do CPF.
    /// Informar os zeros não significativos.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Inscrição Estadual.
    /// </summary>
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    /// <summary>
    /// Sigla da UF.
    /// Informar EX para operações com o exterior.
    /// </summary>
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    /// <summary>
    /// Razão Social ou Nome do expedidor.
    /// </summary>
    property xNome: string read FxNome write FxNome;
    /// <summary>
    /// Informações de identificação dos documentos de Transporte Anterior.
    /// </summary>
    property idDocAnt: TCteSefazIdDocAntList read FidDocAnt write SetidDocAnt;
  end;
  
  TCteSefazEmiDocAntList = class(TObjectList<TCteSefazEmiDocAnt>)
  end;
  
  TCteSefazDocAnt = class
  private
    FemiDocAnt: TCteSefazEmiDocAntList;
    procedure SetemiDocAnt(const Value: TCteSefazEmiDocAntList);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Emissor do documento anterior.
    /// </summary>
    property emiDocAnt: TCteSefazEmiDocAntList read FemiDocAnt write SetemiDocAnt;
  end;
  
  TCteSefazEmiOcc = class
  private
    FCNPJ: string;
    FcInt: string;
    FcIntHasValue: Boolean;
    FIE: string;
    FUF: string;
    Ffone: string;
    FfoneHasValue: Boolean;
    procedure SetcInt(const Value: string);
    procedure Setfone(const Value: string);
  public
    /// <summary>
    /// Número do CNPJ.
    /// Informar os zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write FCNPJ;
    /// <summary>
    /// Código interno de uso da transportadora.
    /// Uso intermo das transportadoras.
    /// </summary>
    property cInt: string read FcInt write SetcInt;
    property cIntHasValue: Boolean read FcIntHasValue write FcIntHasValue;
    /// <summary>
    /// Inscrição Estadual.
    /// </summary>
    property IE: string read FIE write FIE;
    /// <summary>
    /// Sigla da UF.
    /// Informar EX para operações com o exterior.
    /// </summary>
    property UF: string read FUF write FUF;
    /// <summary>
    /// Telefone.
    /// </summary>
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
  end;
  
  TCteSefazOcc = class
  private
    Fserie: string;
    FserieHasValue: Boolean;
    FnOcc: Integer;
    FdEmi: TDate;
    FemiOcc: TCteSefazEmiOcc;
    procedure Setserie(const Value: string);
    procedure SetemiOcc(const Value: TCteSefazEmiOcc);
  public
    destructor Destroy; override;
    /// <summary>
    /// Série da OCC.
    /// </summary>
    property serie: string read Fserie write Setserie;
    property serieHasValue: Boolean read FserieHasValue write FserieHasValue;
    /// <summary>
    /// Número da Ordem de coleta.
    /// </summary>
    property nOcc: Integer read FnOcc write FnOcc;
    /// <summary>
    /// Data de emissão da ordem de coleta.
    /// Formato AAAA-MM-DD.
    /// </summary>
    property dEmi: TDate read FdEmi write FdEmi;
    property emiOcc: TCteSefazEmiOcc read FemiOcc write SetemiOcc;
  end;
  
  TCteSefazOccList = class(TObjectList<TCteSefazOcc>)
  end;
  
  TCteSefazRodo = class
  private
    FRNTRC: string;
    Focc: TCteSefazOccList;
    procedure Setocc(const Value: TCteSefazOccList);
  public
    destructor Destroy; override;
    /// <summary>
    /// Registro Nacional de Transportadores Rodoviários de Carga.
    /// Registro obrigatório do emitente do CT-e junto à ANTT para exercer a atividade de transportador rodoviário de cargas por conta de terceiros e mediante remuneração.
    /// </summary>
    property RNTRC: string read FRNTRC write FRNTRC;
    /// <summary>
    /// Ordens de Coleta associados.
    /// </summary>
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
    /// <summary>
    /// Dimensão.
    /// Formato:1234X1234X1234 (cm). Esse campo deve sempre que possível ser preenchido. Entretanto, quando for impossível o preenchimento das dimensões, fica obrigatório o preenchimento da cubagem em metro cúbico do leiaute do CT-e da estrutura genérica (infQ).
    /// </summary>
    property xDime: string read FxDime write SetxDime;
    property xDimeHasValue: Boolean read FxDimeHasValue write FxDimeHasValue;
    /// <summary>
    /// Informações de manuseio.
    /// 01 - certificado do expedidor para embarque de animal vivo;
    /// 
    /// 02 - artigo perigoso conforme Declaração do Expedidor anexa;
    /// 
    /// 03 - somente em aeronave cargueira; 
    /// 
    /// 04 - artigo perigoso - declaração do expedidor não requerida; 
    /// 
    /// 05 - artigo perigoso em quantidade isenta;
    /// 
    /// 06 - gelo seco para refrigeração (especificar no campo observações a quantidade); 
    /// 
    /// 07 - não restrito (especificar a Disposição Especial no campo observações);
    /// 
    /// 08 - artigo perigoso em carga consolidada (especificar a quantidade no campo observações)
    /// ;
    /// 09 - autorização da autoridade governamental anexa (especificar no campo observações); 
    /// 
    /// 10 – baterias de íons de lítio em conformidade com a Seção II da PI965 – CAO
    /// ; 
    /// 11 - baterias de íons de lítio em conformidade com a Seção II da PI966
    /// ; 
    /// 12 - baterias de íons de lítio em conformidade com a Seção II da PI967
    /// ; 
    /// 13 – baterias de metal lítio em conformidade com a Seção II da PI968 — CAO; 
    /// 
    /// 14 - baterias de metal lítio em conformidade com a Seção II da PI969; 
    /// 
    /// 15 - baterias de metal lítio em conformidade com a Seção II da PI970
    /// ; 
    /// 99 - outro (especificar no campo observações)
    /// .
    /// </summary>
    property cInfManu: stringList read FcInfManu write SetcInfManu;
  end;
  
  TCteSefazTarifa = class
  private
    FCL: string;
    FcTar: string;
    FcTarHasValue: Boolean;
    FvTar: Double;
    procedure SetcTar(const Value: string);
  public
    /// <summary>
    /// Classe.
    /// Preencher com:
    /// 									M - Tarifa Mínima;
    /// 									G - Tarifa Geral;
    /// 									E - Tarifa Específica.
    /// </summary>
    property CL: string read FCL write FCL;
    /// <summary>
    /// Código da Tarifa.
    /// Deverão ser incluídos os códigos de três dígitos, correspondentes à tarifa.
    /// </summary>
    property cTar: string read FcTar write SetcTar;
    property cTarHasValue: Boolean read FcTarHasValue write FcTarHasValue;
    /// <summary>
    /// Valor da Tarifa.
    /// Valor da tarifa por kg quando for o caso.
    /// </summary>
    property vTar: Double read FvTar write FvTar;
  end;
  
  TCteSefazInfTotAP = class
  private
    FqTotProd: Double;
    FuniAP: Integer;
  public
    /// <summary>
    /// Quantidade total de artigos perigosos.
    /// 15 posições, sendo 11 inteiras e 4 decimais. 
    /// Deve indicar a quantidade total do artigo perigoso, tendo como base a unidade referenciada na Tabela 3-1 do Doc 9284, por exemplo: litros; quilogramas; quilograma bruto etc. O preenchimento não deve, entretanto, incluir a unidade de medida. No caso de transporte de material radioativo, deve-se indicar o somatório dos Índices de Transporte (TI). Não indicar a quantidade do artigo perigoso por embalagem.
    /// </summary>
    property qTotProd: Double read FqTotProd write FqTotProd;
    /// <summary>
    /// Unidade de medida.
    /// 1 – KG; 
    /// 2 – KG G (quilograma bruto);
    /// 3 – LITROS;
    /// 4 – TI (índice de transporte para radioativos); 5- Unidades (apenas para artigos perigosos medidos em unidades que não se enquadram nos itens acima. Exemplo: baterias, celulares, equipamentos, veículos, dentre outros).
    /// </summary>
    property uniAP: Integer read FuniAP write FuniAP;
  end;
  
  TCteSefazPeri = class
  private
    FnONU: string;
    FqTotEmb: string;
    FinfTotAP: TCteSefazInfTotAP;
    procedure SetinfTotAP(const Value: TCteSefazInfTotAP);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Número ONU/UN.
    /// Ver a legislação de transporte de produtos perigosos aplicadas ao modal.
    /// </summary>
    property nONU: string read FnONU write FnONU;
    /// <summary>
    /// Quantidade total de volumes contendo artigos perigosos.
    /// Preencher com o número de volumes (unidades) de artigos perigosos, ou seja, cada embalagem devidamente marcada e etiquetada (por ex.: número de caixas, de tambores, de bombonas, dentre outros). Não deve ser preenchido com o número de ULD, pallets ou containers.
    /// </summary>
    property qTotEmb: string read FqTotEmb write FqTotEmb;
    /// <summary>
    /// Grupo de informações das quantidades totais de artigos perigosos.
    /// Preencher conforme a legislação de transporte de produtos perigosos aplicada ao modal.
    /// </summary>
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
    FnatCarga: TCteSefazNatCarga;
    Ftarifa: TCteSefazTarifa;
    Fperi: TCteSefazPeriList;
    procedure SetnMinu(const Value: Integer);
    procedure SetnOCA(const Value: string);
    procedure SetnatCarga(const Value: TCteSefazNatCarga);
    procedure Settarifa(const Value: TCteSefazTarifa);
    procedure Setperi(const Value: TCteSefazPeriList);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Número da Minuta.
    /// Documento que precede o CT-e, assinado pelo expedidor, espécie de pedido de serviço.
    /// </summary>
    property nMinu: Integer read FnMinu write SetnMinu;
    property nMinuHasValue: Boolean read FnMinuHasValue write FnMinuHasValue;
    /// <summary>
    /// Número Operacional do Conhecimento Aéreo.
    /// Representa o número de controle comumente utilizado pelo conhecimento aéreo composto por uma sequência numérica de onze dígitos. Os três primeiros dígitos representam um código que os operadores de transporte aéreo associados à IATA possuem. Em seguida um número de série de sete dígitos determinados pelo operador de transporte aéreo. Para finalizar, um dígito verificador, que é um sistema de módulo sete imponderado o qual divide o número de série do conhecimento aéreo por sete e usa o resto como dígito de verificação.
    /// </summary>
    property nOCA: string read FnOCA write SetnOCA;
    property nOCAHasValue: Boolean read FnOCAHasValue write FnOCAHasValue;
    /// <summary>
    /// Data prevista da entrega.
    /// Formato AAAA-MM-DD.
    /// </summary>
    property dPrevAereo: TDate read FdPrevAereo write FdPrevAereo;
    /// <summary>
    /// Natureza da carga.
    /// </summary>
    property natCarga: TCteSefazNatCarga read FnatCarga write SetnatCarga;
    /// <summary>
    /// Informações de tarifa.
    /// </summary>
    property tarifa: TCteSefazTarifa read Ftarifa write Settarifa;
    /// <summary>
    /// Preenchido quando for  transporte de produtos classificados pela ONU como perigosos.
    /// O preenchimento desses campos não desobriga a empresa aérea de emitir os demais documentos que constam na legislação vigente.
    /// </summary>
    property peri: TCteSefazPeriList read Fperi write Setperi;
  end;
  
  TCteSefazEnderFer = class
  private
    FxLgr: string;
    Fnro: string;
    FnroHasValue: Boolean;
    FxCpl: string;
    FxCplHasValue: Boolean;
    FxBairro: string;
    FxBairroHasValue: Boolean;
    FcMun: string;
    FxMun: string;
    FCEP: string;
    FUF: string;
    procedure Setnro(const Value: string);
    procedure SetxCpl(const Value: string);
    procedure SetxBairro(const Value: string);
  public
    /// <summary>
    /// Logradouro.
    /// </summary>
    property xLgr: string read FxLgr write FxLgr;
    /// <summary>
    /// Número.
    /// </summary>
    property nro: string read Fnro write Setnro;
    property nroHasValue: Boolean read FnroHasValue write FnroHasValue;
    /// <summary>
    /// Complemento.
    /// </summary>
    property xCpl: string read FxCpl write SetxCpl;
    property xCplHasValue: Boolean read FxCplHasValue write FxCplHasValue;
    /// <summary>
    /// Bairro.
    /// </summary>
    property xBairro: string read FxBairro write SetxBairro;
    property xBairroHasValue: Boolean read FxBairroHasValue write FxBairroHasValue;
    /// <summary>
    /// Código do município.
    /// Utilizar a tabela do IBGE
    /// 					Informar 9999999 para operações com o exterior.
    /// </summary>
    property cMun: string read FcMun write FcMun;
    /// <summary>
    /// Nome do município.
    /// Informar EXTERIOR para operações com o exterior.
    /// </summary>
    property xMun: string read FxMun write FxMun;
    /// <summary>
    /// CEP.
    /// </summary>
    property CEP: string read FCEP write FCEP;
    /// <summary>
    /// Sigla da UF.
    /// Informar EX para operações com o exterior.
    /// </summary>
    property UF: string read FUF write FUF;
  end;
  
  TCteSefazFerroEnv = class
  private
    FCNPJ: string;
    FcInt: string;
    FcIntHasValue: Boolean;
    FIE: string;
    FIEHasValue: Boolean;
    FxNome: string;
    FenderFerro: TCteSefazEnderFer;
    procedure SetcInt(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetenderFerro(const Value: TCteSefazEnderFer);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Número do CNPJ.
    /// Informar o CNPJ da Ferrovia Envolvida. Caso a Ferrovia envolvida não seja inscrita no CNPJ o campo deverá preenchido com zeros.
    /// Informar os zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write FCNPJ;
    /// <summary>
    /// Código interno da Ferrovia envolvida.
    /// Uso da transportadora.
    /// </summary>
    property cInt: string read FcInt write SetcInt;
    property cIntHasValue: Boolean read FcIntHasValue write FcIntHasValue;
    /// <summary>
    /// Inscrição Estadual.
    /// </summary>
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    /// <summary>
    /// Razão Social ou Nome.
    /// </summary>
    property xNome: string read FxNome write FxNome;
    /// <summary>
    /// Dados do endereço da ferrovia envolvida.
    /// </summary>
    property enderFerro: TCteSefazEnderFer read FenderFerro write SetenderFerro;
  end;
  
  TCteSefazFerroEnvList = class(TObjectList<TCteSefazFerroEnv>)
  end;
  
  TCteSefazTrafMut = class
  private
    FrespFat: Integer;
    FferrEmi: Integer;
    FvFrete: Double;
    FchCTeFerroOrigem: string;
    FchCTeFerroOrigemHasValue: Boolean;
    FferroEnv: TCteSefazFerroEnvList;
    procedure SetchCTeFerroOrigem(const Value: string);
    procedure SetferroEnv(const Value: TCteSefazFerroEnvList);
  public
    destructor Destroy; override;
    /// <summary>
    /// Responsável pelo Faturamento.
    /// Preencher com: 
    /// 									1-Ferrovia de origem; 
    /// 									2-Ferrovia de destino.
    /// </summary>
    property respFat: Integer read FrespFat write FrespFat;
    /// <summary>
    /// Ferrovia Emitente do CTe.
    /// Preencher com: 
    /// 									1-Ferrovia de origem; 
    /// 									2-Ferrovia de destino.
    /// </summary>
    property ferrEmi: Integer read FferrEmi write FferrEmi;
    /// <summary>
    /// Valor do Frete do Tráfego Mútuo.
    /// </summary>
    property vFrete: Double read FvFrete write FvFrete;
    /// <summary>
    /// Chave de acesso do CT-e emitido pelo ferrovia de origem.
    /// </summary>
    property chCTeFerroOrigem: string read FchCTeFerroOrigem write SetchCTeFerroOrigem;
    property chCTeFerroOrigemHasValue: Boolean read FchCTeFerroOrigemHasValue write FchCTeFerroOrigemHasValue;
    /// <summary>
    /// Informações das Ferrovias Envolvidas.
    /// </summary>
    property ferroEnv: TCteSefazFerroEnvList read FferroEnv write SetferroEnv;
  end;
  
  TCteSefazFerrov = class
  private
    FtpTraf: Integer;
    FtrafMut: TCteSefazTrafMut;
    Ffluxo: string;
    procedure SettrafMut(const Value: TCteSefazTrafMut);
  public
    destructor Destroy; override;
    /// <summary>
    /// Tipo de Tráfego.
    /// Preencher com:
    /// 						0-Próprio;
    /// 						1-Mútuo;
    /// 						2-Rodoferroviário;
    /// 						3-Rodoviário.
    /// </summary>
    property tpTraf: Integer read FtpTraf write FtpTraf;
    /// <summary>
    /// Detalhamento de informações para o tráfego mútuo.
    /// </summary>
    property trafMut: TCteSefazTrafMut read FtrafMut write SettrafMut;
    /// <summary>
    /// Fluxo Ferroviário.
    /// Trata-se de um número identificador do contrato firmado com o cliente.
    /// </summary>
    property fluxo: string read Ffluxo write Ffluxo;
  end;
  
  TCteSefazBalsa = class
  private
    FxBalsa: string;
  public
    /// <summary>
    /// Identificador da Balsa.
    /// </summary>
    property xBalsa: string read FxBalsa write FxBalsa;
  end;
  
  TCteSefazBalsaList = class(TObjectList<TCteSefazBalsa>)
  end;
  
  TCteSefazLacre = class
  private
    FnLacre: string;
  public
    /// <summary>
    /// Lacre.
    /// </summary>
    property nLacre: string read FnLacre write FnLacre;
  end;
  
  TCteSefazLacreList = class(TObjectList<TCteSefazLacre>)
  end;
  
  TCteSefazDetContInfDocInfNF = class
  private
    Fserie: string;
    FnDoc: string;
    FunidRat: Double;
    FunidRatHasValue: Boolean;
    procedure SetunidRat(const Value: Double);
  public
    /// <summary>
    /// Série.
    /// </summary>
    property serie: string read Fserie write Fserie;
    /// <summary>
    /// Número.
    /// </summary>
    property nDoc: string read FnDoc write FnDoc;
    /// <summary>
    /// Unidade de medida rateada (Peso,Volume).
    /// </summary>
    property unidRat: Double read FunidRat write SetunidRat;
    property unidRatHasValue: Boolean read FunidRatHasValue write FunidRatHasValue;
  end;
  
  TCteSefazDetContInfDocInfNFList = class(TObjectList<TCteSefazDetContInfDocInfNF>)
  end;
  
  TCteSefazDetContInfDocInfNFe = class
  private
    Fchave: string;
    FunidRat: Double;
    FunidRatHasValue: Boolean;
    procedure SetunidRat(const Value: Double);
  public
    /// <summary>
    /// Chave de acesso da NF-e.
    /// </summary>
    property chave: string read Fchave write Fchave;
    /// <summary>
    /// Unidade de medida rateada (Peso,Volume).
    /// </summary>
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
    /// <summary>
    /// Informações das NF.
    /// </summary>
    property infNF: TCteSefazDetContInfDocInfNFList read FinfNF write SetinfNF;
    /// <summary>
    /// Informações das NFe.
    /// </summary>
    property infNFe: TCteSefazDetContInfDocInfNFeList read FinfNFe write SetinfNFe;
  end;
  
  TCteSefazDetCont = class
  private
    FnCont: string;
    Flacre: TCteSefazLacreList;
    FinfDoc: TCteSefazDetContInfDoc;
    procedure Setlacre(const Value: TCteSefazLacreList);
    procedure SetinfDoc(const Value: TCteSefazDetContInfDoc);
  public
    destructor Destroy; override;
    /// <summary>
    /// Identificação do Container.
    /// </summary>
    property nCont: string read FnCont write FnCont;
    /// <summary>
    /// Grupo de informações dos lacres dos cointainers da qtde da carga.
    /// </summary>
    property lacre: TCteSefazLacreList read Flacre write Setlacre;
    /// <summary>
    /// Informações dos documentos dos conteiners.
    /// </summary>
    property infDoc: TCteSefazDetContInfDoc read FinfDoc write SetinfDoc;
  end;
  
  TCteSefazDetContList = class(TObjectList<TCteSefazDetCont>)
  end;
  
  TCteSefazAquav = class
  private
    FvPrest: Double;
    FvAFRMM: Double;
    FxNavio: string;
    Fbalsa: TCteSefazBalsaList;
    FnViag: string;
    FnViagHasValue: Boolean;
    Fdirec: string;
    Firin: string;
    FdetCont: TCteSefazDetContList;
    FtpNav: Integer;
    FtpNavHasValue: Boolean;
    procedure Setbalsa(const Value: TCteSefazBalsaList);
    procedure SetnViag(const Value: string);
    procedure SetdetCont(const Value: TCteSefazDetContList);
    procedure SettpNav(const Value: Integer);
  public
    destructor Destroy; override;
    /// <summary>
    /// Valor da Prestação Base de Cálculo do AFRMM.
    /// </summary>
    property vPrest: Double read FvPrest write FvPrest;
    /// <summary>
    /// AFRMM (Adicional de Frete para Renovação da Marinha Mercante).
    /// </summary>
    property vAFRMM: Double read FvAFRMM write FvAFRMM;
    /// <summary>
    /// Identificação do Navio.
    /// </summary>
    property xNavio: string read FxNavio write FxNavio;
    /// <summary>
    /// Grupo de informações das balsas.
    /// </summary>
    property balsa: TCteSefazBalsaList read Fbalsa write Setbalsa;
    /// <summary>
    /// Número da Viagem.
    /// </summary>
    property nViag: string read FnViag write SetnViag;
    property nViagHasValue: Boolean read FnViagHasValue write FnViagHasValue;
    /// <summary>
    /// Direção.
    /// Preencher com: N-Norte, L-Leste, S-Sul, O-Oeste.
    /// </summary>
    property direc: string read Fdirec write Fdirec;
    /// <summary>
    /// Irin do navio sempre deverá ser informado.
    /// </summary>
    property irin: string read Firin write Firin;
    /// <summary>
    /// Grupo de informações de detalhamento dos conteiners 
    /// (Somente para Redespacho Intermediário e Serviço Vinculado a Multimodal).
    /// </summary>
    property detCont: TCteSefazDetContList read FdetCont write SetdetCont;
    /// <summary>
    /// Tipo de Navegação.
    /// Preencher com: 
    /// 						0 - Interior;
    /// 						1 - Cabotagem.
    /// </summary>
    property tpNav: Integer read FtpNav write SettpNav;
    property tpNavHasValue: Boolean read FtpNavHasValue write FtpNavHasValue;
  end;
  
  TCteSefazDuto = class
  private
    FvTar: Double;
    FvTarHasValue: Boolean;
    FdIni: TDate;
    FdFim: TDate;
    procedure SetvTar(const Value: Double);
  public
    /// <summary>
    /// Valor da tarifa.
    /// </summary>
    property vTar: Double read FvTar write SetvTar;
    property vTarHasValue: Boolean read FvTarHasValue write FvTarHasValue;
    /// <summary>
    /// Data de Início da prestação do serviço.
    /// </summary>
    property dIni: TDate read FdIni write FdIni;
    /// <summary>
    /// Data de Fim da prestação do serviço.
    /// </summary>
    property dFim: TDate read FdFim write FdFim;
  end;
  
  TCteSefazInfSeg = class
  private
    FxSeg: string;
    FCNPJ: string;
  public
    /// <summary>
    /// Nome da Seguradora.
    /// </summary>
    property xSeg: string read FxSeg write FxSeg;
    /// <summary>
    /// Número do CNPJ da seguradora.
    /// Obrigatório apenas se responsável pelo seguro for (2) responsável pela contratação do transporte - pessoa jurídica.
    /// </summary>
    property CNPJ: string read FCNPJ write FCNPJ;
  end;
  
  TCteSefazSeg = class
  private
    FinfSeg: TCteSefazInfSeg;
    FnApol: string;
    FnAver: string;
    procedure SetinfSeg(const Value: TCteSefazInfSeg);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Informações da seguradora.
    /// </summary>
    property infSeg: TCteSefazInfSeg read FinfSeg write SetinfSeg;
    /// <summary>
    /// Número da Apólice.
    /// Obrigatório pela lei 11.442/07 (RCTRC).
    /// </summary>
    property nApol: string read FnApol write FnApol;
    /// <summary>
    /// Número da Averbação.
    /// Não é obrigatório, pois muitas averbações ocorrem aapós a emissão do CT, mensalmente, por exemplo.
    /// </summary>
    property nAver: string read FnAver write FnAver;
  end;
  
  TCteSefazMultimodal = class
  private
    FCOTM: string;
    FindNegociavel: Integer;
    Fseg: TCteSefazSeg;
    procedure Setseg(const Value: TCteSefazSeg);
  public
    destructor Destroy; override;
    /// <summary>
    /// Número do Certificado do Operador de Transporte Multimodal.
    /// </summary>
    property COTM: string read FCOTM write FCOTM;
    /// <summary>
    /// Indicador Negociável
    /// Preencher com: 0 - Não Negociável; 1 - Negociável.
    /// </summary>
    property indNegociavel: Integer read FindNegociavel write FindNegociavel;
    /// <summary>
    /// Informações de Seguro do Multimodal.
    /// </summary>
    property seg: TCteSefazSeg read Fseg write Setseg;
  end;
  
  TCteSefazInfModal = class
  private
    FversaoModal: string;
    Frodo: TCteSefazRodo;
    Faereo: TCteSefazAereo;
    Fferrov: TCteSefazFerrov;
    Faquav: TCteSefazAquav;
    Fduto: TCteSefazDuto;
    Fmultimodal: TCteSefazMultimodal;
    procedure Setrodo(const Value: TCteSefazRodo);
    procedure Setaereo(const Value: TCteSefazAereo);
    procedure Setferrov(const Value: TCteSefazFerrov);
    procedure Setaquav(const Value: TCteSefazAquav);
    procedure Setduto(const Value: TCteSefazDuto);
    procedure Setmultimodal(const Value: TCteSefazMultimodal);
  public
    destructor Destroy; override;
    /// <summary>
    /// Versão do leiaute específico para o Modal.
    /// </summary>
    property versaoModal: string read FversaoModal write FversaoModal;
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
    FcCor: string;
    FxCor: string;
    FcMod: string;
    FvUnit: Double;
    FvFrete: Double;
  public
    /// <summary>
    /// Chassi do veículo.
    /// </summary>
    property chassi: string read Fchassi write Fchassi;
    /// <summary>
    /// Cor do veículo.
    /// Código de cada montadora.
    /// </summary>
    property cCor: string read FcCor write FcCor;
    /// <summary>
    /// Descrição da cor.
    /// </summary>
    property xCor: string read FxCor write FxCor;
    /// <summary>
    /// Código Marca Modelo.
    /// Utilizar tabela RENAVAM.
    /// </summary>
    property cMod: string read FcMod write FcMod;
    /// <summary>
    /// Valor Unitário do Veículo.
    /// </summary>
    property vUnit: Double read FvUnit write FvUnit;
    /// <summary>
    /// Frete Unitário.
    /// </summary>
    property vFrete: Double read FvFrete write FvFrete;
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
    /// <summary>
    /// Número da fatura.
    /// </summary>
    property nFat: string read FnFat write SetnFat;
    property nFatHasValue: Boolean read FnFatHasValue write FnFatHasValue;
    /// <summary>
    /// Valor original da fatura.
    /// </summary>
    property vOrig: Double read FvOrig write SetvOrig;
    property vOrigHasValue: Boolean read FvOrigHasValue write FvOrigHasValue;
    /// <summary>
    /// Valor do desconto da fatura.
    /// </summary>
    property vDesc: Double read FvDesc write SetvDesc;
    property vDescHasValue: Boolean read FvDescHasValue write FvDescHasValue;
    /// <summary>
    /// Valor líquido da fatura.
    /// </summary>
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
    /// <summary>
    /// Número da duplicata.
    /// </summary>
    property nDup: string read FnDup write SetnDup;
    property nDupHasValue: Boolean read FnDupHasValue write FnDupHasValue;
    /// <summary>
    /// Data de vencimento da duplicata (AAAA-MM-DD).
    /// </summary>
    property dVenc: TDate read FdVenc write SetdVenc;
    property dVencHasValue: Boolean read FdVencHasValue write FdVencHasValue;
    /// <summary>
    /// Valor da duplicata.
    /// </summary>
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
    /// <summary>
    /// Dados da fatura.
    /// </summary>
    property fat: TCteSefazFat read Ffat write Setfat;
    /// <summary>
    /// Dados das duplicatas.
    /// </summary>
    property dup: TCteSefazDupList read Fdup write Setdup;
  end;
  
  TCteSefazRefNF = class
  private
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    Fmod: string;
    Fserie: Integer;
    Fsubserie: Integer;
    FsubserieHasValue: Boolean;
    Fnro: Integer;
    Fvalor: Double;
    FdEmi: TDate;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
    procedure Setsubserie(const Value: Integer);
  public
    /// <summary>
    /// CNPJ do Emitente.
    /// Informar o CNPJ do emitente do Documento Fiscal.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Número do CPF.
    /// Informar o CPF do emitente do documento fiscal.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Modelo do Documento Fiscal.
    /// </summary>
    property &mod: string read Fmod write Fmod;
    /// <summary>
    /// Serie do documento fiscal.
    /// </summary>
    property serie: Integer read Fserie write Fserie;
    /// <summary>
    /// Subserie do documento fiscal.
    /// </summary>
    property subserie: Integer read Fsubserie write Setsubserie;
    property subserieHasValue: Boolean read FsubserieHasValue write FsubserieHasValue;
    /// <summary>
    /// Número do documento fiscal.
    /// </summary>
    property nro: Integer read Fnro write Fnro;
    /// <summary>
    /// Valor do documento fiscal.
    /// </summary>
    property valor: Double read Fvalor write Fvalor;
    /// <summary>
    /// Data de emissão do documento fiscal.
    /// </summary>
    property dEmi: TDate read FdEmi write FdEmi;
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
    /// <summary>
    /// Chave de acesso da NF-e emitida pelo Tomador.
    /// </summary>
    property refNFe: string read FrefNFe write SetrefNFe;
    property refNFeHasValue: Boolean read FrefNFeHasValue write FrefNFeHasValue;
    /// <summary>
    /// Informação da NF ou CT emitido pelo Tomador.
    /// </summary>
    property refNF: TCteSefazRefNF read FrefNF write SetrefNF;
    /// <summary>
    /// Chave de acesso do CT-e emitido pelo Tomador.
    /// </summary>
    property refCte: string read FrefCte write SetrefCte;
    property refCteHasValue: Boolean read FrefCteHasValue write FrefCteHasValue;
  end;
  
  TCteSefazInfCteSub = class
  private
    FchCte: string;
    FrefCteAnu: string;
    FrefCteAnuHasValue: Boolean;
    FtomaICMS: TCteSefazTomaICMS;
    FindAlteraToma: Integer;
    FindAlteraTomaHasValue: Boolean;
    procedure SetrefCteAnu(const Value: string);
    procedure SettomaICMS(const Value: TCteSefazTomaICMS);
    procedure SetindAlteraToma(const Value: Integer);
  public
    destructor Destroy; override;
    /// <summary>
    /// Chave de acesso do CT-e a ser substituído (original).
    /// </summary>
    property chCte: string read FchCte write FchCte;
    /// <summary>
    /// Chave de acesso do CT-e de Anulação.
    /// </summary>
    property refCteAnu: string read FrefCteAnu write SetrefCteAnu;
    property refCteAnuHasValue: Boolean read FrefCteAnuHasValue write FrefCteAnuHasValue;
    /// <summary>
    /// Tomador é contribuinte do ICMS, mas não é emitente de documento fiscal eletrônico.
    /// </summary>
    property tomaICMS: TCteSefazTomaICMS read FtomaICMS write SettomaICMS;
    /// <summary>
    /// Indicador de CT-e Alteração de Tomador.
    /// </summary>
    property indAlteraToma: Integer read FindAlteraToma write SetindAlteraToma;
    property indAlteraTomaHasValue: Boolean read FindAlteraTomaHasValue write FindAlteraTomaHasValue;
  end;
  
  TCteSefazInfGlobalizado = class
  private
    FxObs: string;
  public
    /// <summary>
    /// Preencher com informações adicionais, legislação do regime especial, etc.
    /// </summary>
    property xObs: string read FxObs write FxObs;
  end;
  
  TCteSefazInfCTeMultimodal = class
  private
    FchCTeMultimodal: string;
  public
    /// <summary>
    /// Chave de acesso do CT-e Multimodal.
    /// </summary>
    property chCTeMultimodal: string read FchCTeMultimodal write FchCTeMultimodal;
  end;
  
  TCteSefazInfCTeMultimodalList = class(TObjectList<TCteSefazInfCTeMultimodal>)
  end;
  
  TCteSefazInfServVinc = class
  private
    FinfCTeMultimodal: TCteSefazInfCTeMultimodalList;
    procedure SetinfCTeMultimodal(const Value: TCteSefazInfCTeMultimodalList);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// informações do CT-e multimodal vinculado.
    /// </summary>
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Informações da Carga do CT-e.
    /// </summary>
    property infCarga: TCteSefazInfCarga read FinfCarga write SetinfCarga;
    /// <summary>
    /// Informações dos documentos transportados pelo CT-e
    /// Opcional para Redespacho Intermediario e Serviço vinculado a multimodal.
    /// Poderá não ser informado para os CT-e de redespacho intermediário e serviço vinculado a multimodal. Nos demais casos deverá sempre ser informado.
    /// </summary>
    property infDoc: TCteSefazInfDoc read FinfDoc write SetinfDoc;
    /// <summary>
    /// Documentos de Transporte Anterior.
    /// </summary>
    property docAnt: TCteSefazDocAnt read FdocAnt write SetdocAnt;
    /// <summary>
    /// Informações do modal.
    /// </summary>
    property infModal: TCteSefazInfModal read FinfModal write SetinfModal;
    /// <summary>
    /// informações dos veículos transportados.
    /// </summary>
    property veicNovos: TCteSefazVeicNovosList read FveicNovos write SetveicNovos;
    /// <summary>
    /// Dados da cobrança do CT-e.
    /// </summary>
    property cobr: TCteSefazCobr read Fcobr write Setcobr;
    /// <summary>
    /// Informações do CT-e de substituição.
    /// </summary>
    property infCteSub: TCteSefazInfCteSub read FinfCteSub write SetinfCteSub;
    /// <summary>
    /// Informações do CT-e Globalizado.
    /// </summary>
    property infGlobalizado: TCteSefazInfGlobalizado read FinfGlobalizado write SetinfGlobalizado;
    /// <summary>
    /// Informações do Serviço Vinculado a Multimodal.
    /// </summary>
    property infServVinc: TCteSefazInfServVinc read FinfServVinc write SetinfServVinc;
  end;
  
  TCteSefazInfCteComp = class
  private
    FchCTe: string;
  public
    /// <summary>
    /// Chave do CT-e complementado.
    /// </summary>
    property chCTe: string read FchCTe write FchCTe;
  end;
  
  TCteSefazInfCteAnu = class
  private
    FchCte: string;
    FdEmi: TDate;
  public
    /// <summary>
    /// Chave de acesso do CT-e original a ser anulado e substituído.
    /// </summary>
    property chCte: string read FchCte write FchCte;
    /// <summary>
    /// Data de emissão da declaração do tomador não contribuinte do ICMS.
    /// </summary>
    property dEmi: TDate read FdEmi write FdEmi;
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
    /// <summary>
    /// CNPJ do autorizado.
    /// Informar zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// CPF do autorizado.
    /// Informar zeros não significativos.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
  end;
  
  TCteSefazAutXMLList = class(TObjectList<TCteSefazAutXML>)
  end;
  
  TCteSefazRespTec = class
  private
    FCNPJ: string;
    FxContato: string;
    Femail: string;
    Ffone: string;
    FidCSRT: Integer;
    FidCSRTHasValue: Boolean;
    FhashCSRT: string;
    FhashCSRTHasValue: Boolean;
    procedure SetidCSRT(const Value: Integer);
    procedure SethashCSRT(const Value: string);
  public
    /// <summary>
    /// CNPJ da pessoa jurídica responsável técnica pelo sistema utilizado na emissão do documento fiscal eletrônico.
    /// Informar o CNPJ da pessoa jurídica desenvolvedora do sistema utilizado na emissão do documento fiscal eletrônico.
    /// </summary>
    property CNPJ: string read FCNPJ write FCNPJ;
    /// <summary>
    /// Nome da pessoa a ser contatada.
    /// Informar o nome da pessoa a ser contatada na empresa desenvolvedora do sistema utilizado na emissão do documento fiscal eletrônico. No caso de pessoa física, informar o respectivo nome.
    /// </summary>
    property xContato: string read FxContato write FxContato;
    /// <summary>
    /// Email da pessoa jurídica a ser contatada.
    /// </summary>
    property email: string read Femail write Femail;
    /// <summary>
    /// Telefone da pessoa jurídica a ser contatada.
    /// Preencher com o Código DDD + número do telefone.
    /// </summary>
    property fone: string read Ffone write Ffone;
    /// <summary>
    /// Identificador do código de segurança do responsável técnico.
    /// Identificador do CSRT utilizado para geração do hash.
    /// </summary>
    property idCSRT: Integer read FidCSRT write SetidCSRT;
    property idCSRTHasValue: Boolean read FidCSRTHasValue write FidCSRTHasValue;
    /// <summary>
    /// Hash do token do código de segurança do responsável técnico.
    /// O hashCSRT é o resultado das funções SHA-1 e base64 do token CSRT fornecido pelo fisco + chave de acesso do DF-e. (Implementação em futura NT)
    /// 
    /// Observação: 28 caracteres são representados no schema como 20 bytes do tipo base64Binary.
    /// </summary>
    property hashCSRT: string read FhashCSRT write SethashCSRT;
    property hashCSRTHasValue: Boolean read FhashCSRTHasValue write FhashCSRTHasValue;
  end;
  
  TCteSefazInfSolicNFF = class
  private
    FxSolic: string;
  public
    /// <summary>
    /// Solicitação do pedido de emissão da NFF.
    /// Será preenchido com a totalidade de campos informados no aplicativo emissor serializado.
    /// </summary>
    property xSolic: string read FxSolic write FxSolic;
  end;
  
  TCteSefazInfCte = class
  private
    Fversao: string;
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Versão do leiaute.
    /// Ex: "3.00".
    /// </summary>
    property versao: string read Fversao write Fversao;
    /// <summary>
    /// Identificador da tag a ser assinada.
    /// Informar a chave de acesso do CT-e e precedida do literal "CTe".
    /// </summary>
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    /// <summary>
    /// Identificação do CT-e.
    /// </summary>
    property ide: TCteSefazIde read Fide write Setide;
    /// <summary>
    /// Dados complementares do CT-e para fins operacionais ou comerciais.
    /// </summary>
    property compl: TCteSefazCompl read Fcompl write Setcompl;
    /// <summary>
    /// Identificação do Emitente do CT-e.
    /// </summary>
    property emit: TCteSefazEmit read Femit write Setemit;
    /// <summary>
    /// Informações do Remetente das mercadorias transportadas pelo CT-e.
    /// Poderá não ser informado para os CT-e de redespacho intermediário e serviço vinculado a multimodal. Nos demais casos deverá sempre ser informado.
    /// </summary>
    property rem: TCteSefazRem read Frem write Setrem;
    /// <summary>
    /// Informações do Expedidor da Carga.
    /// </summary>
    property exped: TCteSefazExped read Fexped write Setexped;
    /// <summary>
    /// Informações do Recebedor da Carga.
    /// </summary>
    property receb: TCteSefazReceb read Freceb write Setreceb;
    /// <summary>
    /// Informações do Destinatário do CT-e.
    /// Poderá não ser informado para os CT-e de redespacho intermediário e serviço vinculado a multimodal. Nos demais casos deverá sempre ser informado.
    /// </summary>
    property dest: TCteSefazDest read Fdest write Setdest;
    /// <summary>
    /// Valores da Prestação de Serviço.
    /// </summary>
    property vPrest: TCteSefazVPrest read FvPrest write SetvPrest;
    /// <summary>
    /// Informações relativas aos Impostos.
    /// </summary>
    property imp: TCteSefazInfCteImp read Fimp write Setimp;
    /// <summary>
    /// Grupo de informações do CT-e Normal e Substituto.
    /// </summary>
    property infCTeNorm: TCteSefazInfCTeNorm read FinfCTeNorm write SetinfCTeNorm;
    /// <summary>
    /// Detalhamento do CT-e complementado.
    /// </summary>
    property infCteComp: TCteSefazInfCteComp read FinfCteComp write SetinfCteComp;
    /// <summary>
    /// Detalhamento do CT-e do tipo Anulação.
    /// </summary>
    property infCteAnu: TCteSefazInfCteAnu read FinfCteAnu write SetinfCteAnu;
    /// <summary>
    /// Autorizados para download do XML do DF-e.
    /// Informar CNPJ ou CPF. Preencher os zeros não significativos.
    /// </summary>
    property autXML: TCteSefazAutXMLList read FautXML write SetautXML;
    /// <summary>
    /// Informações do Responsável Técnico pela emissão do DF-e.
    /// </summary>
    property infRespTec: TCteSefazRespTec read FinfRespTec write SetinfRespTec;
    /// <summary>
    /// Grupo de informações do pedido de emissão da Nota Fiscal Fácil.
    /// </summary>
    property infSolicNFF: TCteSefazInfSolicNFF read FinfSolicNFF write SetinfSolicNFF;
  end;
  
  TCteSefazInfCTeSupl = class
  private
    FqrCodCTe: string;
    FqrCodCTeHasValue: Boolean;
    procedure SetqrCodCTe(const Value: string);
  public
    /// <summary>
    /// Texto com o QR-Code impresso no DACTE.
    /// Geramos automaticamente quando nenhum valor é informado.
    /// </summary>
    property qrCodCTe: string read FqrCodCTe write SetqrCodCTe;
    property qrCodCTeHasValue: Boolean read FqrCodCTeHasValue write FqrCodCTeHasValue;
  end;
  
  TCtePedidoEmissao = class
  private
    FinfCte: TCteSefazInfCte;
    FinfCTeSupl: TCteSefazInfCTeSupl;
    Fambiente: string;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    procedure SetinfCte(const Value: TCteSefazInfCte);
    procedure SetinfCTeSupl(const Value: TCteSefazInfCTeSupl);
    procedure Setreferencia(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    property infCte: TCteSefazInfCte read FinfCte write SetinfCte;
    property infCTeSupl: TCteSefazInfCTeSupl read FinfCTeSupl write SetinfCTeSupl;
    /// <summary>
    /// Identificação do Ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Fambiente;
    /// <summary>
    /// Seu identificador único para este documento. Opcional, ajuda a evitar o envio duplicado de um mesmo documento.
    /// </summary>
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
  end;
  
  TCtePedidoEmissaoList = class(TObjectList<TCtePedidoEmissao>)
  end;
  
  TCtePedidoEmissaoLote = class
  private
    Fdocumentos: TCtePedidoEmissaoList;
    Fambiente: string;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    Fid_lote: string;
    procedure Setdocumentos(const Value: TCtePedidoEmissaoList);
    procedure Setreferencia(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    property documentos: TCtePedidoEmissaoList read Fdocumentos write Setdocumentos;
    /// <summary>
    /// Identificação do Ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Fambiente;
    /// <summary>
    /// Seu identificador para este documento. Opcional, ajuda a evitar o envio duplicado de um mesmo documento.
    /// </summary>
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
    property id_lote: string read Fid_lote write Fid_lote;
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
    /// <summary>
    /// Número do Recibo
    /// </summary>
    property numero: string read Fnumero write Setnumero;
    property numeroHasValue: Boolean read FnumeroHasValue write FnumeroHasValue;
    /// <summary>
    /// Código do status da mensagem enviada.
    /// </summary>
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    /// <summary>
    /// Descrição literal do status do serviço solicitado.
    /// </summary>
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    /// <summary>
    /// Data e hora de processamento.
    /// </summary>
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    /// <summary>
    /// Código da Mensagem.
    /// </summary>
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    /// <summary>
    /// Mensagem da SEFAZ para o emissor.
    /// </summary>
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
  end;
  
  TDfeAutorEvento = class
  private
    Fcpf_cnpj: string;
    Fcpf_cnpjHasValue: Boolean;
    procedure Setcpf_cnpj(const Value: string);
  public
    /// <summary>
    /// CPF/CNPJ do Autor.
    /// </summary>
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
    /// <summary>
    /// Digest Value do DF-e processado. Utilizado para conferir a integridade do DF-e original.
    /// </summary>
    property digest_value: string read Fdigest_value write Setdigest_value;
    property digest_valueHasValue: Boolean read Fdigest_valueHasValue write Fdigest_valueHasValue;
    /// <summary>
    /// ID único gerado pela Nuvem Fiscal para este evento.
    /// </summary>
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    /// <summary>
    /// Identificação do ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    /// <summary>
    /// Status do Evento.
    /// </summary>
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    /// <summary>
    /// Identificação do autor do evento.
    /// </summary>
    property autor: TDfeAutorEvento read Fautor write Setautor;
    /// <summary>
    /// Chave de Acesso do documento vinculado ao evento.
    /// </summary>
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    /// <summary>
    /// Data e hora do Evento.
    /// </summary>
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    /// <summary>
    /// Sequencial do evento para o mesmo tipo de evento.
    /// </summary>
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    /// <summary>
    /// Data e hora do recebimento do Evento pela SEFAZ.
    /// </summary>
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    /// <summary>
    /// Código do status de registro do Evento.
    /// </summary>
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    /// <summary>
    /// Descrição literal do status do registro do Evento.
    /// </summary>
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    /// <summary>
    /// Número do Protocolo de registro do Evento.
    /// </summary>
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    /// <summary>
    /// Código da Mensagem.
    /// </summary>
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    /// <summary>
    /// Mensagem da SEFAZ para o emissor.
    /// </summary>
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
    /// <summary>
    /// ID único gerado pela Nuvem Fiscal para este documento.
    /// </summary>
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    /// <summary>
    /// Data/hora em que o documento foi criado na Nuvem Fiscal. Representado no formato [`ISO 8601`](https://en.wikipedia.org/wiki/ISO_8601).
    /// </summary>
    property created_at: TDateTime read Fcreated_at write Setcreated_at;
    property created_atHasValue: Boolean read Fcreated_atHasValue write Fcreated_atHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    /// <summary>
    /// Seu identificador único para este documento. Opcional, ajuda a evitar o envio duplicado de um mesmo documento.
    /// </summary>
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
    /// <summary>
    /// Chave de acesso do DF-e.
    /// </summary>
    property chave: string read Fchave write Setchave;
    property chaveHasValue: Boolean read FchaveHasValue write FchaveHasValue;
    /// <summary>
    /// Protocolo de status resultado do processamento do DF-e.
    /// </summary>
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
    /// <summary>
    /// ID único gerado pela Nuvem Fiscal para este documento.
    /// </summary>
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    property created_at: TDateTime read Fcreated_at write Setcreated_at;
    property created_atHasValue: Boolean read Fcreated_atHasValue write Fcreated_atHasValue;
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    /// <summary>
    /// Seu identificador único para este documento. Opcional, ajuda a evitar o envio duplicado de um mesmo documento.
    /// </summary>
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
    property id_lote: string read Fid_lote write Setid_lote;
    property id_loteHasValue: Boolean read Fid_loteHasValue write Fid_loteHasValue;
    property recibo: TDfeRecibo read Frecibo write Setrecibo;
    property documentos: TDfeList read Fdocumentos write Setdocumentos;
  end;
  
  TDfeLoteList = class(TObjectList<TDfeLote>)
  end;
  
  TDfeLoteListagem = class
  private
    F_count: Integer;
    F_countHasValue: Boolean;
    Fdata: TDfeLoteList;
    procedure Set_count(const Value: Integer);
    procedure Setdata(const Value: TDfeLoteList);
  public
    destructor Destroy; override;
    property _count: Integer read F_count write Set_count;
    property _countHasValue: Boolean read F_countHasValue write F_countHasValue;
    property data: TDfeLoteList read Fdata write Setdata;
  end;
  
  TDfeListagem = class
  private
    F_count: Integer;
    F_countHasValue: Boolean;
    Fdata: TDfeList;
    procedure Set_count(const Value: Integer);
    procedure Setdata(const Value: TDfeList);
  public
    destructor Destroy; override;
    property _count: Integer read F_count write Set_count;
    property _countHasValue: Boolean read F_countHasValue write F_countHasValue;
    property data: TDfeList read Fdata write Setdata;
  end;
  
  TCtePedidoCancelamento = class
  private
    Fjustificativa: string;
    FjustificativaHasValue: Boolean;
    procedure Setjustificativa(const Value: string);
  public
    /// <summary>
    /// Justificativa para o cancelamento. Preencheremos automaticamente, caso esteja em branco.
    /// </summary>
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
    /// <summary>
    /// Justificativa do cancelamento.
    /// </summary>
    property justificativa: string read Fjustificativa write Setjustificativa;
    property justificativaHasValue: Boolean read FjustificativaHasValue write FjustificativaHasValue;
    /// <summary>
    /// ID único gerado pela Nuvem Fiscal para este evento.
    /// </summary>
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    /// <summary>
    /// Identificação do ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    /// <summary>
    /// Status do Evento.
    /// </summary>
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    /// <summary>
    /// Identificação do autor do evento.
    /// </summary>
    property autor: TDfeAutorEvento read Fautor write Setautor;
    /// <summary>
    /// Chave de Acesso do documento vinculado ao evento.
    /// </summary>
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    /// <summary>
    /// Data e hora do Evento.
    /// </summary>
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    /// <summary>
    /// Sequencial do evento para o mesmo tipo de evento.
    /// </summary>
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    /// <summary>
    /// Data e hora do recebimento do Evento pela SEFAZ.
    /// </summary>
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    /// <summary>
    /// Código do status de registro do Evento.
    /// </summary>
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    /// <summary>
    /// Descrição literal do status do registro do Evento.
    /// </summary>
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    /// <summary>
    /// Número do Protocolo de registro do Evento.
    /// </summary>
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    /// <summary>
    /// Código da Mensagem.
    /// </summary>
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    /// <summary>
    /// Mensagem da SEFAZ para o emissor.
    /// </summary>
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TCteInfCorrecao = class
  private
    Fgrupo_alterado: string;
    Fcampo_alterado: string;
    Fvalor_alterado: string;
    Fnumero_item_alterado: Integer;
    Fnumero_item_alteradoHasValue: Boolean;
    procedure Setnumero_item_alterado(const Value: Integer);
  public
    /// <summary>
    /// Indicar o grupo de informações que pertence o "campo_alterado". Ex: ide.
    /// </summary>
    property grupo_alterado: string read Fgrupo_alterado write Fgrupo_alterado;
    /// <summary>
    /// Nome do campo modificado do CT-e Original.
    /// </summary>
    property campo_alterado: string read Fcampo_alterado write Fcampo_alterado;
    /// <summary>
    /// Valor correspondente à alteração.
    /// </summary>
    property valor_alterado: string read Fvalor_alterado write Fvalor_alterado;
    /// <summary>
    /// Preencher com o indice do item alterado caso a alteração ocorra em uma lista.
    /// OBS: O indice inicia sempre em 1.
    /// </summary>
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Grupo de Informações de Correção.
    /// </summary>
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Grupo de Informações de Correção.
    /// </summary>
    property correcoes: TCteInfCorrecaoList read Fcorrecoes write Setcorrecoes;
    /// <summary>
    /// ID único gerado pela Nuvem Fiscal para este evento.
    /// </summary>
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    /// <summary>
    /// Identificação do ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    /// <summary>
    /// Status do Evento.
    /// </summary>
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    /// <summary>
    /// Identificação do autor do evento.
    /// </summary>
    property autor: TDfeAutorEvento read Fautor write Setautor;
    /// <summary>
    /// Chave de Acesso do documento vinculado ao evento.
    /// </summary>
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    /// <summary>
    /// Data e hora do Evento.
    /// </summary>
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    /// <summary>
    /// Sequencial do evento para o mesmo tipo de evento.
    /// </summary>
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    /// <summary>
    /// Data e hora do recebimento do Evento pela SEFAZ.
    /// </summary>
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    /// <summary>
    /// Código do status de registro do Evento.
    /// </summary>
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    /// <summary>
    /// Descrição literal do status do registro do Evento.
    /// </summary>
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    /// <summary>
    /// Número do Protocolo de registro do Evento.
    /// </summary>
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    /// <summary>
    /// Código da Mensagem.
    /// </summary>
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    /// <summary>
    /// Mensagem da SEFAZ para o emissor.
    /// </summary>
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TDfePedidoInutilizacao = class
  private
    Fambiente: string;
    Fcnpj: string;
    Fano: Integer;
    Fserie: Integer;
    Fnumero_inicial: Integer;
    Fnumero_final: Integer;
    Fjustificativa: string;
  public
    /// <summary>
    /// Identificação do Ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Fambiente;
    /// <summary>
    /// CNPJ do emitente.
    /// </summary>
    property cnpj: string read Fcnpj write Fcnpj;
    /// <summary>
    /// Ano de inutilização da numeração.
    /// </summary>
    property ano: Integer read Fano write Fano;
    /// <summary>
    /// Série da NF-e.
    /// </summary>
    property serie: Integer read Fserie write Fserie;
    /// <summary>
    /// Número da NF-e inicial.
    /// </summary>
    property numero_inicial: Integer read Fnumero_inicial write Fnumero_inicial;
    /// <summary>
    /// Número da NF-e final.
    /// </summary>
    property numero_final: Integer read Fnumero_final write Fnumero_final;
    /// <summary>
    /// Justificativa do pedido de inutilização.
    /// </summary>
    property justificativa: string read Fjustificativa write Fjustificativa;
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
    /// <summary>
    /// ID único gerado pela Nuvem Fiscal para este evento.
    /// </summary>
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    /// <summary>
    /// Identificação do ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    /// <summary>
    /// Status do Evento.
    /// </summary>
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    /// <summary>
    /// Identificação do autor do evento.
    /// </summary>
    property autor: TDfeAutorEvento read Fautor write Setautor;
    /// <summary>
    /// Chave de Acesso do documento vinculado ao evento.
    /// </summary>
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    /// <summary>
    /// Data e hora do Evento.
    /// </summary>
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    /// <summary>
    /// Sequencial do evento para o mesmo tipo de evento.
    /// </summary>
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    /// <summary>
    /// Data e hora do recebimento do Evento pela SEFAZ.
    /// </summary>
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    /// <summary>
    /// Código do status de registro do Evento.
    /// </summary>
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    /// <summary>
    /// Descrição literal do status do registro do Evento.
    /// </summary>
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    /// <summary>
    /// Número do Protocolo de registro do Evento.
    /// </summary>
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    /// <summary>
    /// Código da Mensagem.
    /// </summary>
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    /// <summary>
    /// Mensagem da SEFAZ para o emissor.
    /// </summary>
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
    /// <summary>
    /// ID único gerado pela Nuvem Fiscal para este evento.
    /// </summary>
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    /// <summary>
    /// Identificação do ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    /// <summary>
    /// Status do Evento.
    /// </summary>
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    /// <summary>
    /// Identificação do autor do evento.
    /// </summary>
    property autor: TDfeAutorEvento read Fautor write Setautor;
    /// <summary>
    /// Chave de Acesso do documento vinculado ao evento.
    /// </summary>
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    /// <summary>
    /// Data e hora do Evento.
    /// </summary>
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    /// <summary>
    /// Sequencial do evento para o mesmo tipo de evento.
    /// </summary>
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    /// <summary>
    /// Data e hora do recebimento do Evento pela SEFAZ.
    /// </summary>
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    /// <summary>
    /// Código do status de registro do Evento.
    /// </summary>
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    /// <summary>
    /// Descrição literal do status do registro do Evento.
    /// </summary>
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    /// <summary>
    /// Número do Protocolo de registro do Evento.
    /// </summary>
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    /// <summary>
    /// Código da Mensagem.
    /// </summary>
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    /// <summary>
    /// Mensagem da SEFAZ para o emissor.
    /// </summary>
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TMdfeSefazInfMunCarrega = class
  private
    FcMunCarrega: string;
    FxMunCarrega: string;
  public
    /// <summary>
    /// Código do Município de Carregamento.
    /// </summary>
    property cMunCarrega: string read FcMunCarrega write FcMunCarrega;
    /// <summary>
    /// Nome do Município de Carregamento.
    /// </summary>
    property xMunCarrega: string read FxMunCarrega write FxMunCarrega;
  end;
  
  TMdfeSefazInfMunCarregaList = class(TObjectList<TMdfeSefazInfMunCarrega>)
  end;
  
  TMdfeSefazInfPercurso = class
  private
    FUFPer: string;
  public
    /// <summary>
    /// Sigla das Unidades da Federação do percurso do veículo.
    /// Não é necessário repetir as UF de Início e Fim.
    /// </summary>
    property UFPer: string read FUFPer write FUFPer;
  end;
  
  TMdfeSefazInfPercursoList = class(TObjectList<TMdfeSefazInfPercurso>)
  end;
  
  TMdfeSefazIde = class
  private
    FcUF: Integer;
    FtpAmb: Integer;
    FtpAmbHasValue: Boolean;
    FtpEmit: Integer;
    FtpTransp: Integer;
    FtpTranspHasValue: Boolean;
    Fmod: Integer;
    FmodHasValue: Boolean;
    Fserie: Integer;
    FnMDF: Integer;
    FcMDF: string;
    FcMDFHasValue: Boolean;
    FcDV: Integer;
    FcDVHasValue: Boolean;
    Fmodal: Integer;
    FdhEmi: TDateTime;
    FtpEmis: Integer;
    FprocEmi: string;
    FverProc: string;
    FUFIni: string;
    FUFFim: string;
    FinfMunCarrega: TMdfeSefazInfMunCarregaList;
    FinfPercurso: TMdfeSefazInfPercursoList;
    FdhIniViagem: TDateTime;
    FdhIniViagemHasValue: Boolean;
    FindCanalVerde: Integer;
    FindCanalVerdeHasValue: Boolean;
    FindCarregaPosterior: Integer;
    FindCarregaPosteriorHasValue: Boolean;
    procedure SettpAmb(const Value: Integer);
    procedure SettpTransp(const Value: Integer);
    procedure Setmod(const Value: Integer);
    procedure SetcMDF(const Value: string);
    procedure SetcDV(const Value: Integer);
    procedure SetinfMunCarrega(const Value: TMdfeSefazInfMunCarregaList);
    procedure SetinfPercurso(const Value: TMdfeSefazInfPercursoList);
    procedure SetdhIniViagem(const Value: TDateTime);
    procedure SetindCanalVerde(const Value: Integer);
    procedure SetindCarregaPosterior(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Código da UF do emitente do MDF-e.
    /// Código da UF do emitente do Documento Fiscal. Utilizar a
    /// Tabela do IBGE de código de unidades da federação.
    /// </summary>
    property cUF: Integer read FcUF write FcUF;
    /// <summary>
    /// Tipo do Ambiente.
    /// 1 - Produção
    /// 2 - Homologação.
    /// </summary>
    property tpAmb: Integer read FtpAmb write SettpAmb;
    property tpAmbHasValue: Boolean read FtpAmbHasValue write FtpAmbHasValue;
    /// <summary>
    /// Tipo do Emitente.
    /// 1 - Prestador de serviço de transporte 
    /// 2 - Transportador de Carga Própria 3 - Prestador de serviço de transporte que emitirá CT-e Globalizado 
    /// 
    /// OBS: Deve ser preenchido com 2 para emitentes de NF-e e pelas transportadoras quando estiverem fazendo transporte de carga própria. Deve ser preenchido com 3 para transportador de carga que emitirá à posteriori CT-e Globalizado relacionando as NF-e.
    /// </summary>
    property tpEmit: Integer read FtpEmit write FtpEmit;
    /// <summary>
    /// Tipo do Transportador.
    /// 1 - ETC
    /// 
    /// 2 - TAC
    /// 
    /// 3 - CTC.
    /// </summary>
    property tpTransp: Integer read FtpTransp write SettpTransp;
    property tpTranspHasValue: Boolean read FtpTranspHasValue write FtpTranspHasValue;
    /// <summary>
    /// Modelo do Manifesto Eletrônico.
    /// Utilizar o código 58 para identificação do MDF-e.
    /// </summary>
    property &mod: Integer read Fmod write Setmod;
    property &modHasValue: Boolean read FmodHasValue write FmodHasValue;
    /// <summary>
    /// Série do Manifesto.
    /// Informar a série do documento fiscal (informar zero se inexistente).
    /// Série na faixa [920-969]: Reservada para emissão por contribuinte pessoa física com inscrição estadual.
    /// </summary>
    property serie: Integer read Fserie write Fserie;
    /// <summary>
    /// Número do Manifesto.
    /// Número que identifica o Manifesto. 1 a 999999999.
    /// </summary>
    property nMDF: Integer read FnMDF write FnMDF;
    /// <summary>
    /// Código numérico que compõe a Chave de Acesso.
    /// Código aleatório gerado pelo emitente, com o objetivo de evitar acessos indevidos ao documento.
    /// Geramos automaticamente quando nenhum valor é informado.
    /// </summary>
    property cMDF: string read FcMDF write SetcMDF;
    property cMDFHasValue: Boolean read FcMDFHasValue write FcMDFHasValue;
    /// <summary>
    /// Digito verificador da chave de acesso do Manifesto.
    /// Informar o dígito  de controle da chave de acesso do MDF-e, que deve ser calculado com a aplicação do algoritmo módulo 11 (base 2,9) da chave de acesso.
    /// Geramos automaticamente quando nenhum valor é informado.
    /// </summary>
    property cDV: Integer read FcDV write SetcDV;
    property cDVHasValue: Boolean read FcDVHasValue write FcDVHasValue;
    /// <summary>
    /// Modalidade de transporte.
    /// 1 - Rodoviário;
    /// 2 - Aéreo; 3 - Aquaviário; 4 - Ferroviário.
    /// </summary>
    property modal: Integer read Fmodal write Fmodal;
    /// <summary>
    /// Data e hora de emissão do Manifesto.
    /// Formato AAAA-MM-DDTHH:MM:DD TZD.
    /// </summary>
    property dhEmi: TDateTime read FdhEmi write FdhEmi;
    /// <summary>
    /// Forma de emissão do Manifesto.
    /// 1 - Normal
    /// ; 2 - Contingência; 3-Regime Especial NFF.
    /// </summary>
    property tpEmis: Integer read FtpEmis write FtpEmis;
    /// <summary>
    /// Identificação do processo de emissão do Manifesto.
    /// 0 - emissão de MDF-e com aplicativo do contribuinte.
    /// </summary>
    property procEmi: string read FprocEmi write FprocEmi;
    /// <summary>
    /// Versão do processo de emissão.
    /// Informar a versão do aplicativo emissor de MDF-e.
    /// </summary>
    property verProc: string read FverProc write FverProc;
    /// <summary>
    /// Sigla da UF do Carregamento.
    /// Utilizar a Tabela do IBGE de código de unidades da federação.
    /// Informar 'EX' para operações com o exterior.
    /// </summary>
    property UFIni: string read FUFIni write FUFIni;
    /// <summary>
    /// Sigla da UF do Descarregamento.
    /// Utilizar a Tabela do IBGE de código de unidades da federação.
    /// Informar 'EX' para operações com o exterior.
    /// </summary>
    property UFFim: string read FUFFim write FUFFim;
    /// <summary>
    /// Informações dos Municípios de Carregamento.
    /// </summary>
    property infMunCarrega: TMdfeSefazInfMunCarregaList read FinfMunCarrega write SetinfMunCarrega;
    /// <summary>
    /// Informações do Percurso do MDF-e.
    /// </summary>
    property infPercurso: TMdfeSefazInfPercursoList read FinfPercurso write SetinfPercurso;
    /// <summary>
    /// Data e hora previstos de inicio da viagem.
    /// Formato AAAA-MM-DDTHH:MM:DD TZD.
    /// </summary>
    property dhIniViagem: TDateTime read FdhIniViagem write SetdhIniViagem;
    property dhIniViagemHasValue: Boolean read FdhIniViagemHasValue write FdhIniViagemHasValue;
    /// <summary>
    /// Indicador de participação do Canal Verde.
    /// </summary>
    property indCanalVerde: Integer read FindCanalVerde write SetindCanalVerde;
    property indCanalVerdeHasValue: Boolean read FindCanalVerdeHasValue write FindCanalVerdeHasValue;
    /// <summary>
    /// Indicador de MDF-e com inclusão da Carga posterior a emissão por evento de inclusão de DF-e.
    /// </summary>
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
    FcMun: string;
    FcMunHasValue: Boolean;
    FxMun: string;
    FxMunHasValue: Boolean;
    FCEP: string;
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
    procedure SetcMun(const Value: string);
    procedure SetxMun(const Value: string);
    procedure SetCEP(const Value: string);
    procedure SetUF(const Value: string);
    procedure Setfone(const Value: string);
    procedure Setemail(const Value: string);
  public
    /// <summary>
    /// Logradouro.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xLgr: string read FxLgr write SetxLgr;
    property xLgrHasValue: Boolean read FxLgrHasValue write FxLgrHasValue;
    /// <summary>
    /// Número.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property nro: string read Fnro write Setnro;
    property nroHasValue: Boolean read FnroHasValue write FnroHasValue;
    /// <summary>
    /// Complemento.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xCpl: string read FxCpl write SetxCpl;
    property xCplHasValue: Boolean read FxCplHasValue write FxCplHasValue;
    /// <summary>
    /// Bairro.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xBairro: string read FxBairro write SetxBairro;
    property xBairroHasValue: Boolean read FxBairroHasValue write FxBairroHasValue;
    /// <summary>
    /// Código do município (utilizar a tabela do IBGE), informar 9999999 para operações com o exterior.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property cMun: string read FcMun write SetcMun;
    property cMunHasValue: Boolean read FcMunHasValue write FcMunHasValue;
    /// <summary>
    /// Nome do município, , informar EXTERIOR para operações com o exterior.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xMun: string read FxMun write SetxMun;
    property xMunHasValue: Boolean read FxMunHasValue write FxMunHasValue;
    /// <summary>
    /// CEP.
    /// Informar zeros não significativos.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property CEP: string read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    /// <summary>
    /// Sigla da UF, , informar EX para operações com o exterior.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    /// <summary>
    /// Telefone.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    /// <summary>
    /// Endereço de E-mail.
    /// </summary>
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
    /// <summary>
    /// CNPJ do emitente.
    /// Informar zeros não significativos.
    /// Obrigatório caso o emitente seja pessoa jurídica.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// CPF do emitente.
    /// Informar zeros não significativos.
    /// 
    /// Usar com série específica 920-969 para emitente pessoa física com inscrição estadual.
    /// Poderá ser usado também para emissão do Regime Especial da Nota Fiscal Fácil.
    /// Obrigatorio caso o emitente seja pessoa física.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Inscrição Estadual do emitemte.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    /// <summary>
    /// Razão social ou Nome do emitente.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    /// <summary>
    /// Nome fantasia do emitente.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xFant: string read FxFant write SetxFant;
    property xFantHasValue: Boolean read FxFantHasValue write FxFantHasValue;
    /// <summary>
    /// Endereço do emitente.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property enderEmit: TMdfeSefazEndeEmi read FenderEmit write SetenderEmit;
  end;
  
  TMdfeSefazAereo = class
  private
    Fnac: string;
    Fmatr: string;
    FnVoo: string;
    FcAerEmb: string;
    FcAerDes: string;
    FdVoo: TDate;
  public
    /// <summary>
    /// Marca da Nacionalidade da aeronave.
    /// </summary>
    property nac: string read Fnac write Fnac;
    /// <summary>
    /// Marca de Matrícula da aeronave.
    /// </summary>
    property matr: string read Fmatr write Fmatr;
    /// <summary>
    /// Número do Voo.
    /// Formato = AB1234, sendo AB a designação da empresa e 1234 o número do voo. Quando não for possível incluir as marcas de nacionalidade e matrícula sem hífen.
    /// </summary>
    property nVoo: string read FnVoo write FnVoo;
    /// <summary>
    /// Aeródromo de Embarque.
    /// O código de três letras IATA do aeroporto de partida deverá ser incluído como primeira anotação. Quando não for possível, utilizar a sigla OACI.
    /// </summary>
    property cAerEmb: string read FcAerEmb write FcAerEmb;
    /// <summary>
    /// Aeródromo de Destino.
    /// O código de três letras IATA do aeroporto de destino deverá ser incluído como primeira anotação. Quando não for possível, utilizar a sigla OACI.
    /// </summary>
    property cAerDes: string read FcAerDes write FcAerDes;
    /// <summary>
    /// Data do Voo.
    /// Formato AAAA-MM-DD.
    /// </summary>
    property dVoo: TDate read FdVoo write FdVoo;
  end;
  
  TMdfeSefazInfCIOT = class
  private
    FCIOT: string;
    FCPF: string;
    FCPFHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    procedure SetCPF(const Value: string);
    procedure SetCNPJ(const Value: string);
  public
    /// <summary>
    /// Código Identificador da Operação de Transporte.
    /// Também Conhecido como conta frete.
    /// </summary>
    property CIOT: string read FCIOT write FCIOT;
    /// <summary>
    /// Número do CPF responsável pela geração do CIOT.
    /// Informar os zeros não significativos.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Número do CNPJ responsável pela geração do CIOT.
    /// Informar os zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
  end;
  
  TMdfeSefazInfCIOTList = class(TObjectList<TMdfeSefazInfCIOT>)
  end;
  
  TMdfeSefazDisp = class
  private
    FCNPJForn: string;
    FCNPJPg: string;
    FCNPJPgHasValue: Boolean;
    FCPFPg: string;
    FCPFPgHasValue: Boolean;
    FnCompra: string;
    FnCompraHasValue: Boolean;
    FvValePed: Double;
    FtpValePed: string;
    FtpValePedHasValue: Boolean;
    procedure SetCNPJPg(const Value: string);
    procedure SetCPFPg(const Value: string);
    procedure SetnCompra(const Value: string);
    procedure SettpValePed(const Value: string);
  public
    /// <summary>
    /// CNPJ da empresa fornecedora do Vale-Pedágio.
    /// - CNPJ da Empresa Fornecedora do Vale-Pedágio, ou seja, empresa que fornece ao Responsável pelo Pagamento do Vale-Pedágio os dispositivos do Vale-Pedágio.
    /// 									- Informar os zeros não significativos.
    /// </summary>
    property CNPJForn: string read FCNPJForn write FCNPJForn;
    /// <summary>
    /// CNPJ do responsável pelo pagamento do Vale-Pedágio.
    /// - responsável pelo pagamento do Vale Pedágio. Informar somente quando o responsável não for o emitente do MDF-e.
    /// 									- Informar os zeros não significativos.
    /// </summary>
    property CNPJPg: string read FCNPJPg write SetCNPJPg;
    property CNPJPgHasValue: Boolean read FCNPJPgHasValue write FCNPJPgHasValue;
    /// <summary>
    /// CNPJ do responsável pelo pagamento do Vale-Pedágio.
    /// Informar os zeros não significativos.
    /// </summary>
    property CPFPg: string read FCPFPg write SetCPFPg;
    property CPFPgHasValue: Boolean read FCPFPgHasValue write FCPFPgHasValue;
    /// <summary>
    /// Número do comprovante de compra.
    /// Número de ordem do comprovante de compra do Vale-Pedágio fornecido para cada veículo ou combinação veicular, por viagem.
    /// </summary>
    property nCompra: string read FnCompra write SetnCompra;
    property nCompraHasValue: Boolean read FnCompraHasValue write FnCompraHasValue;
    /// <summary>
    /// Valor do Vale-Pedagio.
    /// Valor do Vale-Pedágio obrigatório necessário à livre circulação, desde a origem da operação de transporte até o destino, do transportador contratado.
    /// </summary>
    property vValePed: Double read FvValePed write FvValePed;
    /// <summary>
    /// Tipo do Vale Pedagio.
    /// 01 - TAG; 02 - Cupom; 03 - Cartão.
    /// </summary>
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Informações dos dispositivos do Vale Pedágio.
    /// </summary>
    property disp: TMdfeSefazDispList read Fdisp write Setdisp;
    /// <summary>
    /// Categoria de Combinação Veicular.
    /// Preencher com:
    /// 
    /// 02 Veículo Comercial 2 eixos;0
    /// 4 Veículo Comercial 3 eixos;
    /// 06 Veículo Comercial 4 eixos;0
    /// 7 Veículo Comercial 5 eixos; 0
    /// 8 Veículo Comercial 6 eixos;
    /// 10 Veículo Comercial 7 eixos;
    /// 11 Veículo Comercial 8 eixos;
    /// 12 Veículo Comercial 9 eixos;
    /// 13 Veículo Comercial 10 eixos;
    /// 14 Veículo Comercial Acima de 10 eixos;.
    /// </summary>
    property categCombVeic: string read FcategCombVeic write SetcategCombVeic;
    property categCombVeicHasValue: Boolean read FcategCombVeicHasValue write FcategCombVeicHasValue;
  end;
  
  TMdfeSefazInfContrato = class
  private
    FNroContrato: string;
    FvContratoGlobal: Double;
  public
    /// <summary>
    /// Número do contrato do transportador com o contratante quando este existir para prestações continuadas.
    /// </summary>
    property NroContrato: string read FNroContrato write FNroContrato;
    /// <summary>
    /// Valor global do contrato.
    /// </summary>
    property vContratoGlobal: Double read FvContratoGlobal write FvContratoGlobal;
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
    FinfContrato: TMdfeSefazInfContrato;
    procedure SetxNome(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetidEstrangeiro(const Value: string);
    procedure SetinfContrato(const Value: TMdfeSefazInfContrato);
  public
    destructor Destroy; override;
    /// <summary>
    /// Razão social ou Nome do contratante.
    /// </summary>
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    /// <summary>
    /// Número do CPF do contratante do serviço.
    /// Informar os zeros não significativos.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Número do CNPJ do contratante do serviço.
    /// Informar os zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Identificador do contratante em caso de contratante estrangeiro.
    /// </summary>
    property idEstrangeiro: string read FidEstrangeiro write SetidEstrangeiro;
    property idEstrangeiroHasValue: Boolean read FidEstrangeiroHasValue write FidEstrangeiroHasValue;
    /// <summary>
    /// Grupo de informações do contrato entre transportador e contratante.
    /// </summary>
    property infContrato: TMdfeSefazInfContrato read FinfContrato write SetinfContrato;
  end;
  
  TMdfeSefazInfContratanteList = class(TObjectList<TMdfeSefazInfContratante>)
  end;
  
  TMdfeSefazComp = class
  private
    FtpComp: string;
    FvComp: Double;
    FxComp: string;
    FxCompHasValue: Boolean;
    procedure SetxComp(const Value: string);
  public
    /// <summary>
    /// Tipo do Componente.
    /// Preencher com: 01 - Vale Pedágio; 
    /// 02 - Impostos, taxas e contribuições; 
    /// 03 - Despesas (bancárias, meios de pagamento, outras)
    /// ; 99 - Outros.
    /// </summary>
    property tpComp: string read FtpComp write FtpComp;
    /// <summary>
    /// Valor do componente.
    /// </summary>
    property vComp: Double read FvComp write FvComp;
    /// <summary>
    /// Descrição do componente do tipo Outros.
    /// </summary>
    property xComp: string read FxComp write SetxComp;
    property xCompHasValue: Boolean read FxCompHasValue write FxCompHasValue;
  end;
  
  TMdfeSefazCompList = class(TObjectList<TMdfeSefazComp>)
  end;
  
  TMdfeSefazInfPrazo = class
  private
    FnParcela: Integer;
    FdVenc: TDate;
    FvParcela: Double;
  public
    /// <summary>
    /// Número da Parcela.
    /// </summary>
    property nParcela: Integer read FnParcela write FnParcela;
    /// <summary>
    /// Data de vencimento da Parcela (AAAA-MM-DD).
    /// </summary>
    property dVenc: TDate read FdVenc write FdVenc;
    /// <summary>
    /// Valor da Parcela.
    /// </summary>
    property vParcela: Double read FvParcela write FvParcela;
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
    /// <summary>
    /// Número do banco.
    /// </summary>
    property codBanco: string read FcodBanco write SetcodBanco;
    property codBancoHasValue: Boolean read FcodBancoHasValue write FcodBancoHasValue;
    /// <summary>
    /// Número da agência bancária.
    /// </summary>
    property codAgencia: string read FcodAgencia write SetcodAgencia;
    property codAgenciaHasValue: Boolean read FcodAgenciaHasValue write FcodAgenciaHasValue;
    /// <summary>
    /// Número do CNPJ da Instituição de Pagamento Eletrônico do Frete.
    /// Informar os zeros não significativos.
    /// </summary>
    property CNPJIPEF: string read FCNPJIPEF write SetCNPJIPEF;
    property CNPJIPEFHasValue: Boolean read FCNPJIPEFHasValue write FCNPJIPEFHasValue;
    /// <summary>
    /// Chave PIX.
    /// Informar a chave PIX para recebimento do frete. 
    /// Pode ser email, CPF/ CNPJ (somente numeros), Telefone com a seguinte formatação (+5599999999999) ou a chave aleatória gerada pela instituição.
    /// </summary>
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
    FindAltoDesemp: Integer;
    FindAltoDesempHasValue: Boolean;
    FindPag: Integer;
    FvAdiant: Double;
    FvAdiantHasValue: Boolean;
    FindAntecipaAdiant: Integer;
    FindAntecipaAdiantHasValue: Boolean;
    FinfPrazo: TMdfeSefazInfPrazoList;
    FtpAntecip: Integer;
    FtpAntecipHasValue: Boolean;
    FinfBanc: TMdfeSefazInfBanc;
    procedure SetxNome(const Value: string);
    procedure SetCPF(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetidEstrangeiro(const Value: string);
    procedure SetComp(const Value: TMdfeSefazCompList);
    procedure SetindAltoDesemp(const Value: Integer);
    procedure SetvAdiant(const Value: Double);
    procedure SetindAntecipaAdiant(const Value: Integer);
    procedure SetinfPrazo(const Value: TMdfeSefazInfPrazoList);
    procedure SettpAntecip(const Value: Integer);
    procedure SetinfBanc(const Value: TMdfeSefazInfBanc);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Razão social ou Nome do respnsável pelo pagamento.
    /// </summary>
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    /// <summary>
    /// Número do CPF do responsável pelo pgto.
    /// Informar os zeros não significativos.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Número do CNPJ do responsável pelo pgto.
    /// Informar os zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Identificador do responsável pelo pgto em caso de ser estrangeiro.
    /// </summary>
    property idEstrangeiro: string read FidEstrangeiro write SetidEstrangeiro;
    property idEstrangeiroHasValue: Boolean read FidEstrangeiroHasValue write FidEstrangeiroHasValue;
    /// <summary>
    /// Componentes do Pagamentoi do Frete.
    /// </summary>
    property Comp: TMdfeSefazCompList read FComp write SetComp;
    /// <summary>
    /// Valor Total do Contrato.
    /// </summary>
    property vContrato: Double read FvContrato write FvContrato;
    /// <summary>
    /// Indicador de operação de transporte de alto desempenho.
    /// Operação de transporte com utilização de veículos de frotas dedicadas ou fidelizadas.
    /// Preencher com “1” para indicar operação de transporte de alto desempenho, demais casos não informar a tag.
    /// </summary>
    property indAltoDesemp: Integer read FindAltoDesemp write SetindAltoDesemp;
    property indAltoDesempHasValue: Boolean read FindAltoDesempHasValue write FindAltoDesempHasValue;
    /// <summary>
    /// Indicador da Forma de Pagamento:0-Pagamento à Vista;1-Pagamento à Prazo;.
    /// </summary>
    property indPag: Integer read FindPag write FindPag;
    /// <summary>
    /// Valor do Adiantamento (usar apenas em pagamento à Prazo.
    /// </summary>
    property vAdiant: Double read FvAdiant write SetvAdiant;
    property vAdiantHasValue: Boolean read FvAdiantHasValue write FvAdiantHasValue;
    /// <summary>
    /// Indicador para declarar concordância em antecipar o adiantamento.
    /// Informar a tag somente se for autorizado antecipar o adiantamento.
    /// </summary>
    property indAntecipaAdiant: Integer read FindAntecipaAdiant write SetindAntecipaAdiant;
    property indAntecipaAdiantHasValue: Boolean read FindAntecipaAdiantHasValue write FindAntecipaAdiantHasValue;
    /// <summary>
    /// Informações do pagamento a prazo.
    /// Informar somente se indPag for à Prazo.
    /// </summary>
    property infPrazo: TMdfeSefazInfPrazoList read FinfPrazo write SetinfPrazo;
    /// <summary>
    /// Tipo de Permissão em relação a antecipação das parcelas.
    /// 0 - Não permite antecipar
    /// 
    /// 1 - Permite antecipar as parcelas
    /// 
    /// 2 - Permite antecipar as parcelas mediante confirmação.
    /// </summary>
    property tpAntecip: Integer read FtpAntecip write SettpAntecip;
    property tpAntecipHasValue: Boolean read FtpAntecipHasValue write FtpAntecipHasValue;
    /// <summary>
    /// Informações bancárias.
    /// </summary>
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
    /// <summary>
    /// Registro Nacional de Transportadores Rodoviários de Carga.
    /// Registro obrigatório do emitente do MDF-e junto à ANTT para exercer a atividade de transportador rodoviário de cargas por conta de terceiros e mediante remuneração.
    /// </summary>
    property RNTRC: string read FRNTRC write SetRNTRC;
    property RNTRCHasValue: Boolean read FRNTRCHasValue write FRNTRCHasValue;
    /// <summary>
    /// Dados do CIOT.
    /// </summary>
    property infCIOT: TMdfeSefazInfCIOTList read FinfCIOT write SetinfCIOT;
    /// <summary>
    /// Informações de Vale Pedágio.
    /// Outras informações sobre Vale-Pedágio obrigatório que não tenham campos específicos devem ser informadas no campo de observações gerais de uso livre pelo contribuinte, visando atender as determinações legais vigentes.
    /// </summary>
    property valePed: TMdfeSefazValePed read FvalePed write SetvalePed;
    /// <summary>
    /// Grupo de informações dos contratantes do serviço de transporte.
    /// </summary>
    property infContratante: TMdfeSefazInfContratanteList read FinfContratante write SetinfContratante;
    /// <summary>
    /// Informações do Pagamento do Frete.
    /// </summary>
    property infPag: TMdfeSefazInfPagList read FinfPag write SetinfPag;
  end;
  
  TMdfeSefazProp = class
  private
    FCPF: string;
    FCPFHasValue: Boolean;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FRNTRC: string;
    FxNome: string;
    FIE: string;
    FIEHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FtpProp: Integer;
    procedure SetCPF(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetUF(const Value: string);
  public
    /// <summary>
    /// Número do CPF.
    /// Informar os zeros não significativos.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Número do CNPJ.
    /// Informar os zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Registro Nacional dos Transportadores Rodoviários de Carga.
    /// Registro obrigatório do proprietário, co-proprietário ou arrendatário do veículo junto à ANTT para exercer a atividade de transportador rodoviário de cargas por conta de terceiros e mediante remuneração.
    /// </summary>
    property RNTRC: string read FRNTRC write FRNTRC;
    /// <summary>
    /// Razão Social ou Nome do proprietário.
    /// </summary>
    property xNome: string read FxNome write FxNome;
    /// <summary>
    /// Inscrição Estadual.
    /// </summary>
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    /// <summary>
    /// UF.
    /// </summary>
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    /// <summary>
    /// Tipo Proprietário ou possuidor.
    /// Preencher com:
    /// 												0-TAC Agregado;
    /// 												1-TAC Independente; 
    /// 												2 – Outros.
    /// </summary>
    property tpProp: Integer read FtpProp write FtpProp;
  end;
  
  TMdfeSefazCondutor = class
  private
    FxNome: string;
    FCPF: string;
  public
    /// <summary>
    /// Nome do Condutor.
    /// </summary>
    property xNome: string read FxNome write FxNome;
    /// <summary>
    /// CPF do Condutor.
    /// </summary>
    property CPF: string read FCPF write FCPF;
  end;
  
  TMdfeSefazCondutorList = class(TObjectList<TMdfeSefazCondutor>)
  end;
  
  TMdfeSefazVeicTracao = class
  private
    FcInt: string;
    FcIntHasValue: Boolean;
    Fplaca: string;
    FRENAVAM: string;
    FRENAVAMHasValue: Boolean;
    Ftara: Integer;
    FcapKG: Integer;
    FcapKGHasValue: Boolean;
    FcapM3: Integer;
    FcapM3HasValue: Boolean;
    Fprop: TMdfeSefazProp;
    Fcondutor: TMdfeSefazCondutorList;
    FtpRod: string;
    FtpCar: string;
    FUF: string;
    FUFHasValue: Boolean;
    procedure SetcInt(const Value: string);
    procedure SetRENAVAM(const Value: string);
    procedure SetcapKG(const Value: Integer);
    procedure SetcapM3(const Value: Integer);
    procedure Setprop(const Value: TMdfeSefazProp);
    procedure Setcondutor(const Value: TMdfeSefazCondutorList);
    procedure SetUF(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Código interno do veículo.
    /// </summary>
    property cInt: string read FcInt write SetcInt;
    property cIntHasValue: Boolean read FcIntHasValue write FcIntHasValue;
    /// <summary>
    /// Placa do veículo.
    /// </summary>
    property placa: string read Fplaca write Fplaca;
    /// <summary>
    /// RENAVAM do veículo.
    /// </summary>
    property RENAVAM: string read FRENAVAM write SetRENAVAM;
    property RENAVAMHasValue: Boolean read FRENAVAMHasValue write FRENAVAMHasValue;
    /// <summary>
    /// Tara em KG.
    /// </summary>
    property tara: Integer read Ftara write Ftara;
    /// <summary>
    /// Capacidade em KG.
    /// </summary>
    property capKG: Integer read FcapKG write SetcapKG;
    property capKGHasValue: Boolean read FcapKGHasValue write FcapKGHasValue;
    /// <summary>
    /// Capacidade em M3.
    /// </summary>
    property capM3: Integer read FcapM3 write SetcapM3;
    property capM3HasValue: Boolean read FcapM3HasValue write FcapM3HasValue;
    /// <summary>
    /// Proprietário ou possuidor do Veículo.
    /// Só preenchido quando o veículo não pertencer à empresa emitente do MDF-e.
    /// </summary>
    property prop: TMdfeSefazProp read Fprop write Setprop;
    /// <summary>
    /// Informações do(s) Condutor(es) do veículo.
    /// </summary>
    property condutor: TMdfeSefazCondutorList read Fcondutor write Setcondutor;
    /// <summary>
    /// Tipo de Rodado.
    /// Preencher com:
    /// 									01 - Truck;
    /// 									02 - Toco;
    /// 									03 - Cavalo Mecânico;
    /// 									04 - VAN;
    /// 									05 - Utilitário;
    /// 									06 - Outros.
    /// </summary>
    property tpRod: string read FtpRod write FtpRod;
    /// <summary>
    /// Tipo de Carroceria.
    /// Preencher com:
    /// 									00 - não aplicável;
    /// 									01 - Aberta;
    /// 									02 - Fechada/Baú;
    /// 									03 - Granelera;
    /// 									04 - Porta Container;
    /// 									05 - Sider.
    /// </summary>
    property tpCar: string read FtpCar write FtpCar;
    /// <summary>
    /// UF em que veículo está licenciado.
    /// Sigla da UF de licenciamento do veículo.
    /// </summary>
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
    FxNome: string;
    FIE: string;
    FIEHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FtpProp: Integer;
    procedure SetCPF(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetIE(const Value: string);
    procedure SetUF(const Value: string);
  public
    /// <summary>
    /// Número do CPF.
    /// Informar os zeros não significativos.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Número do CNPJ.
    /// Informar os zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Registro Nacional dos Transportadores Rodoviários de Carga.
    /// Registro obrigatório do proprietário, co-proprietário ou arrendatário do veículo junto à ANTT para exercer a atividade de transportador rodoviário de cargas por conta de terceiros e mediante remuneração.
    /// </summary>
    property RNTRC: string read FRNTRC write FRNTRC;
    /// <summary>
    /// Razão Social ou Nome do proprietário.
    /// </summary>
    property xNome: string read FxNome write FxNome;
    /// <summary>
    /// Inscrição Estadual.
    /// </summary>
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    /// <summary>
    /// UF.
    /// </summary>
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    /// <summary>
    /// Tipo Proprietário ou possuidor.
    /// Preencher com:
    /// 												0-TAC Agregado;
    /// 												1-TAC Independente;  
    /// 												2 – Outros.
    /// </summary>
    property tpProp: Integer read FtpProp write FtpProp;
  end;
  
  TMdfeSefazVeicReboque = class
  private
    FcInt: string;
    FcIntHasValue: Boolean;
    Fplaca: string;
    FRENAVAM: string;
    FRENAVAMHasValue: Boolean;
    Ftara: Integer;
    FcapKG: Integer;
    FcapM3: Integer;
    FcapM3HasValue: Boolean;
    Fprop: TMdfeSefazVeicReboqueProp;
    FtpCar: string;
    FUF: string;
    FUFHasValue: Boolean;
    procedure SetcInt(const Value: string);
    procedure SetRENAVAM(const Value: string);
    procedure SetcapM3(const Value: Integer);
    procedure Setprop(const Value: TMdfeSefazVeicReboqueProp);
    procedure SetUF(const Value: string);
  public
    destructor Destroy; override;
    /// <summary>
    /// Código interno do veículo.
    /// </summary>
    property cInt: string read FcInt write SetcInt;
    property cIntHasValue: Boolean read FcIntHasValue write FcIntHasValue;
    /// <summary>
    /// Placa do veículo.
    /// </summary>
    property placa: string read Fplaca write Fplaca;
    /// <summary>
    /// RENAVAM do veículo.
    /// </summary>
    property RENAVAM: string read FRENAVAM write SetRENAVAM;
    property RENAVAMHasValue: Boolean read FRENAVAMHasValue write FRENAVAMHasValue;
    /// <summary>
    /// Tara em KG.
    /// </summary>
    property tara: Integer read Ftara write Ftara;
    /// <summary>
    /// Capacidade em KG.
    /// </summary>
    property capKG: Integer read FcapKG write FcapKG;
    /// <summary>
    /// Capacidade em M3.
    /// </summary>
    property capM3: Integer read FcapM3 write SetcapM3;
    property capM3HasValue: Boolean read FcapM3HasValue write FcapM3HasValue;
    /// <summary>
    /// Proprietários ou possuidor do Veículo.
    /// Só preenchido quando o veículo não pertencer à empresa emitente do MDF-e.
    /// </summary>
    property prop: TMdfeSefazVeicReboqueProp read Fprop write Setprop;
    /// <summary>
    /// Tipo de Carroceria.
    /// Preencher com:
    /// 									00 - não aplicável;
    /// 									01 - Aberta;
    /// 									02 - Fechada/Baú;
    /// 									03 - Granelera;
    /// 									04 - Porta Container;
    /// 									05 - Sider.
    /// </summary>
    property tpCar: string read FtpCar write FtpCar;
    /// <summary>
    /// UF em que veículo está licenciado.
    /// Sigla da UF de licenciamento do veículo.
    /// </summary>
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
  end;
  
  TMdfeSefazVeicReboqueList = class(TObjectList<TMdfeSefazVeicReboque>)
  end;
  
  TMdfeSefazLacRodo = class
  private
    FnLacre: string;
  public
    /// <summary>
    /// Número do Lacre.
    /// </summary>
    property nLacre: string read FnLacre write FnLacre;
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Grupo de informações para Agência Reguladora.
    /// </summary>
    property infANTT: TMdfeSefazInfANTT read FinfANTT write SetinfANTT;
    /// <summary>
    /// Dados do Veículo com a Tração.
    /// </summary>
    property veicTracao: TMdfeSefazVeicTracao read FveicTracao write SetveicTracao;
    /// <summary>
    /// Dados dos reboques.
    /// </summary>
    property veicReboque: TMdfeSefazVeicReboqueList read FveicReboque write SetveicReboque;
    /// <summary>
    /// Código de Agendamento no porto.
    /// </summary>
    property codAgPorto: string read FcodAgPorto write SetcodAgPorto;
    property codAgPortoHasValue: Boolean read FcodAgPortoHasValue write FcodAgPortoHasValue;
    /// <summary>
    /// Lacres.
    /// </summary>
    property lacRodo: TMdfeSefazLacRodoList read FlacRodo write SetlacRodo;
  end;
  
  TMdfeSefazInfTermCarreg = class
  private
    FcTermCarreg: string;
    FxTermCarreg: string;
  public
    /// <summary>
    /// Código do Terminal de Carregamento.
    /// Preencher de acordo com a Tabela de Terminais de Carregamento. O código de cada Porto está definido no Ministério de Transportes.
    /// </summary>
    property cTermCarreg: string read FcTermCarreg write FcTermCarreg;
    /// <summary>
    /// Nome do Terminal de Carregamento.
    /// </summary>
    property xTermCarreg: string read FxTermCarreg write FxTermCarreg;
  end;
  
  TMdfeSefazInfTermCarregList = class(TObjectList<TMdfeSefazInfTermCarreg>)
  end;
  
  TMdfeSefazInfTermDescarreg = class
  private
    FcTermDescarreg: string;
    FxTermDescarreg: string;
  public
    /// <summary>
    /// Código do Terminal de Descarregamento.
    /// Preencher de acordo com a Tabela de Terminais de Descarregamento. O código de cada Porto está definido no Ministério de Transportes.
    /// </summary>
    property cTermDescarreg: string read FcTermDescarreg write FcTermDescarreg;
    /// <summary>
    /// Nome do Terminal de Descarregamento.
    /// </summary>
    property xTermDescarreg: string read FxTermDescarreg write FxTermDescarreg;
  end;
  
  TMdfeSefazInfTermDescarregList = class(TObjectList<TMdfeSefazInfTermDescarreg>)
  end;
  
  TMdfeSefazInfEmbComb = class
  private
    FcEmbComb: string;
    FxBalsa: string;
  public
    /// <summary>
    /// Código da embarcação do comboio.
    /// </summary>
    property cEmbComb: string read FcEmbComb write FcEmbComb;
    /// <summary>
    /// Identificador da Balsa.
    /// </summary>
    property xBalsa: string read FxBalsa write FxBalsa;
  end;
  
  TMdfeSefazInfEmbCombList = class(TObjectList<TMdfeSefazInfEmbComb>)
  end;
  
  TMdfeSefazInfUnidCargaVazia = class
  private
    FidUnidCargaVazia: string;
    FtpUnidCargaVazia: Integer;
  public
    /// <summary>
    /// Identificação da unidades de carga vazia.
    /// </summary>
    property idUnidCargaVazia: string read FidUnidCargaVazia write FidUnidCargaVazia;
    /// <summary>
    /// Tipo da unidade de carga vazia.
    /// 1 - Container; 2 - ULD;3 - Pallet;4 - Outros;.
    /// </summary>
    property tpUnidCargaVazia: Integer read FtpUnidCargaVazia write FtpUnidCargaVazia;
  end;
  
  TMdfeSefazInfUnidCargaVaziaList = class(TObjectList<TMdfeSefazInfUnidCargaVazia>)
  end;
  
  TMdfeSefazInfUnidTranspVazia = class
  private
    FidUnidTranspVazia: string;
    FtpUnidTranspVazia: Integer;
  public
    /// <summary>
    /// Identificação da unidades de transporte vazia.
    /// </summary>
    property idUnidTranspVazia: string read FidUnidTranspVazia write FidUnidTranspVazia;
    /// <summary>
    /// Tipo da unidade de transporte vazia.
    /// Deve ser preenchido com “1” para Rodoviário Tração do tipo caminhão ou “2” para Rodoviário reboque do tipo carreta.
    /// </summary>
    property tpUnidTranspVazia: Integer read FtpUnidTranspVazia write FtpUnidTranspVazia;
  end;
  
  TMdfeSefazInfUnidTranspVaziaList = class(TObjectList<TMdfeSefazInfUnidTranspVazia>)
  end;
  
  TMdfeSefazAquav = class
  private
    Firin: string;
    FtpEmb: string;
    FcEmbar: string;
    FxEmbar: string;
    FnViag: string;
    FcPrtEmb: string;
    FcPrtDest: string;
    FprtTrans: string;
    FprtTransHasValue: Boolean;
    FtpNav: Integer;
    FtpNavHasValue: Boolean;
    FinfTermCarreg: TMdfeSefazInfTermCarregList;
    FinfTermDescarreg: TMdfeSefazInfTermDescarregList;
    FinfEmbComb: TMdfeSefazInfEmbCombList;
    FinfUnidCargaVazia: TMdfeSefazInfUnidCargaVaziaList;
    FinfUnidTranspVazia: TMdfeSefazInfUnidTranspVaziaList;
    procedure SetprtTrans(const Value: string);
    procedure SettpNav(const Value: Integer);
    procedure SetinfTermCarreg(const Value: TMdfeSefazInfTermCarregList);
    procedure SetinfTermDescarreg(const Value: TMdfeSefazInfTermDescarregList);
    procedure SetinfEmbComb(const Value: TMdfeSefazInfEmbCombList);
    procedure SetinfUnidCargaVazia(const Value: TMdfeSefazInfUnidCargaVaziaList);
    procedure SetinfUnidTranspVazia(const Value: TMdfeSefazInfUnidTranspVaziaList);
  public
    destructor Destroy; override;
    /// <summary>
    /// Irin do navio sempre deverá ser informado.
    /// </summary>
    property irin: string read Firin write Firin;
    /// <summary>
    /// Código do tipo de embarcação.
    /// Preencher com código da Tabela de Tipo de Embarcação definida no Ministério dos Transportes.
    /// </summary>
    property tpEmb: string read FtpEmb write FtpEmb;
    /// <summary>
    /// Código da embarcação.
    /// </summary>
    property cEmbar: string read FcEmbar write FcEmbar;
    /// <summary>
    /// Nome da embarcação.
    /// </summary>
    property xEmbar: string read FxEmbar write FxEmbar;
    /// <summary>
    /// Número da Viagem.
    /// </summary>
    property nViag: string read FnViag write FnViag;
    /// <summary>
    /// Código do Porto de Embarque.
    /// Preencher de acordo com Tabela de Portos definida no Ministério dos Transportes.
    /// </summary>
    property cPrtEmb: string read FcPrtEmb write FcPrtEmb;
    /// <summary>
    /// Código do Porto de Destino.
    /// Preencher de acordo com Tabela de Portos definida no Ministério dos Transportes.
    /// </summary>
    property cPrtDest: string read FcPrtDest write FcPrtDest;
    /// <summary>
    /// Porto de Transbordo.
    /// </summary>
    property prtTrans: string read FprtTrans write SetprtTrans;
    property prtTransHasValue: Boolean read FprtTransHasValue write FprtTransHasValue;
    /// <summary>
    /// Tipo de Navegação.
    /// Preencher com: 
    /// 						0 - Interior;
    /// 						1 - Cabotagem.
    /// </summary>
    property tpNav: Integer read FtpNav write SettpNav;
    property tpNavHasValue: Boolean read FtpNavHasValue write FtpNavHasValue;
    /// <summary>
    /// Grupo de informações dos terminais de carregamento.
    /// </summary>
    property infTermCarreg: TMdfeSefazInfTermCarregList read FinfTermCarreg write SetinfTermCarreg;
    /// <summary>
    /// Grupo de informações dos terminais de descarregamento.
    /// </summary>
    property infTermDescarreg: TMdfeSefazInfTermDescarregList read FinfTermDescarreg write SetinfTermDescarreg;
    /// <summary>
    /// Informações das Embarcações do Comboio.
    /// </summary>
    property infEmbComb: TMdfeSefazInfEmbCombList read FinfEmbComb write SetinfEmbComb;
    /// <summary>
    /// Informações das Undades de Carga vazias.
    /// </summary>
    property infUnidCargaVazia: TMdfeSefazInfUnidCargaVaziaList read FinfUnidCargaVazia write SetinfUnidCargaVazia;
    /// <summary>
    /// Informações das Undades de Transporte vazias.
    /// </summary>
    property infUnidTranspVazia: TMdfeSefazInfUnidTranspVaziaList read FinfUnidTranspVazia write SetinfUnidTranspVazia;
  end;
  
  TMdfeSefazTrem = class
  private
    FxPref: string;
    FdhTrem: TDateTime;
    FdhTremHasValue: Boolean;
    FxOri: string;
    FxDest: string;
    FqVag: Integer;
    procedure SetdhTrem(const Value: TDateTime);
  public
    /// <summary>
    /// Prefixo do Trem.
    /// </summary>
    property xPref: string read FxPref write FxPref;
    /// <summary>
    /// Data e hora de liberação do trem na origem.
    /// </summary>
    property dhTrem: TDateTime read FdhTrem write SetdhTrem;
    property dhTremHasValue: Boolean read FdhTremHasValue write FdhTremHasValue;
    /// <summary>
    /// Origem do Trem.
    /// Sigla da estação de origem.
    /// </summary>
    property xOri: string read FxOri write FxOri;
    /// <summary>
    /// Destino do Trem.
    /// Sigla da estação de destino.
    /// </summary>
    property xDest: string read FxDest write FxDest;
    /// <summary>
    /// Quantidade de vagões carregados.
    /// </summary>
    property qVag: Integer read FqVag write FqVag;
  end;
  
  TMdfeSefazVag = class
  private
    FpesoBC: Double;
    FpesoR: Double;
    FtpVag: string;
    FtpVagHasValue: Boolean;
    Fserie: string;
    FnVag: Integer;
    FnSeq: Integer;
    FnSeqHasValue: Boolean;
    FTU: Double;
    procedure SettpVag(const Value: string);
    procedure SetnSeq(const Value: Integer);
  public
    /// <summary>
    /// Peso Base de Cálculo de Frete em Toneladas.
    /// </summary>
    property pesoBC: Double read FpesoBC write FpesoBC;
    /// <summary>
    /// Peso Real em Toneladas.
    /// </summary>
    property pesoR: Double read FpesoR write FpesoR;
    /// <summary>
    /// Tipo de Vagão.
    /// </summary>
    property tpVag: string read FtpVag write SettpVag;
    property tpVagHasValue: Boolean read FtpVagHasValue write FtpVagHasValue;
    /// <summary>
    /// Serie de Identificação do vagão.
    /// </summary>
    property serie: string read Fserie write Fserie;
    /// <summary>
    /// Número de Identificação do vagão.
    /// </summary>
    property nVag: Integer read FnVag write FnVag;
    /// <summary>
    /// Sequencia do vagão na composição.
    /// </summary>
    property nSeq: Integer read FnSeq write SetnSeq;
    property nSeqHasValue: Boolean read FnSeqHasValue write FnSeqHasValue;
    /// <summary>
    /// Tonelada Útil.
    /// Unidade de peso referente à carga útil (apenas o peso da carga transportada), expressa em toneladas.
    /// </summary>
    property TU: Double read FTU write FTU;
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Informações da composição do trem.
    /// </summary>
    property trem: TMdfeSefazTrem read Ftrem write Settrem;
    /// <summary>
    /// informações dos Vagões.
    /// </summary>
    property vag: TMdfeSefazVagList read Fvag write Setvag;
  end;
  
  TMdfeSefazInfModal = class
  private
    FversaoModal: string;
    Faereo: TMdfeSefazAereo;
    Frodo: TMdfeSefazRodo;
    Faquav: TMdfeSefazAquav;
    Fferrov: TMdfeSefazFerrov;
    procedure Setaereo(const Value: TMdfeSefazAereo);
    procedure Setrodo(const Value: TMdfeSefazRodo);
    procedure Setaquav(const Value: TMdfeSefazAquav);
    procedure Setferrov(const Value: TMdfeSefazFerrov);
  public
    destructor Destroy; override;
    /// <summary>
    /// Versão do leiaute específico para o Modal.
    /// </summary>
    property versaoModal: string read FversaoModal write FversaoModal;
    property aereo: TMdfeSefazAereo read Faereo write Setaereo;
    property rodo: TMdfeSefazRodo read Frodo write Setrodo;
    property aquav: TMdfeSefazAquav read Faquav write Setaquav;
    property ferrov: TMdfeSefazFerrov read Fferrov write Setferrov;
  end;
  
  TMdfeSefazLacUnidTransp = class
  private
    FnLacre: string;
  public
    /// <summary>
    /// Número do lacre.
    /// </summary>
    property nLacre: string read FnLacre write FnLacre;
  end;
  
  TMdfeSefazLacUnidTranspList = class(TObjectList<TMdfeSefazLacUnidTransp>)
  end;
  
  TMdfeSefazLacUnidCarga = class
  private
    FnLacre: string;
  public
    /// <summary>
    /// Número do lacre.
    /// </summary>
    property nLacre: string read FnLacre write FnLacre;
  end;
  
  TMdfeSefazLacUnidCargaList = class(TObjectList<TMdfeSefazLacUnidCarga>)
  end;
  
  TMdfeSefazUnidCarga = class
  private
    FtpUnidCarga: Integer;
    FidUnidCarga: string;
    FlacUnidCarga: TMdfeSefazLacUnidCargaList;
    FqtdRat: Double;
    FqtdRatHasValue: Boolean;
    procedure SetlacUnidCarga(const Value: TMdfeSefazLacUnidCargaList);
    procedure SetqtdRat(const Value: Double);
  public
    destructor Destroy; override;
    /// <summary>
    /// Tipo da Unidade de Carga.
    /// 1 - Container;
    /// 
    /// 2 - ULD;
    /// 
    /// 3 - Pallet;
    /// 
    /// 4 - Outros;.
    /// </summary>
    property tpUnidCarga: Integer read FtpUnidCarga write FtpUnidCarga;
    /// <summary>
    /// Identificação da Unidade de Carga.
    /// Informar a identificação da unidade de carga, por exemplo: número do container.
    /// </summary>
    property idUnidCarga: string read FidUnidCarga write FidUnidCarga;
    /// <summary>
    /// Lacres das Unidades de Carga.
    /// </summary>
    property lacUnidCarga: TMdfeSefazLacUnidCargaList read FlacUnidCarga write SetlacUnidCarga;
    /// <summary>
    /// Quantidade rateada (Peso,Volume).
    /// </summary>
    property qtdRat: Double read FqtdRat write SetqtdRat;
    property qtdRatHasValue: Boolean read FqtdRatHasValue write FqtdRatHasValue;
  end;
  
  TMdfeSefazUnidCargaList = class(TObjectList<TMdfeSefazUnidCarga>)
  end;
  
  TMdfeSefazUnidadeTransp = class
  private
    FtpUnidTransp: Integer;
    FidUnidTransp: string;
    FlacUnidTransp: TMdfeSefazLacUnidTranspList;
    FinfUnidCarga: TMdfeSefazUnidCargaList;
    FqtdRat: Double;
    FqtdRatHasValue: Boolean;
    procedure SetlacUnidTransp(const Value: TMdfeSefazLacUnidTranspList);
    procedure SetinfUnidCarga(const Value: TMdfeSefazUnidCargaList);
    procedure SetqtdRat(const Value: Double);
  public
    destructor Destroy; override;
    /// <summary>
    /// Tipo da Unidade de Transporte.
    /// 1 - Rodoviário Tração;
    /// 
    /// 2 - Rodoviário Reboque;
    /// 
    /// 3 - Navio;
    /// 
    /// 4 - Balsa;
    /// 
    /// 5 - Aeronave;
    /// 
    /// 6 - Vagão;
    /// 
    /// 7 - Outros.
    /// </summary>
    property tpUnidTransp: Integer read FtpUnidTransp write FtpUnidTransp;
    /// <summary>
    /// Identificação da Unidade de Transporte.
    /// Informar a identificação conforme o tipo de unidade de transporte.
    /// Por exemplo: para rodoviário tração ou reboque deverá preencher com a placa do veículo.
    /// </summary>
    property idUnidTransp: string read FidUnidTransp write FidUnidTransp;
    /// <summary>
    /// Lacres das Unidades de Transporte.
    /// </summary>
    property lacUnidTransp: TMdfeSefazLacUnidTranspList read FlacUnidTransp write SetlacUnidTransp;
    /// <summary>
    /// Informações das Unidades de Carga (Containeres/ULD/Outros).
    /// Dispositivo de carga utilizada (Unit Load Device - ULD) significa todo tipo de contêiner de carga, vagão, contêiner de avião, palete de aeronave com rede ou palete de aeronave com rede sobre um iglu.
    /// </summary>
    property infUnidCarga: TMdfeSefazUnidCargaList read FinfUnidCarga write SetinfUnidCarga;
    /// <summary>
    /// Quantidade rateada (Peso,Volume).
    /// </summary>
    property qtdRat: Double read FqtdRat write SetqtdRat;
    property qtdRatHasValue: Boolean read FqtdRatHasValue write FqtdRatHasValue;
  end;
  
  TMdfeSefazUnidadeTranspList = class(TObjectList<TMdfeSefazUnidadeTransp>)
  end;
  
  TMdfeSefazPeri = class
  private
    FnONU: string;
    FxNomeAE: string;
    FxNomeAEHasValue: Boolean;
    FxClaRisco: string;
    FxClaRiscoHasValue: Boolean;
    FgrEmb: string;
    FgrEmbHasValue: Boolean;
    FqTotProd: string;
    FqVolTipo: string;
    FqVolTipoHasValue: Boolean;
    procedure SetxNomeAE(const Value: string);
    procedure SetxClaRisco(const Value: string);
    procedure SetgrEmb(const Value: string);
    procedure SetqVolTipo(const Value: string);
  public
    /// <summary>
    /// Número ONU/UN.
    /// Ver a legislação de transporte de produtos perigosos aplicadas ao modal.
    /// </summary>
    property nONU: string read FnONU write FnONU;
    /// <summary>
    /// Nome apropriado para embarque do produto.
    /// Ver a legislação de transporte de produtos perigosos aplicada ao modo de transporte.
    /// </summary>
    property xNomeAE: string read FxNomeAE write SetxNomeAE;
    property xNomeAEHasValue: Boolean read FxNomeAEHasValue write FxNomeAEHasValue;
    /// <summary>
    /// Classe ou subclasse/divisão, e risco subsidiário/risco secundário.
    /// Ver a legislação de transporte de produtos perigosos aplicadas ao modal.
    /// </summary>
    property xClaRisco: string read FxClaRisco write SetxClaRisco;
    property xClaRiscoHasValue: Boolean read FxClaRiscoHasValue write FxClaRiscoHasValue;
    /// <summary>
    /// Grupo de Embalagem.
    /// Ver a legislação de transporte de produtos perigosos aplicadas ao modal
    /// 															Preenchimento obrigatório para o modal aéreo.
    /// 															A legislação para o modal rodoviário e ferroviário não atribui grupo de embalagem para todos os produtos, portanto haverá casos de não preenchimento desse campo.
    /// </summary>
    property grEmb: string read FgrEmb write SetgrEmb;
    property grEmbHasValue: Boolean read FgrEmbHasValue write FgrEmbHasValue;
    /// <summary>
    /// Quantidade total por produto.
    /// Preencher conforme a legislação de transporte de produtos perigosos aplicada ao modal.
    /// </summary>
    property qTotProd: string read FqTotProd write FqTotProd;
    /// <summary>
    /// Quantidade e Tipo de volumes.
    /// Preencher conforme a legislação de transporte de produtos perigosos aplicada ao modal.
    /// </summary>
    property qVolTipo: string read FqVolTipo write SetqVolTipo;
    property qVolTipoHasValue: Boolean read FqVolTipoHasValue write FqVolTipoHasValue;
  end;
  
  TMdfeSefazPeriList = class(TObjectList<TMdfeSefazPeri>)
  end;
  
  TMdfeSefazInfEntregaParcial = class
  private
    FqtdTotal: Double;
    FqtdParcial: Double;
  public
    /// <summary>
    /// Quantidade total de volumes.
    /// </summary>
    property qtdTotal: Double read FqtdTotal write FqtdTotal;
    /// <summary>
    /// Quantidade de volumes enviados no MDF-e.
    /// </summary>
    property qtdParcial: Double read FqtdParcial write FqtdParcial;
  end;
  
  TMdfeSefazInfCTe = class
  private
    FchCTe: string;
    FSegCodBarra: string;
    FSegCodBarraHasValue: Boolean;
    FindReentrega: Integer;
    FindReentregaHasValue: Boolean;
    FinfUnidTransp: TMdfeSefazUnidadeTranspList;
    Fperi: TMdfeSefazPeriList;
    FinfEntregaParcial: TMdfeSefazInfEntregaParcial;
    procedure SetSegCodBarra(const Value: string);
    procedure SetindReentrega(const Value: Integer);
    procedure SetinfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
    procedure Setperi(const Value: TMdfeSefazPeriList);
    procedure SetinfEntregaParcial(const Value: TMdfeSefazInfEntregaParcial);
  public
    destructor Destroy; override;
    /// <summary>
    /// Conhecimento Eletrônico - Chave de Acesso.
    /// </summary>
    property chCTe: string read FchCTe write FchCTe;
    /// <summary>
    /// Segundo código de barras.
    /// </summary>
    property SegCodBarra: string read FSegCodBarra write SetSegCodBarra;
    property SegCodBarraHasValue: Boolean read FSegCodBarraHasValue write FSegCodBarraHasValue;
    /// <summary>
    /// Indicador de Reentrega.
    /// </summary>
    property indReentrega: Integer read FindReentrega write SetindReentrega;
    property indReentregaHasValue: Boolean read FindReentregaHasValue write FindReentregaHasValue;
    /// <summary>
    /// Informações das Unidades de Transporte (Carreta/Reboque/Vagão).
    /// Deve ser preenchido com as informações das unidades de transporte utilizadas.
    /// </summary>
    property infUnidTransp: TMdfeSefazUnidadeTranspList read FinfUnidTransp write SetinfUnidTransp;
    /// <summary>
    /// Preenchido quando for  transporte de produtos classificados pela ONU como perigosos.
    /// </summary>
    property peri: TMdfeSefazPeriList read Fperi write Setperi;
    /// <summary>
    /// Grupo de informações da Entrega Parcial (Corte de Voo).
    /// </summary>
    property infEntregaParcial: TMdfeSefazInfEntregaParcial read FinfEntregaParcial write SetinfEntregaParcial;
  end;
  
  TMdfeSefazInfCTeList = class(TObjectList<TMdfeSefazInfCTe>)
  end;
  
  TMdfeSefazInfNFePeri = class
  private
    FnONU: string;
    FxNomeAE: string;
    FxNomeAEHasValue: Boolean;
    FxClaRisco: string;
    FxClaRiscoHasValue: Boolean;
    FgrEmb: string;
    FgrEmbHasValue: Boolean;
    FqTotProd: string;
    FqVolTipo: string;
    FqVolTipoHasValue: Boolean;
    procedure SetxNomeAE(const Value: string);
    procedure SetxClaRisco(const Value: string);
    procedure SetgrEmb(const Value: string);
    procedure SetqVolTipo(const Value: string);
  public
    /// <summary>
    /// Número ONU/UN.
    /// Ver a legislação de transporte de produtos perigosos aplicadas ao modal.
    /// </summary>
    property nONU: string read FnONU write FnONU;
    /// <summary>
    /// Nome apropriado para embarque do produto.
    /// Ver a legislação de transporte de produtos perigosos aplicada ao modo de transporte.
    /// </summary>
    property xNomeAE: string read FxNomeAE write SetxNomeAE;
    property xNomeAEHasValue: Boolean read FxNomeAEHasValue write FxNomeAEHasValue;
    /// <summary>
    /// Classe ou subclasse/divisão, e risco subsidiário/risco secundário.
    /// Ver a legislação de transporte de produtos perigosos aplicadas ao modal.
    /// </summary>
    property xClaRisco: string read FxClaRisco write SetxClaRisco;
    property xClaRiscoHasValue: Boolean read FxClaRiscoHasValue write FxClaRiscoHasValue;
    /// <summary>
    /// Grupo de Embalagem.
    /// Ver a legislação de transporte de produtos perigosos aplicadas ao modal
    /// 															Preenchimento obrigatório para o modal aéreo.
    /// 															A legislação para o modal rodoviário e ferroviário não atribui grupo de embalagem para todos os produtos, portanto haverá casos de não preenchimento desse campo.
    /// </summary>
    property grEmb: string read FgrEmb write SetgrEmb;
    property grEmbHasValue: Boolean read FgrEmbHasValue write FgrEmbHasValue;
    /// <summary>
    /// Quantidade total por produto.
    /// Preencher conforme a legislação de transporte de produtos perigosos aplicada ao modal.
    /// </summary>
    property qTotProd: string read FqTotProd write FqTotProd;
    /// <summary>
    /// Quantidade e Tipo de volumes.
    /// Preencher conforme a legislação de transporte de produtos perigosos aplicada ao modal.
    /// </summary>
    property qVolTipo: string read FqVolTipo write SetqVolTipo;
    property qVolTipoHasValue: Boolean read FqVolTipoHasValue write FqVolTipoHasValue;
  end;
  
  TMdfeSefazInfNFePeriList = class(TObjectList<TMdfeSefazInfNFePeri>)
  end;
  
  TMdfeSefazInfNFe = class
  private
    FchNFe: string;
    FSegCodBarra: string;
    FSegCodBarraHasValue: Boolean;
    FindReentrega: Integer;
    FindReentregaHasValue: Boolean;
    FinfUnidTransp: TMdfeSefazUnidadeTranspList;
    Fperi: TMdfeSefazInfNFePeriList;
    procedure SetSegCodBarra(const Value: string);
    procedure SetindReentrega(const Value: Integer);
    procedure SetinfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
    procedure Setperi(const Value: TMdfeSefazInfNFePeriList);
  public
    destructor Destroy; override;
    /// <summary>
    /// Nota Fiscal Eletrônica.
    /// </summary>
    property chNFe: string read FchNFe write FchNFe;
    /// <summary>
    /// Segundo código de barras.
    /// </summary>
    property SegCodBarra: string read FSegCodBarra write SetSegCodBarra;
    property SegCodBarraHasValue: Boolean read FSegCodBarraHasValue write FSegCodBarraHasValue;
    /// <summary>
    /// Indicador de Reentrega.
    /// </summary>
    property indReentrega: Integer read FindReentrega write SetindReentrega;
    property indReentregaHasValue: Boolean read FindReentregaHasValue write FindReentregaHasValue;
    /// <summary>
    /// Informações das Unidades de Transporte (Carreta/Reboque/Vagão).
    /// Deve ser preenchido com as informações das unidades de transporte utilizadas.
    /// </summary>
    property infUnidTransp: TMdfeSefazUnidadeTranspList read FinfUnidTransp write SetinfUnidTransp;
    /// <summary>
    /// Preenchido quando for  transporte de produtos classificados pela ONU como perigosos.
    /// </summary>
    property peri: TMdfeSefazInfNFePeriList read Fperi write Setperi;
  end;
  
  TMdfeSefazInfNFeList = class(TObjectList<TMdfeSefazInfNFe>)
  end;
  
  TMdfeSefazInfMDFeTranspPeri = class
  private
    FnONU: string;
    FxNomeAE: string;
    FxNomeAEHasValue: Boolean;
    FxClaRisco: string;
    FxClaRiscoHasValue: Boolean;
    FgrEmb: string;
    FgrEmbHasValue: Boolean;
    FqTotProd: string;
    FqVolTipo: string;
    FqVolTipoHasValue: Boolean;
    procedure SetxNomeAE(const Value: string);
    procedure SetxClaRisco(const Value: string);
    procedure SetgrEmb(const Value: string);
    procedure SetqVolTipo(const Value: string);
  public
    /// <summary>
    /// Número ONU/UN.
    /// Ver a legislação de transporte de produtos perigosos aplicadas ao modal.
    /// </summary>
    property nONU: string read FnONU write FnONU;
    /// <summary>
    /// Nome apropriado para embarque do produto.
    /// Ver a legislação de transporte de produtos perigosos aplicada ao modo de transporte.
    /// </summary>
    property xNomeAE: string read FxNomeAE write SetxNomeAE;
    property xNomeAEHasValue: Boolean read FxNomeAEHasValue write FxNomeAEHasValue;
    /// <summary>
    /// Classe ou subclasse/divisão, e risco subsidiário/risco secundário.
    /// Ver a legislação de transporte de produtos perigosos aplicadas ao modal.
    /// </summary>
    property xClaRisco: string read FxClaRisco write SetxClaRisco;
    property xClaRiscoHasValue: Boolean read FxClaRiscoHasValue write FxClaRiscoHasValue;
    /// <summary>
    /// Grupo de Embalagem.
    /// Ver a legislação de transporte de produtos perigosos aplicadas ao modal
    /// 															Preenchimento obrigatório para o modal aéreo.
    /// 															A legislação para o modal rodoviário e ferroviário não atribui grupo de embalagem para todos os produtos, portanto haverá casos de não preenchimento desse campo.
    /// </summary>
    property grEmb: string read FgrEmb write SetgrEmb;
    property grEmbHasValue: Boolean read FgrEmbHasValue write FgrEmbHasValue;
    /// <summary>
    /// Quantidade total por produto.
    /// Preencher conforme a legislação de transporte de produtos perigosos aplicada ao modal.
    /// </summary>
    property qTotProd: string read FqTotProd write FqTotProd;
    /// <summary>
    /// Quantidade e Tipo de volumes.
    /// Preencher conforme a legislação de transporte de produtos perigosos aplicada ao modal.
    /// </summary>
    property qVolTipo: string read FqVolTipo write SetqVolTipo;
    property qVolTipoHasValue: Boolean read FqVolTipoHasValue write FqVolTipoHasValue;
  end;
  
  TMdfeSefazInfMDFeTranspPeriList = class(TObjectList<TMdfeSefazInfMDFeTranspPeri>)
  end;
  
  TMdfeSefazInfMDFeTransp = class
  private
    FchMDFe: string;
    FindReentrega: Integer;
    FindReentregaHasValue: Boolean;
    FinfUnidTransp: TMdfeSefazUnidadeTranspList;
    Fperi: TMdfeSefazInfMDFeTranspPeriList;
    procedure SetindReentrega(const Value: Integer);
    procedure SetinfUnidTransp(const Value: TMdfeSefazUnidadeTranspList);
    procedure Setperi(const Value: TMdfeSefazInfMDFeTranspPeriList);
  public
    destructor Destroy; override;
    /// <summary>
    /// Manifesto Eletrônico de Documentos Fiscais.
    /// </summary>
    property chMDFe: string read FchMDFe write FchMDFe;
    /// <summary>
    /// Indicador de Reentrega.
    /// </summary>
    property indReentrega: Integer read FindReentrega write SetindReentrega;
    property indReentregaHasValue: Boolean read FindReentregaHasValue write FindReentregaHasValue;
    /// <summary>
    /// Informações das Unidades de Transporte (Carreta/Reboque/Vagão).
    /// Dispositivo de carga utilizada (Unit Load Device - ULD) significa todo tipo de contêiner de carga, vagão, contêiner de avião, palete de aeronave com rede ou palete de aeronave com rede sobre um iglu.
    /// </summary>
    property infUnidTransp: TMdfeSefazUnidadeTranspList read FinfUnidTransp write SetinfUnidTransp;
    /// <summary>
    /// Preenchido quando for  transporte de produtos classificados pela ONU como perigosos.
    /// </summary>
    property peri: TMdfeSefazInfMDFeTranspPeriList read Fperi write Setperi;
  end;
  
  TMdfeSefazInfMDFeTranspList = class(TObjectList<TMdfeSefazInfMDFeTransp>)
  end;
  
  TMdfeSefazInfMunDescarga = class
  private
    FcMunDescarga: string;
    FxMunDescarga: string;
    FinfCTe: TMdfeSefazInfCTeList;
    FinfNFe: TMdfeSefazInfNFeList;
    FinfMDFeTransp: TMdfeSefazInfMDFeTranspList;
    procedure SetinfCTe(const Value: TMdfeSefazInfCTeList);
    procedure SetinfNFe(const Value: TMdfeSefazInfNFeList);
    procedure SetinfMDFeTransp(const Value: TMdfeSefazInfMDFeTranspList);
  public
    destructor Destroy; override;
    /// <summary>
    /// Código do Município de Descarregamento.
    /// </summary>
    property cMunDescarga: string read FcMunDescarga write FcMunDescarga;
    /// <summary>
    /// Nome do Município de Descarregamento.
    /// </summary>
    property xMunDescarga: string read FxMunDescarga write FxMunDescarga;
    /// <summary>
    /// Conhecimentos de Tranporte - usar este grupo quando for prestador de serviço de transporte.
    /// </summary>
    property infCTe: TMdfeSefazInfCTeList read FinfCTe write SetinfCTe;
    /// <summary>
    /// Nota Fiscal Eletronica.
    /// </summary>
    property infNFe: TMdfeSefazInfNFeList read FinfNFe write SetinfNFe;
    /// <summary>
    /// Manifesto Eletrônico de Documentos Fiscais. Somente para modal Aquaviário (vide regras MOC).
    /// </summary>
    property infMDFeTransp: TMdfeSefazInfMDFeTranspList read FinfMDFeTransp write SetinfMDFeTransp;
  end;
  
  TMdfeSefazInfMunDescargaList = class(TObjectList<TMdfeSefazInfMunDescarga>)
  end;
  
  TMdfeSefazInfDoc = class
  private
    FinfMunDescarga: TMdfeSefazInfMunDescargaList;
    procedure SetinfMunDescarga(const Value: TMdfeSefazInfMunDescargaList);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Informações dos Municípios de descarregamento.
    /// </summary>
    property infMunDescarga: TMdfeSefazInfMunDescargaList read FinfMunDescarga write SetinfMunDescarga;
  end;
  
  TMdfeSefazInfResp = class
  private
    FrespSeg: Integer;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
  public
    /// <summary>
    /// Responsável pelo seguro.
    /// Preencher com:
    /// 															1- Emitente do MDF-e;
    /// 
    /// 22 - Responsável pela contratação do serviço de transporte (contratante)	
    /// 
    /// 
    /// Dados obrigatórios apenas no modal Rodoviário, depois da lei 11.442/07. Para os demais modais esta informação é opcional.
    /// </summary>
    property respSeg: Integer read FrespSeg write FrespSeg;
    /// <summary>
    /// Número do CNPJ do responsável pelo seguro.
    /// Obrigatório apenas se responsável pelo seguro for (2) responsável pela contratação do transporte - pessoa jurídica.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Número do CPF do responsável pelo seguro.
    /// Obrigatório apenas se responsável pelo seguro for (2) responsável pela contratação do transporte - pessoa física.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
  end;
  
  TMdfeSefazInfSeg = class
  private
    FxSeg: string;
    FCNPJ: string;
  public
    /// <summary>
    /// Nome da Seguradora.
    /// </summary>
    property xSeg: string read FxSeg write FxSeg;
    /// <summary>
    /// Número do CNPJ da seguradora.
    /// Obrigatório apenas se responsável pelo seguro for (2) responsável pela contratação do transporte - pessoa jurídica.
    /// </summary>
    property CNPJ: string read FCNPJ write FCNPJ;
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Informações do responsável pelo seguro da carga.
    /// </summary>
    property infResp: TMdfeSefazInfResp read FinfResp write SetinfResp;
    /// <summary>
    /// Informações da seguradora.
    /// </summary>
    property infSeg: TMdfeSefazInfSeg read FinfSeg write SetinfSeg;
    /// <summary>
    /// Número da Apólice.
    /// Obrigatório pela lei 11.442/07 (RCTRC).
    /// </summary>
    property nApol: string read FnApol write SetnApol;
    property nApolHasValue: Boolean read FnApolHasValue write FnApolHasValue;
    /// <summary>
    /// Número da Averbação.
    /// Informar as averbações do seguro.
    /// </summary>
    property nAver: stringList read FnAver write SetnAver;
  end;
  
  TMdfeSefazSegList = class(TObjectList<TMdfeSefazSeg>)
  end;
  
  TMdfeSefazInfLocalCarrega = class
  private
    FCEP: string;
    FCEPHasValue: Boolean;
    Flatitude: string;
    FlatitudeHasValue: Boolean;
    Flongitude: string;
    FlongitudeHasValue: Boolean;
    procedure SetCEP(const Value: string);
    procedure Setlatitude(const Value: string);
    procedure Setlongitude(const Value: string);
  public
    /// <summary>
    /// CEP onde foi carregado o MDF-e.
    /// Informar zeros não significativos.
    /// </summary>
    property CEP: string read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    /// <summary>
    /// Latitude do ponto geográfico onde foi carregado o MDF-e.
    /// </summary>
    property latitude: string read Flatitude write Setlatitude;
    property latitudeHasValue: Boolean read FlatitudeHasValue write FlatitudeHasValue;
    /// <summary>
    /// Latitude do ponto geográfico onde foi carregado o MDF-e.
    /// </summary>
    property longitude: string read Flongitude write Setlongitude;
    property longitudeHasValue: Boolean read FlongitudeHasValue write FlongitudeHasValue;
  end;
  
  TMdfeSefazInfLocalDescarrega = class
  private
    FCEP: string;
    FCEPHasValue: Boolean;
    Flatitude: string;
    FlatitudeHasValue: Boolean;
    Flongitude: string;
    FlongitudeHasValue: Boolean;
    procedure SetCEP(const Value: string);
    procedure Setlatitude(const Value: string);
    procedure Setlongitude(const Value: string);
  public
    /// <summary>
    /// CEP onde foi descarregado o MDF-e.
    /// Informar zeros não significativos.
    /// </summary>
    property CEP: string read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    /// <summary>
    /// Latitude do ponto geográfico onde foi descarregado o MDF-e.
    /// </summary>
    property latitude: string read Flatitude write Setlatitude;
    property latitudeHasValue: Boolean read FlatitudeHasValue write FlatitudeHasValue;
    /// <summary>
    /// Latitude do ponto geográfico onde foi descarregado o MDF-e.
    /// </summary>
    property longitude: string read Flongitude write Setlongitude;
    property longitudeHasValue: Boolean read FlongitudeHasValue write FlongitudeHasValue;
  end;
  
  TMdfeSefazInfLotacao = class
  private
    FinfLocalCarrega: TMdfeSefazInfLocalCarrega;
    FinfLocalDescarrega: TMdfeSefazInfLocalDescarrega;
    procedure SetinfLocalCarrega(const Value: TMdfeSefazInfLocalCarrega);
    procedure SetinfLocalDescarrega(const Value: TMdfeSefazInfLocalDescarrega);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Informações da localização de carregamento do MDF-e de carga lotação.
    /// </summary>
    property infLocalCarrega: TMdfeSefazInfLocalCarrega read FinfLocalCarrega write SetinfLocalCarrega;
    /// <summary>
    /// Informações da localização de descarregamento do MDF-e de carga lotação.
    /// </summary>
    property infLocalDescarrega: TMdfeSefazInfLocalDescarrega read FinfLocalDescarrega write SetinfLocalDescarrega;
  end;
  
  TMdfeSefazProdPred = class
  private
    FtpCarga: string;
    FxProd: string;
    FcEAN: string;
    FcEANHasValue: Boolean;
    FNCM: string;
    FNCMHasValue: Boolean;
    FinfLotacao: TMdfeSefazInfLotacao;
    procedure SetcEAN(const Value: string);
    procedure SetNCM(const Value: string);
    procedure SetinfLotacao(const Value: TMdfeSefazInfLotacao);
  public
    destructor Destroy; override;
    /// <summary>
    /// Tipo de Carga.
    /// Conforme Resolução ANTT nº.  5.849/2019.
    /// 
    /// 01-Granel sólido;
    /// 02-Granel líquido;
    /// 03-Frigorificada;
    /// 04-Conteinerizada;
    /// 05-Carga Geral;
    /// 06-Neogranel;
    /// 07-Perigosa (granel sólido);
    /// 08-Perigosa (granel líquido);
    /// 09-Perigosa (carga frigorificada);
    /// 10-Perigosa (conteinerizada);
    /// 11-Perigosa (carga geral).
    /// </summary>
    property tpCarga: string read FtpCarga write FtpCarga;
    /// <summary>
    /// Descrição do produto.
    /// </summary>
    property xProd: string read FxProd write FxProd;
    /// <summary>
    /// GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barras.
    /// </summary>
    property cEAN: string read FcEAN write SetcEAN;
    property cEANHasValue: Boolean read FcEANHasValue write FcEANHasValue;
    /// <summary>
    /// Código NCM.
    /// </summary>
    property NCM: string read FNCM write SetNCM;
    property NCMHasValue: Boolean read FNCMHasValue write FNCMHasValue;
    /// <summary>
    /// Informações da carga lotação. Informar somente quando MDF-e for de carga lotação.
    /// </summary>
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
    FcUnid: string;
    FqCarga: Double;
    procedure SetqCTe(const Value: Integer);
    procedure SetqNFe(const Value: Integer);
    procedure SetqMDFe(const Value: Integer);
  public
    /// <summary>
    /// Quantidade total de CT-e relacionados no Manifesto.
    /// </summary>
    property qCTe: Integer read FqCTe write SetqCTe;
    property qCTeHasValue: Boolean read FqCTeHasValue write FqCTeHasValue;
    /// <summary>
    /// Quantidade total de NF-e relacionadas no Manifesto.
    /// </summary>
    property qNFe: Integer read FqNFe write SetqNFe;
    property qNFeHasValue: Boolean read FqNFeHasValue write FqNFeHasValue;
    /// <summary>
    /// Quantidade total de MDF-e relacionados no Manifesto Aquaviário.
    /// </summary>
    property qMDFe: Integer read FqMDFe write SetqMDFe;
    property qMDFeHasValue: Boolean read FqMDFeHasValue write FqMDFeHasValue;
    /// <summary>
    /// Valor total da carga / mercadorias transportadas.
    /// </summary>
    property vCarga: Double read FvCarga write FvCarga;
    /// <summary>
    /// Código da unidade de medida do Peso Bruto da Carga / Mercadorias transportadas.
    /// 01 – KG;  02 - TON.
    /// </summary>
    property cUnid: string read FcUnid write FcUnid;
    /// <summary>
    /// Peso Bruto Total da Carga / Mercadorias transportadas.
    /// </summary>
    property qCarga: Double read FqCarga write FqCarga;
  end;
  
  TMdfeSefazLacres = class
  private
    FnLacre: string;
  public
    /// <summary>
    /// número do lacre.
    /// </summary>
    property nLacre: string read FnLacre write FnLacre;
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
    /// <summary>
    /// CNPJ do autorizado.
    /// Informar zeros não significativos.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// CPF do autorizado.
    /// Informar zeros não significativos.
    /// </summary>
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
    /// <summary>
    /// Informações adicionais de interesse do Fisco.
    /// Norma referenciada, informações complementares, etc.
    /// </summary>
    property infAdFisco: string read FinfAdFisco write SetinfAdFisco;
    property infAdFiscoHasValue: Boolean read FinfAdFiscoHasValue write FinfAdFiscoHasValue;
    /// <summary>
    /// Informações complementares de interesse do Contribuinte.
    /// </summary>
    property infCpl: string read FinfCpl write SetinfCpl;
    property infCplHasValue: Boolean read FinfCplHasValue write FinfCplHasValue;
  end;
  
  TMdfeSefazRespTec = class
  private
    FCNPJ: string;
    FxContato: string;
    Femail: string;
    Ffone: string;
    FidCSRT: Integer;
    FidCSRTHasValue: Boolean;
    FhashCSRT: string;
    FhashCSRTHasValue: Boolean;
    procedure SetidCSRT(const Value: Integer);
    procedure SethashCSRT(const Value: string);
  public
    /// <summary>
    /// CNPJ da pessoa jurídica responsável técnica pelo sistema utilizado na emissão do documento fiscal eletrônico.
    /// Informar o CNPJ da pessoa jurídica desenvolvedora do sistema utilizado na emissão do documento fiscal eletrônico.
    /// </summary>
    property CNPJ: string read FCNPJ write FCNPJ;
    /// <summary>
    /// Nome da pessoa a ser contatada.
    /// Informar o nome da pessoa a ser contatada na empresa desenvolvedora do sistema utilizado na emissão do documento fiscal eletrônico. No caso de pessoa física, informar o respectivo nome.
    /// </summary>
    property xContato: string read FxContato write FxContato;
    /// <summary>
    /// Email da pessoa jurídica a ser contatada.
    /// </summary>
    property email: string read Femail write Femail;
    /// <summary>
    /// Telefone da pessoa jurídica a ser contatada.
    /// Preencher com o Código DDD + número do telefone.
    /// </summary>
    property fone: string read Ffone write Ffone;
    /// <summary>
    /// Identificador do código de segurança do responsável técnico.
    /// Identificador do CSRT utilizado para geração do hash.
    /// </summary>
    property idCSRT: Integer read FidCSRT write SetidCSRT;
    property idCSRTHasValue: Boolean read FidCSRTHasValue write FidCSRTHasValue;
    /// <summary>
    /// Hash do token do código de segurança do responsável técnico.
    /// O hashCSRT é o resultado das funções SHA-1 e base64 do token CSRT fornecido pelo fisco + chave de acesso do DF-e. (Implementação em futura NT)
    /// 
    /// Observação: 28 caracteres são representados no schema como 20 bytes do tipo base64Binary.
    /// </summary>
    property hashCSRT: string read FhashCSRT write SethashCSRT;
    property hashCSRTHasValue: Boolean read FhashCSRTHasValue write FhashCSRTHasValue;
  end;
  
  TMdfeSefazInfSolicNFF = class
  private
    FxSolic: string;
  public
    /// <summary>
    /// Solicitação do pedido de emissão da NFF.
    /// Será preenchido com a totalidade de campos informados no aplicativo emissor serializado.
    /// </summary>
    property xSolic: string read FxSolic write FxSolic;
  end;
  
  TMdfeSefazInfMDFe = class
  private
    Fversao: string;
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Versão do leiaute.
    /// Ex: "3.00".
    /// </summary>
    property versao: string read Fversao write Fversao;
    /// <summary>
    /// Identificador da tag a ser assinada.
    /// Informar a chave de acesso do MDF-e e precedida do literal "MDFe".
    /// </summary>
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    /// <summary>
    /// Identificação do MDF-e.
    /// </summary>
    property ide: TMdfeSefazIde read Fide write Setide;
    /// <summary>
    /// Identificação do Emitente do Manifesto.
    /// </summary>
    property emit: TMdfeSefazEmit read Femit write Setemit;
    /// <summary>
    /// Informações do modal.
    /// </summary>
    property infModal: TMdfeSefazInfModal read FinfModal write SetinfModal;
    /// <summary>
    /// Informações dos Documentos fiscais vinculados ao manifesto.
    /// </summary>
    property infDoc: TMdfeSefazInfDoc read FinfDoc write SetinfDoc;
    /// <summary>
    /// Informações de Seguro da Carga.
    /// </summary>
    property seg: TMdfeSefazSegList read Fseg write Setseg;
    /// <summary>
    /// Produto predominante.
    /// Informar a descrição do produto predominante.
    /// </summary>
    property prodPred: TMdfeSefazProdPred read FprodPred write SetprodPred;
    /// <summary>
    /// Totalizadores da carga transportada e seus documentos fiscais.
    /// </summary>
    property tot: TMdfeSefazTot read Ftot write Settot;
    /// <summary>
    /// Lacres do MDF-e.
    /// Preechimento opcional para os modais Rodoviário e Ferroviário.
    /// </summary>
    property lacres: TMdfeSefazLacresList read Flacres write Setlacres;
    /// <summary>
    /// Autorizados para download do XML do DF-e.
    /// Informar CNPJ ou CPF. Preencher os zeros não significativos.
    /// </summary>
    property autXML: TMdfeSefazAutXMLList read FautXML write SetautXML;
    /// <summary>
    /// Informações Adicionais.
    /// </summary>
    property infAdic: TMdfeSefazInfAdic read FinfAdic write SetinfAdic;
    /// <summary>
    /// Informações do Responsável Técnico pela emissão do DF-e.
    /// </summary>
    property infRespTec: TMdfeSefazRespTec read FinfRespTec write SetinfRespTec;
    /// <summary>
    /// Grupo de informações do pedido de emissão da Nota Fiscal Fácil.
    /// </summary>
    property infSolicNFF: TMdfeSefazInfSolicNFF read FinfSolicNFF write SetinfSolicNFF;
  end;
  
  TMdfeSefazInfMDFeSupl = class
  private
    FqrCodMDFe: string;
    FqrCodMDFeHasValue: Boolean;
    procedure SetqrCodMDFe(const Value: string);
  public
    /// <summary>
    /// Texto com o QR-Code para consulta do MDF-e.
    /// Geramos automaticamente quando nenhum valor é informado.
    /// </summary>
    property qrCodMDFe: string read FqrCodMDFe write SetqrCodMDFe;
    property qrCodMDFeHasValue: Boolean read FqrCodMDFeHasValue write FqrCodMDFeHasValue;
  end;
  
  TMdfePedidoEmissao = class
  private
    FinfMDFe: TMdfeSefazInfMDFe;
    FinfMDFeSupl: TMdfeSefazInfMDFeSupl;
    Fambiente: string;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    procedure SetinfMDFe(const Value: TMdfeSefazInfMDFe);
    procedure SetinfMDFeSupl(const Value: TMdfeSefazInfMDFeSupl);
    procedure Setreferencia(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    property infMDFe: TMdfeSefazInfMDFe read FinfMDFe write SetinfMDFe;
    property infMDFeSupl: TMdfeSefazInfMDFeSupl read FinfMDFeSupl write SetinfMDFeSupl;
    /// <summary>
    /// Identificação do Ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Fambiente;
    /// <summary>
    /// Seu identificador único para este documento. Opcional, ajuda a evitar o envio duplicado de um mesmo documento.
    /// </summary>
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
  end;
  
  TMdfePedidoEmissaoList = class(TObjectList<TMdfePedidoEmissao>)
  end;
  
  TMdfePedidoEmissaoLote = class
  private
    Fdocumentos: TMdfePedidoEmissaoList;
    Fambiente: string;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    Fid_lote: string;
    procedure Setdocumentos(const Value: TMdfePedidoEmissaoList);
    procedure Setreferencia(const Value: string);
  public
    destructor Destroy; override;
    property documentos: TMdfePedidoEmissaoList read Fdocumentos write Setdocumentos;
    /// <summary>
    /// Identificação do Ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Fambiente;
    /// <summary>
    /// Seu identificador para este documento. Opcional, ajuda a evitar o envio duplicado de um mesmo documento.
    /// </summary>
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
    property id_lote: string read Fid_lote write Fid_lote;
  end;
  
  TMdfePedidoCancelamento = class
  private
    Fjustificativa: string;
    FjustificativaHasValue: Boolean;
    procedure Setjustificativa(const Value: string);
  public
    /// <summary>
    /// Justificativa para o cancelamento. Preencheremos automaticamente, caso esteja em branco.
    /// </summary>
    property justificativa: string read Fjustificativa write Setjustificativa;
    property justificativaHasValue: Boolean read FjustificativaHasValue write FjustificativaHasValue;
  end;
  
  TMdfePedidoEncerramento = class
  private
    Fdata_encerramento: TDate;
    Fdata_encerramentoHasValue: Boolean;
    Fuf: string;
    Fcodigo_municipio: string;
    procedure Setdata_encerramento(const Value: TDate);
  public
    /// <summary>
    /// Data que o manifesto foi encerrado.
    /// Opcional. Caso não seja informada, será utilizada a data em que a solicitação foi feita à API.
    /// </summary>
    property data_encerramento: TDate read Fdata_encerramento write Setdata_encerramento;
    property data_encerramentoHasValue: Boolean read Fdata_encerramentoHasValue write Fdata_encerramentoHasValue;
    /// <summary>
    /// UF de encerramento do manifesto.
    /// </summary>
    property uf: string read Fuf write Fuf;
    /// <summary>
    /// Código IBGE do Município de encerramento do manifesto.
    /// </summary>
    property codigo_municipio: string read Fcodigo_municipio write Fcodigo_municipio;
  end;
  
  TMdfeEncerramento = class
  private
    Fdata_encerramento: TDate;
    Fdata_encerramentoHasValue: Boolean;
    Fuf: string;
    FufHasValue: Boolean;
    Fcodigo_municipio: string;
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
    procedure Setcodigo_municipio(const Value: string);
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
    /// <summary>
    /// Data que o manifesto foi encerrado.
    /// </summary>
    property data_encerramento: TDate read Fdata_encerramento write Setdata_encerramento;
    property data_encerramentoHasValue: Boolean read Fdata_encerramentoHasValue write Fdata_encerramentoHasValue;
    /// <summary>
    /// UF de encerramento do manifesto.
    /// </summary>
    property uf: string read Fuf write Setuf;
    property ufHasValue: Boolean read FufHasValue write FufHasValue;
    /// <summary>
    /// Código do Município de encerramento do manifesto.
    /// </summary>
    property codigo_municipio: string read Fcodigo_municipio write Setcodigo_municipio;
    property codigo_municipioHasValue: Boolean read Fcodigo_municipioHasValue write Fcodigo_municipioHasValue;
    /// <summary>
    /// ID único gerado pela Nuvem Fiscal para este evento.
    /// </summary>
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    /// <summary>
    /// Identificação do ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    /// <summary>
    /// Status do Evento.
    /// </summary>
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    /// <summary>
    /// Identificação do autor do evento.
    /// </summary>
    property autor: TDfeAutorEvento read Fautor write Setautor;
    /// <summary>
    /// Chave de Acesso do documento vinculado ao evento.
    /// </summary>
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    /// <summary>
    /// Data e hora do Evento.
    /// </summary>
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    /// <summary>
    /// Sequencial do evento para o mesmo tipo de evento.
    /// </summary>
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    /// <summary>
    /// Data e hora do recebimento do Evento pela SEFAZ.
    /// </summary>
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    /// <summary>
    /// Código do status de registro do Evento.
    /// </summary>
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    /// <summary>
    /// Descrição literal do status do registro do Evento.
    /// </summary>
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    /// <summary>
    /// Número do Protocolo de registro do Evento.
    /// </summary>
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    /// <summary>
    /// Código da Mensagem.
    /// </summary>
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    /// <summary>
    /// Mensagem da SEFAZ para o emissor.
    /// </summary>
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TMdfePedidoInclusaoCondutor = class
  private
    Fnome_condutor: string;
    Fcpf_condutor: string;
  public
    /// <summary>
    /// Nome do condutor.
    /// </summary>
    property nome_condutor: string read Fnome_condutor write Fnome_condutor;
    /// <summary>
    /// CPF do condutor.
    /// </summary>
    property cpf_condutor: string read Fcpf_condutor write Fcpf_condutor;
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
    /// <summary>
    /// Nome do condutor.
    /// </summary>
    property nome_condutor: string read Fnome_condutor write Setnome_condutor;
    property nome_condutorHasValue: Boolean read Fnome_condutorHasValue write Fnome_condutorHasValue;
    /// <summary>
    /// CPF do condutor.
    /// </summary>
    property cpf_condutor: string read Fcpf_condutor write Setcpf_condutor;
    property cpf_condutorHasValue: Boolean read Fcpf_condutorHasValue write Fcpf_condutorHasValue;
    /// <summary>
    /// ID único gerado pela Nuvem Fiscal para este evento.
    /// </summary>
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    /// <summary>
    /// Identificação do ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    /// <summary>
    /// Status do Evento.
    /// </summary>
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    /// <summary>
    /// Identificação do autor do evento.
    /// </summary>
    property autor: TDfeAutorEvento read Fautor write Setautor;
    /// <summary>
    /// Chave de Acesso do documento vinculado ao evento.
    /// </summary>
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    /// <summary>
    /// Data e hora do Evento.
    /// </summary>
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    /// <summary>
    /// Sequencial do evento para o mesmo tipo de evento.
    /// </summary>
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    /// <summary>
    /// Data e hora do recebimento do Evento pela SEFAZ.
    /// </summary>
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    /// <summary>
    /// Código do status de registro do Evento.
    /// </summary>
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    /// <summary>
    /// Descrição literal do status do registro do Evento.
    /// </summary>
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    /// <summary>
    /// Número do Protocolo de registro do Evento.
    /// </summary>
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    /// <summary>
    /// Código da Mensagem.
    /// </summary>
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    /// <summary>
    /// Mensagem da SEFAZ para o emissor.
    /// </summary>
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TMdfeDocumentoVinculado = class
  private
    Fcodigo_municipio_descarga: string;
    Fcodigo_municipio_descargaHasValue: Boolean;
    Fmunicipio_descarga: string;
    Fmunicipio_descargaHasValue: Boolean;
    Fchave_acesso_nfe: string;
    Fchave_acesso_nfeHasValue: Boolean;
    procedure Setcodigo_municipio_descarga(const Value: string);
    procedure Setmunicipio_descarga(const Value: string);
    procedure Setchave_acesso_nfe(const Value: string);
  public
    /// <summary>
    /// Código do Município de descarregamento.
    /// </summary>
    property codigo_municipio_descarga: string read Fcodigo_municipio_descarga write Setcodigo_municipio_descarga;
    property codigo_municipio_descargaHasValue: Boolean read Fcodigo_municipio_descargaHasValue write Fcodigo_municipio_descargaHasValue;
    /// <summary>
    /// Nome do Município de descarregamento.
    /// </summary>
    property municipio_descarga: string read Fmunicipio_descarga write Setmunicipio_descarga;
    property municipio_descargaHasValue: Boolean read Fmunicipio_descargaHasValue write Fmunicipio_descargaHasValue;
    /// <summary>
    /// Chave de acesso da NF-e.
    /// </summary>
    property chave_acesso_nfe: string read Fchave_acesso_nfe write Setchave_acesso_nfe;
    property chave_acesso_nfeHasValue: Boolean read Fchave_acesso_nfeHasValue write Fchave_acesso_nfeHasValue;
  end;
  
  TMdfeDocumentoVinculadoList = class(TObjectList<TMdfeDocumentoVinculado>)
  end;
  
  TMdfePedidoInclusaoDfe = class
  private
    Fcodigo_municipio_carrega: string;
    Fcodigo_municipio_carregaHasValue: Boolean;
    Fmunicipio_carrega: string;
    Fmunicipio_carregaHasValue: Boolean;
    Fdocumentos: TMdfeDocumentoVinculadoList;
    Fprotocolo_autorizacao: string;
    Fprotocolo_autorizacaoHasValue: Boolean;
    procedure Setcodigo_municipio_carrega(const Value: string);
    procedure Setmunicipio_carrega(const Value: string);
    procedure Setdocumentos(const Value: TMdfeDocumentoVinculadoList);
    procedure Setprotocolo_autorizacao(const Value: string);
  public
    destructor Destroy; override;
    /// <summary>
    /// Código do Município de carregamento.
    /// </summary>
    property codigo_municipio_carrega: string read Fcodigo_municipio_carrega write Setcodigo_municipio_carrega;
    property codigo_municipio_carregaHasValue: Boolean read Fcodigo_municipio_carregaHasValue write Fcodigo_municipio_carregaHasValue;
    /// <summary>
    /// Nome do Município de carregamento.
    /// </summary>
    property municipio_carrega: string read Fmunicipio_carrega write Setmunicipio_carrega;
    property municipio_carregaHasValue: Boolean read Fmunicipio_carregaHasValue write Fmunicipio_carregaHasValue;
    /// <summary>
    /// Informações dos documentos fiscais vinculados ao manifesto.
    /// </summary>
    property documentos: TMdfeDocumentoVinculadoList read Fdocumentos write Setdocumentos;
    property protocolo_autorizacao: string read Fprotocolo_autorizacao write Setprotocolo_autorizacao;
    property protocolo_autorizacaoHasValue: Boolean read Fprotocolo_autorizacaoHasValue write Fprotocolo_autorizacaoHasValue;
  end;
  
  TMdfeInclusaoDfe = class
  private
    Fcodigo_municipio_carrega: string;
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
    procedure Setcodigo_municipio_carrega(const Value: string);
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
    /// <summary>
    /// Código do Município de carregamento.
    /// </summary>
    property codigo_municipio_carrega: string read Fcodigo_municipio_carrega write Setcodigo_municipio_carrega;
    property codigo_municipio_carregaHasValue: Boolean read Fcodigo_municipio_carregaHasValue write Fcodigo_municipio_carregaHasValue;
    /// <summary>
    /// Nome do Município de carregamento.
    /// </summary>
    property municipio_carrega: string read Fmunicipio_carrega write Setmunicipio_carrega;
    property municipio_carregaHasValue: Boolean read Fmunicipio_carregaHasValue write Fmunicipio_carregaHasValue;
    /// <summary>
    /// Informações dos documentos fiscais vinculados ao manifesto.
    /// </summary>
    property documentos: TMdfeDocumentoVinculadoList read Fdocumentos write Setdocumentos;
    /// <summary>
    /// ID único gerado pela Nuvem Fiscal para este evento.
    /// </summary>
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    /// <summary>
    /// Identificação do ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    /// <summary>
    /// Status do Evento.
    /// </summary>
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    /// <summary>
    /// Identificação do autor do evento.
    /// </summary>
    property autor: TDfeAutorEvento read Fautor write Setautor;
    /// <summary>
    /// Chave de Acesso do documento vinculado ao evento.
    /// </summary>
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    /// <summary>
    /// Data e hora do Evento.
    /// </summary>
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    /// <summary>
    /// Sequencial do evento para o mesmo tipo de evento.
    /// </summary>
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    /// <summary>
    /// Data e hora do recebimento do Evento pela SEFAZ.
    /// </summary>
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    /// <summary>
    /// Código do status de registro do Evento.
    /// </summary>
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    /// <summary>
    /// Descrição literal do status do registro do Evento.
    /// </summary>
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    /// <summary>
    /// Número do Protocolo de registro do Evento.
    /// </summary>
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    /// <summary>
    /// Código da Mensagem.
    /// </summary>
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    /// <summary>
    /// Mensagem da SEFAZ para o emissor.
    /// </summary>
    property mensagem: string read Fmensagem write Setmensagem;
    property mensagemHasValue: Boolean read FmensagemHasValue write FmensagemHasValue;
    property tipo_evento: string read Ftipo_evento write Settipo_evento;
    property tipo_eventoHasValue: Boolean read Ftipo_eventoHasValue write Ftipo_eventoHasValue;
  end;
  
  TNfeSefazRefNF = class
  private
    FcUF: Integer;
    FAAMM: string;
    FCNPJ: string;
    Fmod: string;
    Fserie: Integer;
    FnNF: Integer;
  public
    /// <summary>
    /// Código da UF do emitente do Documento Fiscal. Utilizar a Tabela do IBGE.
    /// </summary>
    property cUF: Integer read FcUF write FcUF;
    /// <summary>
    /// AAMM da emissão.
    /// </summary>
    property AAMM: string read FAAMM write FAAMM;
    /// <summary>
    /// CNPJ do emitente do documento fiscal referenciado.
    /// </summary>
    property CNPJ: string read FCNPJ write FCNPJ;
    /// <summary>
    /// Código do modelo do Documento Fiscal. Utilizar 01 para NF modelo 1/1A e 02 para NF modelo 02.
    /// </summary>
    property &mod: string read Fmod write Fmod;
    /// <summary>
    /// Série do Documento Fiscal, informar zero se inexistente.
    /// </summary>
    property serie: Integer read Fserie write Fserie;
    /// <summary>
    /// Número do Documento Fiscal.
    /// </summary>
    property nNF: Integer read FnNF write FnNF;
  end;
  
  TNfeSefazRefNFP = class
  private
    FcUF: Integer;
    FAAMM: string;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FCPF: string;
    FCPFHasValue: Boolean;
    FIE: string;
    Fmod: string;
    Fserie: Integer;
    FnNF: Integer;
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
  public
    /// <summary>
    /// Código da UF do emitente do Documento FiscalUtilizar a Tabela do IBGE (Anexo IV - Tabela de UF, Município e País).
    /// </summary>
    property cUF: Integer read FcUF write FcUF;
    /// <summary>
    /// AAMM da emissão da NF de produtor.
    /// </summary>
    property AAMM: string read FAAMM write FAAMM;
    /// <summary>
    /// CNPJ do emitente da NF de produtor.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// CPF do emitente da NF de produtor.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// IE do emitente da NF de Produtor.
    /// </summary>
    property IE: string read FIE write FIE;
    /// <summary>
    /// Código do modelo do Documento Fiscal - utilizar 04 para NF de produtor  ou 01 para NF Avulsa.
    /// </summary>
    property &mod: string read Fmod write Fmod;
    /// <summary>
    /// Série do Documento Fiscal, informar zero se inexistentesérie.
    /// </summary>
    property serie: Integer read Fserie write Fserie;
    /// <summary>
    /// Número do Documento Fiscal - 1 – 999999999.
    /// </summary>
    property nNF: Integer read FnNF write FnNF;
  end;
  
  TNfeSefazRefECF = class
  private
    Fmod: string;
    FnECF: Integer;
    FnCOO: Integer;
  public
    /// <summary>
    /// Código do modelo do Documento Fiscal 
    /// Preencher com "2B", quando se tratar de Cupom Fiscal emitido por máquina registradora (não ECF), com "2C", quando se tratar de Cupom Fiscal PDV, ou "2D", quando se tratar de Cupom Fiscal (emitido por ECF).
    /// </summary>
    property &mod: string read Fmod write Fmod;
    /// <summary>
    /// Informar o número de ordem seqüencial do ECF que emitiu o Cupom Fiscal vinculado à NF-e.
    /// </summary>
    property nECF: Integer read FnECF write FnECF;
    /// <summary>
    /// Informar o Número do Contador de Ordem de Operação - COO vinculado à NF-e.
    /// </summary>
    property nCOO: Integer read FnCOO write FnCOO;
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
    /// <summary>
    /// Chave de acesso das NF-e referenciadas. Chave de acesso compostas por Código da UF (tabela do IBGE) + AAMM da emissão + CNPJ do Emitente + modelo, série e número da NF-e Referenciada + Código Numérico + DV.
    /// </summary>
    property refNFe: string read FrefNFe write SetrefNFe;
    property refNFeHasValue: Boolean read FrefNFeHasValue write FrefNFeHasValue;
    /// <summary>
    /// Dados da NF modelo 1/1A referenciada ou NF modelo 2 referenciada.
    /// </summary>
    property refNF: TNfeSefazRefNF read FrefNF write SetrefNF;
    /// <summary>
    /// Grupo com as informações NF de produtor referenciada.
    /// </summary>
    property refNFP: TNfeSefazRefNFP read FrefNFP write SetrefNFP;
    /// <summary>
    /// Utilizar esta TAG para referenciar um CT-e emitido anteriormente, vinculada a NF-e atual.
    /// </summary>
    property refCTe: string read FrefCTe write SetrefCTe;
    property refCTeHasValue: Boolean read FrefCTeHasValue write FrefCTeHasValue;
    /// <summary>
    /// Grupo do Cupom Fiscal vinculado à NF-e.
    /// </summary>
    property refECF: TNfeSefazRefECF read FrefECF write SetrefECF;
  end;
  
  TNfeSefazNFrefList = class(TObjectList<TNfeSefazNFref>)
  end;
  
  TNfeSefazIde = class
  private
    FcUF: Integer;
    FcNF: string;
    FcNFHasValue: Boolean;
    FnatOp: string;
    Fmod: Integer;
    FmodHasValue: Boolean;
    Fserie: Integer;
    FnNF: Integer;
    FdhEmi: TDateTime;
    FdhSaiEnt: TDateTime;
    FdhSaiEntHasValue: Boolean;
    FtpNF: Integer;
    FidDest: Integer;
    FcMunFG: string;
    FtpImp: Integer;
    FtpEmis: Integer;
    FcDV: Integer;
    FcDVHasValue: Boolean;
    FtpAmb: Integer;
    FtpAmbHasValue: Boolean;
    FfinNFe: Integer;
    FindFinal: Integer;
    FindPres: Integer;
    FindIntermed: Integer;
    FindIntermedHasValue: Boolean;
    FprocEmi: Integer;
    FverProc: string;
    FdhCont: TDateTime;
    FdhContHasValue: Boolean;
    FxJust: string;
    FxJustHasValue: Boolean;
    FNFref: TNfeSefazNFrefList;
    procedure SetcNF(const Value: string);
    procedure Setmod(const Value: Integer);
    procedure SetdhSaiEnt(const Value: TDateTime);
    procedure SetcDV(const Value: Integer);
    procedure SettpAmb(const Value: Integer);
    procedure SetindIntermed(const Value: Integer);
    procedure SetdhCont(const Value: TDateTime);
    procedure SetxJust(const Value: string);
    procedure SetNFref(const Value: TNfeSefazNFrefList);
  public
    destructor Destroy; override;
    /// <summary>
    /// Código da UF do emitente do Documento Fiscal. Utilizar a Tabela do IBGE.
    /// </summary>
    property cUF: Integer read FcUF write FcUF;
    /// <summary>
    /// Código numérico que compõe a Chave de Acesso. Número aleatório gerado pelo emitente para cada NF-e.
    /// Geramos automaticamente quando nenhum valor é informado.
    /// </summary>
    property cNF: string read FcNF write SetcNF;
    property cNFHasValue: Boolean read FcNFHasValue write FcNFHasValue;
    /// <summary>
    /// Descrição da Natureza da Operação.
    /// </summary>
    property natOp: string read FnatOp write FnatOp;
    /// <summary>
    /// Código do modelo do Documento Fiscal. 55 = NF-e; 65 = NFC-e.
    /// </summary>
    property &mod: Integer read Fmod write Setmod;
    property &modHasValue: Boolean read FmodHasValue write FmodHasValue;
    /// <summary>
    /// Série do Documento Fiscal
    /// série normal 0-889
    /// Avulsa Fisco 890-899
    /// SCAN 900-999.
    /// </summary>
    property serie: Integer read Fserie write Fserie;
    /// <summary>
    /// Número do Documento Fiscal.
    /// </summary>
    property nNF: Integer read FnNF write FnNF;
    /// <summary>
    /// Data e Hora de emissão do Documento Fiscal (AAAA-MM-DDThh:mm:ssTZD) ex.: 2012-09-01T13:00:00-03:00.
    /// </summary>
    property dhEmi: TDateTime read FdhEmi write FdhEmi;
    /// <summary>
    /// Data e Hora da saída ou de entrada da mercadoria / produto (AAAA-MM-DDTHH:mm:ssTZD).
    /// </summary>
    property dhSaiEnt: TDateTime read FdhSaiEnt write SetdhSaiEnt;
    property dhSaiEntHasValue: Boolean read FdhSaiEntHasValue write FdhSaiEntHasValue;
    /// <summary>
    /// Tipo do Documento Fiscal (0 - entrada; 1 - saída).
    /// </summary>
    property tpNF: Integer read FtpNF write FtpNF;
    /// <summary>
    /// Identificador de Local de destino da operação (1-Interna;2-Interestadual;3-Exterior).
    /// </summary>
    property idDest: Integer read FidDest write FidDest;
    /// <summary>
    /// Código do Município de Ocorrência do Fato Gerador (utilizar a tabela do IBGE).
    /// </summary>
    property cMunFG: string read FcMunFG write FcMunFG;
    /// <summary>
    /// Formato de impressão do DANFE (0-sem DANFE;1-DANFe Retrato; 2-DANFe Paisagem;3-DANFe Simplificado;
    /// 											4-DANFe NFC-e;5-DANFe NFC-e em mensagem eletrônica).
    /// </summary>
    property tpImp: Integer read FtpImp write FtpImp;
    /// <summary>
    /// Forma de emissão da NF-e
    /// 1 - Normal;
    /// 2 - Contingência FS
    /// 3 - Regime Especial NFF (NT 2021.002)
    /// 4 - Contingência DPEC
    /// 5 - Contingência FSDA
    /// 6 - Contingência SVC - AN
    /// 7 - Contingência SVC - RS
    /// 9 - Contingência off-line NFC-e.
    /// </summary>
    property tpEmis: Integer read FtpEmis write FtpEmis;
    /// <summary>
    /// Digito Verificador da Chave de Acesso da NF-e.
    /// Geramos automaticamente quando nenhum valor é informado.
    /// </summary>
    property cDV: Integer read FcDV write SetcDV;
    property cDVHasValue: Boolean read FcDVHasValue write FcDVHasValue;
    /// <summary>
    /// Identificação do Ambiente:
    /// 1 - Produção
    /// 2 - Homologação.
    /// </summary>
    property tpAmb: Integer read FtpAmb write SettpAmb;
    property tpAmbHasValue: Boolean read FtpAmbHasValue write FtpAmbHasValue;
    /// <summary>
    /// Finalidade da emissão da NF-e:
    /// 1 - NFe normal
    /// 2 - NFe complementar
    /// 3 - NFe de ajuste
    /// 4 - Devolução/Retorno.
    /// </summary>
    property finNFe: Integer read FfinNFe write FfinNFe;
    /// <summary>
    /// Indica operação com consumidor final (0-Não;1-Consumidor Final).
    /// </summary>
    property indFinal: Integer read FindFinal write FindFinal;
    /// <summary>
    /// Indicador de presença do comprador no estabelecimento comercial no momento da oepração
    /// 											(0-Não se aplica (ex.: Nota Fiscal complementar ou de ajuste;1-Operação presencial;2-Não presencial, internet;3-Não presencial, teleatendimento;4-NFC-e entrega em domicílio;5-Operação presencial, fora do estabelecimento;9-Não presencial, outros).
    /// </summary>
    property indPres: Integer read FindPres write FindPres;
    /// <summary>
    /// Indicador de intermediador/marketplace 
    /// 											0=Operação sem intermediador (em site ou plataforma própria) 
    /// 											1=Operação em site ou plataforma de terceiros (intermediadores/marketplace).
    /// </summary>
    property indIntermed: Integer read FindIntermed write SetindIntermed;
    property indIntermedHasValue: Boolean read FindIntermedHasValue write FindIntermedHasValue;
    /// <summary>
    /// Processo de emissão utilizado com a seguinte codificação:
    /// 0 - emissão de NF-e com aplicativo do contribuinte;
    /// 1 - emissão de NF-e avulsa pelo Fisco;
    /// 2 - emissão de NF-e avulsa, pelo contribuinte com seu certificado digital, através do site
    /// do Fisco;
    /// 3- emissão de NF-e pelo contribuinte com aplicativo fornecido pelo Fisco.
    /// </summary>
    property procEmi: Integer read FprocEmi write FprocEmi;
    /// <summary>
    /// versão do aplicativo utilizado no processo de
    /// emissão.
    /// </summary>
    property verProc: string read FverProc write FverProc;
    /// <summary>
    /// Informar a data e hora de entrada em contingência contingência no formato  (AAAA-MM-DDThh:mm:ssTZD) ex.: 2012-09-01T13:00:00-03:00.
    /// </summary>
    property dhCont: TDateTime read FdhCont write SetdhCont;
    property dhContHasValue: Boolean read FdhContHasValue write FdhContHasValue;
    /// <summary>
    /// Informar a Justificativa da entrada.
    /// </summary>
    property xJust: string read FxJust write SetxJust;
    property xJustHasValue: Boolean read FxJustHasValue write FxJustHasValue;
    /// <summary>
    /// Grupo de infromações da NF referenciada.
    /// </summary>
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
    FcMun: string;
    FcMunHasValue: Boolean;
    FxMun: string;
    FxMunHasValue: Boolean;
    FUF: string;
    FUFHasValue: Boolean;
    FCEP: string;
    FCEPHasValue: Boolean;
    FcPais: string;
    FcPaisHasValue: Boolean;
    FxPais: string;
    FxPaisHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    procedure SetxLgr(const Value: string);
    procedure Setnro(const Value: string);
    procedure SetxCpl(const Value: string);
    procedure SetxBairro(const Value: string);
    procedure SetcMun(const Value: string);
    procedure SetxMun(const Value: string);
    procedure SetUF(const Value: string);
    procedure SetCEP(const Value: string);
    procedure SetcPais(const Value: string);
    procedure SetxPais(const Value: string);
    procedure Setfone(const Value: string);
  public
    /// <summary>
    /// Logradouro.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xLgr: string read FxLgr write SetxLgr;
    property xLgrHasValue: Boolean read FxLgrHasValue write FxLgrHasValue;
    /// <summary>
    /// Número.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property nro: string read Fnro write Setnro;
    property nroHasValue: Boolean read FnroHasValue write FnroHasValue;
    /// <summary>
    /// Complemento.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xCpl: string read FxCpl write SetxCpl;
    property xCplHasValue: Boolean read FxCplHasValue write FxCplHasValue;
    /// <summary>
    /// Bairro.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xBairro: string read FxBairro write SetxBairro;
    property xBairroHasValue: Boolean read FxBairroHasValue write FxBairroHasValue;
    /// <summary>
    /// Código do município.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property cMun: string read FcMun write SetcMun;
    property cMunHasValue: Boolean read FcMunHasValue write FcMunHasValue;
    /// <summary>
    /// Nome do município.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xMun: string read FxMun write SetxMun;
    property xMunHasValue: Boolean read FxMunHasValue write FxMunHasValue;
    /// <summary>
    /// Sigla da UF.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    /// <summary>
    /// CEP - NT 2011/004.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property CEP: string read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    /// <summary>
    /// Código do país.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property cPais: string read FcPais write SetcPais;
    property cPaisHasValue: Boolean read FcPaisHasValue write FcPaisHasValue;
    /// <summary>
    /// Nome do país.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xPais: string read FxPais write SetxPais;
    property xPaisHasValue: Boolean read FxPaisHasValue write FxPaisHasValue;
    /// <summary>
    /// Preencher com Código DDD + número do telefone (v.2.0).
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
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
    /// <summary>
    /// Número do CNPJ do emitente.
    /// Obrigatório caso o emitente seja pessoa jurídica.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Número do CPF do emitente.
    /// Obrigatorio caso o emitente seja pessoa física.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Razão Social ou Nome do emitente.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    /// <summary>
    /// Nome fantasia.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property xFant: string read FxFant write SetxFant;
    property xFantHasValue: Boolean read FxFantHasValue write FxFantHasValue;
    /// <summary>
    /// Endereço do emitente.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property enderEmit: TNfeSefazEnderEmi read FenderEmit write SetenderEmit;
    /// <summary>
    /// Inscrição Estadual do Emitente.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    /// <summary>
    /// Inscricao Estadual do Substituto Tributário.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property IEST: string read FIEST write SetIEST;
    property IESTHasValue: Boolean read FIESTHasValue write FIESTHasValue;
    /// <summary>
    /// Inscrição Municipal.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property IM: string read FIM write SetIM;
    property IMHasValue: Boolean read FIMHasValue write FIMHasValue;
    /// <summary>
    /// CNAE Fiscal.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property CNAE: string read FCNAE write SetCNAE;
    property CNAEHasValue: Boolean read FCNAEHasValue write FCNAEHasValue;
    /// <summary>
    /// Código de Regime Tributário. 
    /// Este campo será obrigatoriamente preenchido com:
    /// 1 – Simples Nacional;
    /// 2 – Simples Nacional – excesso de sublimite de receita bruta;
    /// 3 – Regime Normal.
    /// Caso não seja informado, será utilizado o do cadastro da empresa.
    /// </summary>
    property CRT: Integer read FCRT write SetCRT;
    property CRTHasValue: Boolean read FCRTHasValue write FCRTHasValue;
  end;
  
  TNfeSefazAvulsa = class
  private
    FCNPJ: string;
    FxOrgao: string;
    Fmatr: string;
    FxAgente: string;
    Ffone: string;
    FfoneHasValue: Boolean;
    FUF: string;
    FnDAR: string;
    FnDARHasValue: Boolean;
    FdEmi: TDate;
    FdEmiHasValue: Boolean;
    FvDAR: Double;
    FvDARHasValue: Boolean;
    FrepEmi: string;
    FdPag: TDate;
    FdPagHasValue: Boolean;
    procedure Setfone(const Value: string);
    procedure SetnDAR(const Value: string);
    procedure SetdEmi(const Value: TDate);
    procedure SetvDAR(const Value: Double);
    procedure SetdPag(const Value: TDate);
  public
    /// <summary>
    /// CNPJ do Órgão emissor.
    /// </summary>
    property CNPJ: string read FCNPJ write FCNPJ;
    /// <summary>
    /// Órgão emitente.
    /// </summary>
    property xOrgao: string read FxOrgao write FxOrgao;
    /// <summary>
    /// Matrícula do agente.
    /// </summary>
    property matr: string read Fmatr write Fmatr;
    /// <summary>
    /// Nome do agente.
    /// </summary>
    property xAgente: string read FxAgente write FxAgente;
    /// <summary>
    /// Telefone.
    /// </summary>
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    /// <summary>
    /// Sigla da Unidade da Federação.
    /// </summary>
    property UF: string read FUF write FUF;
    /// <summary>
    /// Número do Documento de Arrecadação de Receita.
    /// </summary>
    property nDAR: string read FnDAR write SetnDAR;
    property nDARHasValue: Boolean read FnDARHasValue write FnDARHasValue;
    /// <summary>
    /// Data de emissão do DAR (AAAA-MM-DD).
    /// </summary>
    property dEmi: TDate read FdEmi write SetdEmi;
    property dEmiHasValue: Boolean read FdEmiHasValue write FdEmiHasValue;
    /// <summary>
    /// Valor Total constante no DAR.
    /// </summary>
    property vDAR: Double read FvDAR write SetvDAR;
    property vDARHasValue: Boolean read FvDARHasValue write FvDARHasValue;
    /// <summary>
    /// Repartição Fiscal emitente.
    /// </summary>
    property repEmi: string read FrepEmi write FrepEmi;
    /// <summary>
    /// Data de pagamento do DAR (AAAA-MM-DD).
    /// </summary>
    property dPag: TDate read FdPag write SetdPag;
    property dPagHasValue: Boolean read FdPagHasValue write FdPagHasValue;
  end;
  
  TNfeSefazEndereco = class
  private
    FxLgr: string;
    Fnro: string;
    FxCpl: string;
    FxCplHasValue: Boolean;
    FxBairro: string;
    FcMun: string;
    FxMun: string;
    FUF: string;
    FCEP: string;
    FCEPHasValue: Boolean;
    FcPais: string;
    FcPaisHasValue: Boolean;
    FxPais: string;
    FxPaisHasValue: Boolean;
    Ffone: string;
    FfoneHasValue: Boolean;
    procedure SetxCpl(const Value: string);
    procedure SetCEP(const Value: string);
    procedure SetcPais(const Value: string);
    procedure SetxPais(const Value: string);
    procedure Setfone(const Value: string);
  public
    /// <summary>
    /// Logradouro.
    /// </summary>
    property xLgr: string read FxLgr write FxLgr;
    /// <summary>
    /// Número.
    /// </summary>
    property nro: string read Fnro write Fnro;
    /// <summary>
    /// Complemento.
    /// </summary>
    property xCpl: string read FxCpl write SetxCpl;
    property xCplHasValue: Boolean read FxCplHasValue write FxCplHasValue;
    /// <summary>
    /// Bairro.
    /// </summary>
    property xBairro: string read FxBairro write FxBairro;
    /// <summary>
    /// Código do município (utilizar a tabela do IBGE), informar 9999999 para operações com o exterior.
    /// </summary>
    property cMun: string read FcMun write FcMun;
    /// <summary>
    /// Nome do município, informar EXTERIOR para operações com o exterior.
    /// </summary>
    property xMun: string read FxMun write FxMun;
    /// <summary>
    /// Sigla da UF, informar EX para operações com o exterior.
    /// </summary>
    property UF: string read FUF write FUF;
    /// <summary>
    /// CEP.
    /// </summary>
    property CEP: string read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    /// <summary>
    /// Código de Pais.
    /// </summary>
    property cPais: string read FcPais write SetcPais;
    property cPaisHasValue: Boolean read FcPaisHasValue write FcPaisHasValue;
    /// <summary>
    /// Nome do país.
    /// </summary>
    property xPais: string read FxPais write SetxPais;
    property xPaisHasValue: Boolean read FxPaisHasValue write FxPaisHasValue;
    /// <summary>
    /// Telefone, preencher com Código DDD + número do telefone , nas operações com exterior é permtido informar o código do país + código da localidade + número do telefone.
    /// </summary>
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
    procedure SetIE(const Value: string);
    procedure SetISUF(const Value: string);
    procedure SetIM(const Value: string);
    procedure Setemail(const Value: string);
  public
    destructor Destroy; override;
    /// <summary>
    /// Número do CNPJ.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Número do CPF.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Identificador do destinatário, em caso de comprador estrangeiro.
    /// </summary>
    property idEstrangeiro: string read FidEstrangeiro write SetidEstrangeiro;
    property idEstrangeiroHasValue: Boolean read FidEstrangeiroHasValue write FidEstrangeiroHasValue;
    /// <summary>
    /// Razão Social ou nome do destinatário.
    /// </summary>
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    /// <summary>
    /// Dados do endereço.
    /// </summary>
    property enderDest: TNfeSefazEndereco read FenderDest write SetenderDest;
    /// <summary>
    /// Indicador da IE do destinatário:
    /// 1 – Contribuinte ICMSpagamento à vista;
    /// 2 – Contribuinte isento de inscrição;
    /// 9 – Não Contribuinte.
    /// </summary>
    property indIEDest: Integer read FindIEDest write FindIEDest;
    /// <summary>
    /// Inscrição Estadual (obrigatório nas operações com contribuintes do ICMS).
    /// </summary>
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    /// <summary>
    /// Inscrição na SUFRAMA (Obrigatório nas operações com as áreas com benefícios de incentivos fiscais sob controle da SUFRAMA) PL_005d - 11/08/09 - alterado para aceitar 8 ou 9 dígitos.
    /// </summary>
    property ISUF: string read FISUF write SetISUF;
    property ISUFHasValue: Boolean read FISUFHasValue write FISUFHasValue;
    /// <summary>
    /// Inscrição Municipal do tomador do serviço.
    /// </summary>
    property IM: string read FIM write SetIM;
    property IMHasValue: Boolean read FIMHasValue write FIMHasValue;
    /// <summary>
    /// Informar o e-mail do destinatário. O campo pode ser utilizado para informar o e-mail
    /// de recepção da NF-e indicada pelo destinatário.
    /// </summary>
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
    Fnro: string;
    FxCpl: string;
    FxCplHasValue: Boolean;
    FxBairro: string;
    FcMun: string;
    FxMun: string;
    FUF: string;
    FCEP: string;
    FCEPHasValue: Boolean;
    FcPais: string;
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
    procedure SetxCpl(const Value: string);
    procedure SetCEP(const Value: string);
    procedure SetcPais(const Value: string);
    procedure SetxPais(const Value: string);
    procedure Setfone(const Value: string);
    procedure Setemail(const Value: string);
    procedure SetIE(const Value: string);
  public
    /// <summary>
    /// CNPJ.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// CPF (v2.0).
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Razão Social ou Nome do Expedidor/Recebedor.
    /// </summary>
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    /// <summary>
    /// Logradouro.
    /// </summary>
    property xLgr: string read FxLgr write FxLgr;
    /// <summary>
    /// Número.
    /// </summary>
    property nro: string read Fnro write Fnro;
    /// <summary>
    /// Complemento.
    /// </summary>
    property xCpl: string read FxCpl write SetxCpl;
    property xCplHasValue: Boolean read FxCplHasValue write FxCplHasValue;
    /// <summary>
    /// Bairro.
    /// </summary>
    property xBairro: string read FxBairro write FxBairro;
    /// <summary>
    /// Código do município (utilizar a tabela do IBGE).
    /// </summary>
    property cMun: string read FcMun write FcMun;
    /// <summary>
    /// Nome do município.
    /// </summary>
    property xMun: string read FxMun write FxMun;
    /// <summary>
    /// Sigla da UF.
    /// </summary>
    property UF: string read FUF write FUF;
    /// <summary>
    /// CEP.
    /// </summary>
    property CEP: string read FCEP write SetCEP;
    property CEPHasValue: Boolean read FCEPHasValue write FCEPHasValue;
    /// <summary>
    /// Código de Pais.
    /// </summary>
    property cPais: string read FcPais write SetcPais;
    property cPaisHasValue: Boolean read FcPaisHasValue write FcPaisHasValue;
    /// <summary>
    /// Nome do país.
    /// </summary>
    property xPais: string read FxPais write SetxPais;
    property xPaisHasValue: Boolean read FxPaisHasValue write FxPaisHasValue;
    /// <summary>
    /// Telefone, preencher com Código DDD + número do telefone , nas operações com exterior é permtido informar o código do país + código da localidade + número do telefone.
    /// </summary>
    property fone: string read Ffone write Setfone;
    property foneHasValue: Boolean read FfoneHasValue write FfoneHasValue;
    /// <summary>
    /// Informar o e-mail do expedidor/Recebedor. O campo pode ser utilizado para informar o e-mail de recepção da NF-e indicada pelo expedidor.
    /// </summary>
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
    /// <summary>
    /// Inscrição Estadual (v2.0).
    /// </summary>
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
    /// <summary>
    /// CNPJ Autorizado.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// CPF Autorizado.
    /// </summary>
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
    FcFabricante: string;
    FvDescDI: Double;
    FvDescDIHasValue: Boolean;
    FnDraw: string;
    FnDrawHasValue: Boolean;
    procedure SetnAdicao(const Value: Integer);
    procedure SetvDescDI(const Value: Double);
    procedure SetnDraw(const Value: string);
  public
    /// <summary>
    /// Número da Adição.
    /// </summary>
    property nAdicao: Integer read FnAdicao write SetnAdicao;
    property nAdicaoHasValue: Boolean read FnAdicaoHasValue write FnAdicaoHasValue;
    /// <summary>
    /// Número seqüencial do item dentro da Adição.
    /// </summary>
    property nSeqAdic: Integer read FnSeqAdic write FnSeqAdic;
    /// <summary>
    /// Código do fabricante estrangeiro (usado nos sistemas internos de informação do emitente da NF-e).
    /// </summary>
    property cFabricante: string read FcFabricante write FcFabricante;
    /// <summary>
    /// Valor do desconto do item da DI – adição.
    /// </summary>
    property vDescDI: Double read FvDescDI write SetvDescDI;
    property vDescDIHasValue: Boolean read FvDescDIHasValue write FvDescDIHasValue;
    /// <summary>
    /// Número do ato concessório de Drawback.
    /// </summary>
    property nDraw: string read FnDraw write SetnDraw;
    property nDrawHasValue: Boolean read FnDrawHasValue write FnDrawHasValue;
  end;
  
  TNfeSefazAdiList = class(TObjectList<TNfeSefazAdi>)
  end;
  
  TNfeSefazDI = class
  private
    FnDI: string;
    FdDI: TDate;
    FxLocDesemb: string;
    FUFDesemb: string;
    FdDesemb: TDate;
    FtpViaTransp: Integer;
    FvAFRMM: Double;
    FvAFRMMHasValue: Boolean;
    FtpIntermedio: Integer;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FUFTerceiro: string;
    FUFTerceiroHasValue: Boolean;
    FcExportador: string;
    Fadi: TNfeSefazAdiList;
    procedure SetvAFRMM(const Value: Double);
    procedure SetCNPJ(const Value: string);
    procedure SetUFTerceiro(const Value: string);
    procedure Setadi(const Value: TNfeSefazAdiList);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Numero do Documento de Importação DI/DSI/DA/DRI-E (DI/DSI/DA/DRI-E) (NT2011/004).
    /// </summary>
    property nDI: string read FnDI write FnDI;
    /// <summary>
    /// Data de registro da DI/DSI/DA (AAAA-MM-DD).
    /// </summary>
    property dDI: TDate read FdDI write FdDI;
    /// <summary>
    /// Local do desembaraço aduaneiro.
    /// </summary>
    property xLocDesemb: string read FxLocDesemb write FxLocDesemb;
    /// <summary>
    /// UF onde ocorreu o desembaraço aduaneiro.
    /// </summary>
    property UFDesemb: string read FUFDesemb write FUFDesemb;
    /// <summary>
    /// Data do desembaraço aduaneiro (AAAA-MM-DD).
    /// </summary>
    property dDesemb: TDate read FdDesemb write FdDesemb;
    /// <summary>
    /// Via de transporte internacional informada na DI
    /// 																	1-Maritima;2-Fluvial;3-Lacustre;4-Aerea;5-Postal;6-Ferroviaria;7-Rodoviaria;8-Conduto;9-Meios Proprios;10-Entrada/Saida Ficta;
    /// 																	11-Courier;12-Em maos;13-Por reboque.
    /// </summary>
    property tpViaTransp: Integer read FtpViaTransp write FtpViaTransp;
    /// <summary>
    /// Valor Adicional ao frete para renovação de marinha mercante.
    /// </summary>
    property vAFRMM: Double read FvAFRMM write SetvAFRMM;
    property vAFRMMHasValue: Boolean read FvAFRMMHasValue write FvAFRMMHasValue;
    /// <summary>
    /// Forma de Importação quanto a intermediação 
    /// 																	1-por conta propria;2-por conta e ordem;3-encomenda.
    /// </summary>
    property tpIntermedio: Integer read FtpIntermedio write FtpIntermedio;
    /// <summary>
    /// CNPJ do adquirente ou do encomendante.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Sigla da UF do adquirente ou do encomendante.
    /// </summary>
    property UFTerceiro: string read FUFTerceiro write SetUFTerceiro;
    property UFTerceiroHasValue: Boolean read FUFTerceiroHasValue write FUFTerceiroHasValue;
    /// <summary>
    /// Código do exportador (usado nos sistemas internos de informação do emitente da NF-e).
    /// </summary>
    property cExportador: string read FcExportador write FcExportador;
    /// <summary>
    /// Adições (NT 2011/004).
    /// </summary>
    property adi: TNfeSefazAdiList read Fadi write Setadi;
  end;
  
  TNfeSefazDIList = class(TObjectList<TNfeSefazDI>)
  end;
  
  TNfeSefazExportInd = class
  private
    FnRE: string;
    FchNFe: string;
    FqExport: Double;
  public
    /// <summary>
    /// Registro de exportação.
    /// </summary>
    property nRE: string read FnRE write FnRE;
    /// <summary>
    /// Chave de acesso da NF-e recebida para exportação.
    /// </summary>
    property chNFe: string read FchNFe write FchNFe;
    /// <summary>
    /// Quantidade do item efetivamente exportado.
    /// </summary>
    property qExport: Double read FqExport write FqExport;
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
    /// <summary>
    /// Número do ato concessório de Drawback.
    /// </summary>
    property nDraw: string read FnDraw write SetnDraw;
    property nDrawHasValue: Boolean read FnDrawHasValue write FnDrawHasValue;
    /// <summary>
    /// Exportação indireta.
    /// </summary>
    property exportInd: TNfeSefazExportInd read FexportInd write SetexportInd;
  end;
  
  TNfeSefazDetExportList = class(TObjectList<TNfeSefazDetExport>)
  end;
  
  TNfeSefazRastro = class
  private
    FnLote: string;
    FqLote: Double;
    FdFab: TDate;
    FdVal: TDate;
    FcAgreg: string;
    FcAgregHasValue: Boolean;
    procedure SetcAgreg(const Value: string);
  public
    /// <summary>
    /// Número do lote do produto.
    /// </summary>
    property nLote: string read FnLote write FnLote;
    /// <summary>
    /// Quantidade de produto no lote.
    /// </summary>
    property qLote: Double read FqLote write FqLote;
    /// <summary>
    /// Data de fabricação/produção. Formato "AAAA-MM-DD".
    /// </summary>
    property dFab: TDate read FdFab write FdFab;
    /// <summary>
    /// Data de validade. Informar o último dia do mês caso a validade não especifique o dia. Formato "AAAA-MM-DD".
    /// </summary>
    property dVal: TDate read FdVal write FdVal;
    property cAgreg: string read FcAgreg write SetcAgreg;
    property cAgregHasValue: Boolean read FcAgregHasValue write FcAgregHasValue;
  end;
  
  TNfeSefazRastroList = class(TObjectList<TNfeSefazRastro>)
  end;
  
  TNfeSefazInfProdNFF = class
  private
    FcProdFisco: string;
    FcOperNFF: string;
  public
    /// <summary>
    /// Código Fiscal do Produto.
    /// </summary>
    property cProdFisco: string read FcProdFisco write FcProdFisco;
    /// <summary>
    /// Código da operação selecionada na NFF e relacionada ao item.
    /// </summary>
    property cOperNFF: string read FcOperNFF write FcOperNFF;
  end;
  
  TNfeSefazInfProdEmb = class
  private
    FxEmb: string;
    FqVolEmb: Double;
    FuEmb: string;
  public
    /// <summary>
    /// Embalagem do produto.
    /// </summary>
    property xEmb: string read FxEmb write FxEmb;
    /// <summary>
    /// Volume do produto na embalagem.
    /// </summary>
    property qVolEmb: Double read FqVolEmb write FqVolEmb;
    /// <summary>
    /// Unidade de Medida da Embalagem.
    /// </summary>
    property uEmb: string read FuEmb write FuEmb;
  end;
  
  TNfeSefazVeicProd = class
  private
    FtpOp: Integer;
    Fchassi: string;
    FcCor: string;
    FxCor: string;
    Fpot: string;
    Fcilin: string;
    FpesoL: string;
    FpesoB: string;
    FnSerie: string;
    FtpComb: string;
    FnMotor: string;
    FCMT: string;
    Fdist: string;
    FanoMod: Integer;
    FanoFab: Integer;
    FtpPint: string;
    FtpVeic: Integer;
    FespVeic: Integer;
    FVIN: string;
    FcondVeic: Integer;
    FcMod: string;
    FcCorDENATRAN: string;
    Flota: Integer;
    FtpRest: Integer;
  public
    /// <summary>
    /// Tipo da Operação (1 - Venda concessionária; 2 - Faturamento direto; 3 - Venda direta; 0 - Outros).
    /// </summary>
    property tpOp: Integer read FtpOp write FtpOp;
    /// <summary>
    /// Chassi do veículo - VIN (código-identificação-veículo).
    /// </summary>
    property chassi: string read Fchassi write Fchassi;
    /// <summary>
    /// Cor do veículo (código de cada montadora).
    /// </summary>
    property cCor: string read FcCor write FcCor;
    /// <summary>
    /// Descrição da cor.
    /// </summary>
    property xCor: string read FxCor write FxCor;
    /// <summary>
    /// Potência máxima do motor do veículo em cavalo vapor (CV). (potência-veículo).
    /// </summary>
    property pot: string read Fpot write Fpot;
    /// <summary>
    /// Capacidade voluntária do motor expressa em centímetros cúbicos (CC). (cilindradas).
    /// </summary>
    property cilin: string read Fcilin write Fcilin;
    /// <summary>
    /// Peso líquido.
    /// </summary>
    property pesoL: string read FpesoL write FpesoL;
    /// <summary>
    /// Peso bruto.
    /// </summary>
    property pesoB: string read FpesoB write FpesoB;
    /// <summary>
    /// Serial (série).
    /// </summary>
    property nSerie: string read FnSerie write FnSerie;
    /// <summary>
    /// Tipo de combustível-Tabela RENAVAM: 01-Álcool; 02-Gasolina; 03-Diesel; 16-Álcool/Gas.; 17-Gas./Álcool/GNV; 18-Gasolina/Elétrico.
    /// </summary>
    property tpComb: string read FtpComb write FtpComb;
    /// <summary>
    /// Número do motor.
    /// </summary>
    property nMotor: string read FnMotor write FnMotor;
    /// <summary>
    /// CMT-Capacidade Máxima de Tração - em Toneladas 4 casas decimais.
    /// </summary>
    property CMT: string read FCMT write FCMT;
    /// <summary>
    /// Distância entre eixos.
    /// </summary>
    property dist: string read Fdist write Fdist;
    /// <summary>
    /// Ano Modelo de Fabricação.
    /// </summary>
    property anoMod: Integer read FanoMod write FanoMod;
    /// <summary>
    /// Ano de Fabricação.
    /// </summary>
    property anoFab: Integer read FanoFab write FanoFab;
    /// <summary>
    /// Tipo de pintura.
    /// </summary>
    property tpPint: string read FtpPint write FtpPint;
    /// <summary>
    /// Tipo de veículo (utilizar tabela RENAVAM).
    /// </summary>
    property tpVeic: Integer read FtpVeic write FtpVeic;
    /// <summary>
    /// Espécie de veículo (utilizar tabela RENAVAM).
    /// </summary>
    property espVeic: Integer read FespVeic write FespVeic;
    /// <summary>
    /// Informa-se o veículo tem VIN (chassi) remarcado.
    /// R-Remarcado
    /// N-NormalVIN.
    /// </summary>
    property VIN: string read FVIN write FVIN;
    /// <summary>
    /// Condição do veículo (1 - acabado; 2 - inacabado; 3 - semi-acabado).
    /// </summary>
    property condVeic: Integer read FcondVeic write FcondVeic;
    /// <summary>
    /// Código Marca Modelo (utilizar tabela RENAVAM).
    /// </summary>
    property cMod: string read FcMod write FcMod;
    /// <summary>
    /// Código da Cor Segundo as regras de pré-cadastro do DENATRAN: 01-AMARELO;02-AZUL;03-BEGE;04-BRANCA;05-CINZA;06-DOURADA;07-GRENA 
    /// 08-LARANJA;09-MARROM;10-PRATA;11-PRETA;12-ROSA;13-ROXA;14-VERDE;15-VERMELHA;16-FANTASIA.
    /// </summary>
    property cCorDENATRAN: string read FcCorDENATRAN write FcCorDENATRAN;
    /// <summary>
    /// Quantidade máxima de permitida de passageiros sentados, inclusive motorista.
    /// </summary>
    property lota: Integer read Flota write Flota;
    /// <summary>
    /// Restrição
    /// 0 - Não há;
    /// 1 - Alienação Fiduciária;
    /// 2 - Arrendamento Mercantil;
    /// 3 - Reserva de Domínio;
    /// 4 - Penhor de Veículos;
    /// 9 - outras.
    /// </summary>
    property tpRest: Integer read FtpRest write FtpRest;
  end;
  
  TNfeSefazMed = class
  private
    FcProdANVISA: string;
    FxMotivoIsencao: string;
    FxMotivoIsencaoHasValue: Boolean;
    FvPMC: Double;
    procedure SetxMotivoIsencao(const Value: string);
  public
    /// <summary>
    /// Utilizar o número do registro ANVISA  ou preencher com o literal “ISENTO”, no caso de medicamento isento de registro na ANVISA.
    /// </summary>
    property cProdANVISA: string read FcProdANVISA write FcProdANVISA;
    /// <summary>
    /// Obs.: Para medicamento isento de registro na ANVISA, informar o número da decisão que o isenta, como por exemplo o número da Resolução da Diretoria Colegiada da ANVISA (RDC).
    /// </summary>
    property xMotivoIsencao: string read FxMotivoIsencao write SetxMotivoIsencao;
    property xMotivoIsencaoHasValue: Boolean read FxMotivoIsencaoHasValue write FxMotivoIsencaoHasValue;
    /// <summary>
    /// Preço Máximo ao Consumidor.
    /// </summary>
    property vPMC: Double read FvPMC write FvPMC;
  end;
  
  TNfeSefazArma = class
  private
    FtpArma: Integer;
    FnSerie: string;
    FnCano: string;
    Fdescr: string;
  public
    /// <summary>
    /// Indicador do tipo de arma de fogo (0 - Uso permitido; 1 - Uso restrito).
    /// </summary>
    property tpArma: Integer read FtpArma write FtpArma;
    /// <summary>
    /// Número de série da arma.
    /// </summary>
    property nSerie: string read FnSerie write FnSerie;
    /// <summary>
    /// Número de série do cano.
    /// </summary>
    property nCano: string read FnCano write FnCano;
    /// <summary>
    /// Descrição completa da arma, compreendendo: calibre, marca, capacidade, tipo de funcionamento, comprimento e demais elementos que permitam a sua perfeita identificação.
    /// </summary>
    property descr: string read Fdescr write Fdescr;
  end;
  
  TNfeSefazArmaList = class(TObjectList<TNfeSefazArma>)
  end;
  
  TNfeSefazCIDE = class
  private
    FqBCProd: Double;
    FvAliqProd: Double;
    FvCIDE: Double;
  public
    /// <summary>
    /// BC do CIDE ( Quantidade comercializada).
    /// </summary>
    property qBCProd: Double read FqBCProd write FqBCProd;
    /// <summary>
    /// Alíquota do CIDE  (em reais).
    /// </summary>
    property vAliqProd: Double read FvAliqProd write FvAliqProd;
    /// <summary>
    /// Valor do CIDE.
    /// </summary>
    property vCIDE: Double read FvCIDE write FvCIDE;
  end;
  
  TNfeSefazEncerrante = class
  private
    FnBico: Integer;
    FnBomba: Integer;
    FnBombaHasValue: Boolean;
    FnTanque: Integer;
    FvEncIni: Double;
    FvEncFin: Double;
    procedure SetnBomba(const Value: Integer);
  public
    /// <summary>
    /// Numero de identificação do Bico utilizado no abastecimento.
    /// </summary>
    property nBico: Integer read FnBico write FnBico;
    /// <summary>
    /// Numero de identificação da bomba ao qual o bico está interligado.
    /// </summary>
    property nBomba: Integer read FnBomba write SetnBomba;
    property nBombaHasValue: Boolean read FnBombaHasValue write FnBombaHasValue;
    /// <summary>
    /// Numero de identificação do tanque ao qual o bico está interligado.
    /// </summary>
    property nTanque: Integer read FnTanque write FnTanque;
    /// <summary>
    /// Valor do Encerrante no ínicio do abastecimento.
    /// </summary>
    property vEncIni: Double read FvEncIni write FvEncIni;
    /// <summary>
    /// Valor do Encerrante no final do abastecimento.
    /// </summary>
    property vEncFin: Double read FvEncFin write FvEncFin;
  end;
  
  TNfeSefazComb = class
  private
    FcProdANP: Integer;
    FdescANP: string;
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
    FCIDE: TNfeSefazCIDE;
    Fencerrante: TNfeSefazEncerrante;
    procedure SetpGLP(const Value: Double);
    procedure SetpGNn(const Value: Double);
    procedure SetpGNi(const Value: Double);
    procedure SetvPart(const Value: Double);
    procedure SetCODIF(const Value: string);
    procedure SetqTemp(const Value: Double);
    procedure SetCIDE(const Value: TNfeSefazCIDE);
    procedure Setencerrante(const Value: TNfeSefazEncerrante);
  public
    destructor Destroy; override;
    /// <summary>
    /// Código de produto da ANP. codificação de produtos do SIMP (http://www.anp.gov.br).
    /// </summary>
    property cProdANP: Integer read FcProdANP write FcProdANP;
    /// <summary>
    /// Descrição do Produto conforme ANP. Utilizar a descrição de produtos do Sistema de Informações de Movimentação de Produtos - SIMP (http://www.anp.gov.br/simp/).
    /// </summary>
    property descANP: string read FdescANP write FdescANP;
    /// <summary>
    /// Percentual do GLP derivado do petróleo no produto GLP (cProdANP=210203001). Informar em número decimal o percentual do GLP derivado de petróleo no produto GLP. Valores 0 a 100.
    /// </summary>
    property pGLP: Double read FpGLP write SetpGLP;
    property pGLPHasValue: Boolean read FpGLPHasValue write FpGLPHasValue;
    /// <summary>
    /// Percentual de gás natural nacional - GLGNn para o produto GLP (cProdANP=210203001). Informar em número decimal o percentual do Gás Natural Nacional - GLGNn para o produto GLP. Valores de 0 a 100.
    /// </summary>
    property pGNn: Double read FpGNn write SetpGNn;
    property pGNnHasValue: Boolean read FpGNnHasValue write FpGNnHasValue;
    /// <summary>
    /// Percentual de gás natural importado GLGNi para o produto GLP (cProdANP=210203001). Informar em número deciaml o percentual do Gás Natural Importado - GLGNi para o produto GLP. Valores de 0 a 100.
    /// </summary>
    property pGNi: Double read FpGNi write SetpGNi;
    property pGNiHasValue: Boolean read FpGNiHasValue write FpGNiHasValue;
    /// <summary>
    /// Valor de partida (cProdANP=210203001). Deve ser informado neste campo o valor por quilograma sem ICMS.
    /// </summary>
    property vPart: Double read FvPart write SetvPart;
    property vPartHasValue: Boolean read FvPartHasValue write FvPartHasValue;
    /// <summary>
    /// Código de autorização / registro do CODIF. Informar apenas quando a UF utilizar o CODIF (Sistema de Controle do 			Diferimento do Imposto nas Operações com AEAC - Álcool Etílico Anidro Combustível).
    /// </summary>
    property CODIF: string read FCODIF write SetCODIF;
    property CODIFHasValue: Boolean read FCODIFHasValue write FCODIFHasValue;
    /// <summary>
    /// Quantidade de combustível
    /// faturada à temperatura ambiente.
    /// Informar quando a quantidade
    /// faturada informada no campo
    /// qCom (I10) tiver sido ajustada para
    /// uma temperatura diferente da
    /// ambiente.
    /// </summary>
    property qTemp: Double read FqTemp write SetqTemp;
    property qTempHasValue: Boolean read FqTempHasValue write FqTempHasValue;
    /// <summary>
    /// Sigla da UF de Consumo.
    /// </summary>
    property UFCons: string read FUFCons write FUFCons;
    /// <summary>
    /// CIDE Combustíveis.
    /// </summary>
    property CIDE: TNfeSefazCIDE read FCIDE write SetCIDE;
    /// <summary>
    /// Informações do grupo de "encerrante".
    /// </summary>
    property encerrante: TNfeSefazEncerrante read Fencerrante write Setencerrante;
  end;
  
  TNfeSefazProd = class
  private
    FcProd: string;
    FcEAN: string;
    FcBarra: string;
    FcBarraHasValue: Boolean;
    FxProd: string;
    FNCM: string;
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
    FCFOP: string;
    FuCom: string;
    FqCom: Double;
    FvUnCom: Double;
    FvProd: Double;
    FcEANTrib: string;
    FcBarraTrib: string;
    FcBarraTribHasValue: Boolean;
    FuTrib: string;
    FqTrib: Double;
    FvUnTrib: Double;
    FvFrete: Double;
    FvFreteHasValue: Boolean;
    FvSeg: Double;
    FvSegHasValue: Boolean;
    FvDesc: Double;
    FvDescHasValue: Boolean;
    FvOutro: Double;
    FvOutroHasValue: Boolean;
    FindTot: Integer;
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
    procedure SetcBarra(const Value: string);
    procedure SetNVE(const Value: stringList);
    procedure SetCEST(const Value: string);
    procedure SetindEscala(const Value: string);
    procedure SetCNPJFab(const Value: string);
    procedure SetcBenef(const Value: string);
    procedure SetEXTIPI(const Value: string);
    procedure SetcBarraTrib(const Value: string);
    procedure SetvFrete(const Value: Double);
    procedure SetvSeg(const Value: Double);
    procedure SetvDesc(const Value: Double);
    procedure SetvOutro(const Value: Double);
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
    /// <summary>
    /// Código do produto ou serviço. Preencher com CFOP caso se trate de itens não relacionados com mercadorias/produto e que o contribuinte não possua codificação própria
    /// Formato ”CFOP9999”.
    /// </summary>
    property cProd: string read FcProd write FcProd;
    /// <summary>
    /// GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barras.
    /// </summary>
    property cEAN: string read FcEAN write FcEAN;
    /// <summary>
    /// Codigo de barras diferente do padrão GTIN.
    /// </summary>
    property cBarra: string read FcBarra write SetcBarra;
    property cBarraHasValue: Boolean read FcBarraHasValue write FcBarraHasValue;
    /// <summary>
    /// Descrição do produto ou serviço.
    /// </summary>
    property xProd: string read FxProd write FxProd;
    /// <summary>
    /// Código NCM (8 posições), será permitida a informação do gênero (posição do capítulo do NCM) quando a operação não for de comércio exterior (importação/exportação) ou o produto não seja tributado pelo IPI. Em caso de item de serviço ou item que não tenham produto (Ex. transferência de crédito, crédito do ativo imobilizado, etc.), informar o código 00 (zeros) (v2.0).
    /// </summary>
    property NCM: string read FNCM write FNCM;
    /// <summary>
    /// Nomenclatura de Valor aduaneio e Estatístico.
    /// </summary>
    property NVE: stringList read FNVE write SetNVE;
    /// <summary>
    /// Codigo especificador da Substuicao Tributaria - CEST, que identifica a mercadoria sujeita aos regimes de  substituicao tributária e de antecipação do recolhimento  do imposto.
    /// </summary>
    property CEST: string read FCEST write SetCEST;
    property CESTHasValue: Boolean read FCESTHasValue write FCESTHasValue;
    property indEscala: string read FindEscala write SetindEscala;
    property indEscalaHasValue: Boolean read FindEscalaHasValue write FindEscalaHasValue;
    /// <summary>
    /// CNPJ do Fabricante da Mercadoria, obrigatório para produto em escala NÃO relevante.
    /// </summary>
    property CNPJFab: string read FCNPJFab write SetCNPJFab;
    property CNPJFabHasValue: Boolean read FCNPJFabHasValue write FCNPJFabHasValue;
    property cBenef: string read FcBenef write SetcBenef;
    property cBenefHasValue: Boolean read FcBenefHasValue write FcBenefHasValue;
    /// <summary>
    /// Código EX TIPI (3 posições).
    /// </summary>
    property EXTIPI: string read FEXTIPI write SetEXTIPI;
    property EXTIPIHasValue: Boolean read FEXTIPIHasValue write FEXTIPIHasValue;
    /// <summary>
    /// Cfop.
    /// </summary>
    property CFOP: string read FCFOP write FCFOP;
    /// <summary>
    /// Unidade comercial.
    /// </summary>
    property uCom: string read FuCom write FuCom;
    /// <summary>
    /// Quantidade Comercial  do produto, alterado para aceitar de 0 a 4 casas decimais e 11 inteiros.
    /// </summary>
    property qCom: Double read FqCom write FqCom;
    /// <summary>
    /// Valor unitário de comercialização  - alterado para aceitar 0 a 10 casas decimais e 11 inteiros.
    /// </summary>
    property vUnCom: Double read FvUnCom write FvUnCom;
    /// <summary>
    /// Valor bruto do produto ou serviço.
    /// </summary>
    property vProd: Double read FvProd write FvProd;
    /// <summary>
    /// GTIN (Global Trade Item Number) da unidade tributável, antigo código EAN ou código de barras.
    /// </summary>
    property cEANTrib: string read FcEANTrib write FcEANTrib;
    /// <summary>
    /// Código de barras da unidade tributável diferente do padrão GTIN.
    /// </summary>
    property cBarraTrib: string read FcBarraTrib write SetcBarraTrib;
    property cBarraTribHasValue: Boolean read FcBarraTribHasValue write FcBarraTribHasValue;
    /// <summary>
    /// Unidade Tributável.
    /// </summary>
    property uTrib: string read FuTrib write FuTrib;
    /// <summary>
    /// Quantidade Tributável - alterado para aceitar de 0 a 4 casas decimais e 11 inteiros.
    /// </summary>
    property qTrib: Double read FqTrib write FqTrib;
    /// <summary>
    /// Valor unitário de tributação - - alterado para aceitar 0 a 10 casas decimais e 11 inteiros.
    /// </summary>
    property vUnTrib: Double read FvUnTrib write FvUnTrib;
    /// <summary>
    /// Valor Total do Frete.
    /// </summary>
    property vFrete: Double read FvFrete write SetvFrete;
    property vFreteHasValue: Boolean read FvFreteHasValue write FvFreteHasValue;
    /// <summary>
    /// Valor Total do Seguro.
    /// </summary>
    property vSeg: Double read FvSeg write SetvSeg;
    property vSegHasValue: Boolean read FvSegHasValue write FvSegHasValue;
    /// <summary>
    /// Valor do Desconto.
    /// </summary>
    property vDesc: Double read FvDesc write SetvDesc;
    property vDescHasValue: Boolean read FvDescHasValue write FvDescHasValue;
    /// <summary>
    /// Outras despesas acessórias.
    /// </summary>
    property vOutro: Double read FvOutro write SetvOutro;
    property vOutroHasValue: Boolean read FvOutroHasValue write FvOutroHasValue;
    /// <summary>
    /// Este campo deverá ser preenchido com:
    ///  0 – o valor do item (vProd) não compõe o valor total da NF-e (vProd)
    ///  1  – o valor do item (vProd) compõe o valor total da NF-e (vProd).
    /// </summary>
    property indTot: Integer read FindTot write FindTot;
    /// <summary>
    /// Delcaração de Importação
    /// (NT 2011/004).
    /// </summary>
    property DI: TNfeSefazDIList read FDI write SetDI;
    /// <summary>
    /// Detalhe da exportação.
    /// </summary>
    property detExport: TNfeSefazDetExportList read FdetExport write SetdetExport;
    /// <summary>
    /// pedido de compra - Informação de interesse do emissor para controle do B2B.
    /// </summary>
    property xPed: string read FxPed write SetxPed;
    property xPedHasValue: Boolean read FxPedHasValue write FxPedHasValue;
    /// <summary>
    /// Número do Item do Pedido de Compra - Identificação do número do item do pedido de Compra.
    /// </summary>
    property nItemPed: Integer read FnItemPed write SetnItemPed;
    property nItemPedHasValue: Boolean read FnItemPedHasValue write FnItemPedHasValue;
    /// <summary>
    /// Número de controle da FCI - Ficha de Conteúdo de Importação.
    /// </summary>
    property nFCI: string read FnFCI write SetnFCI;
    property nFCIHasValue: Boolean read FnFCIHasValue write FnFCIHasValue;
    property rastro: TNfeSefazRastroList read Frastro write Setrastro;
    /// <summary>
    /// Informações mais detalhadas do produto (usada na NFF).
    /// </summary>
    property infProdNFF: TNfeSefazInfProdNFF read FinfProdNFF write SetinfProdNFF;
    /// <summary>
    /// Informações mais detalhadas do produto (usada na NFF).
    /// </summary>
    property infProdEmb: TNfeSefazInfProdEmb read FinfProdEmb write SetinfProdEmb;
    /// <summary>
    /// Veículos novos.
    /// </summary>
    property veicProd: TNfeSefazVeicProd read FveicProd write SetveicProd;
    /// <summary>
    /// grupo do detalhamento de Medicamentos e de matérias-primas farmacêuticas.
    /// </summary>
    property med: TNfeSefazMed read Fmed write Setmed;
    /// <summary>
    /// Armamentos.
    /// </summary>
    property arma: TNfeSefazArmaList read Farma write Setarma;
    /// <summary>
    /// Informar apenas para operações com combustíveis líquidos.
    /// </summary>
    property comb: TNfeSefazComb read Fcomb write Setcomb;
    /// <summary>
    /// Número do RECOPI.
    /// </summary>
    property nRECOPI: string read FnRECOPI write SetnRECOPI;
    property nRECOPIHasValue: Boolean read FnRECOPIHasValue write FnRECOPIHasValue;
  end;
  
  TNfeSefazICMS00 = class
  private
    Forig: Integer;
    FCST: string;
    FmodBC: Integer;
    FvBC: Double;
    FpICMS: Double;
    FvICMS: Double;
    FpFCP: Double;
    FpFCPHasValue: Boolean;
    FvFCP: Double;
    FvFCPHasValue: Boolean;
    procedure SetpFCP(const Value: Double);
    procedure SetvFCP(const Value: Double);
  public
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// Tributção pelo ICMS
    /// 00 - Tributada integralmente.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS:
    /// 0 - Margem Valor Agregado (%%);
    /// 1 - Pauta (valor);
    /// 2 - Preço Tabelado Máximo (valor);
    /// 3 - Valor da Operação.
    /// </summary>
    property modBC: Integer read FmodBC write FmodBC;
    /// <summary>
    /// Valor da BC do ICMS.
    /// </summary>
    property vBC: Double read FvBC write FvBC;
    /// <summary>
    /// Alíquota do ICMS.
    /// </summary>
    property pICMS: Double read FpICMS write FpICMS;
    /// <summary>
    /// Valor do ICMS.
    /// </summary>
    property vICMS: Double read FvICMS write FvICMS;
    /// <summary>
    /// Percentual de ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    /// </summary>
    property pFCP: Double read FpFCP write SetpFCP;
    property pFCPHasValue: Boolean read FpFCPHasValue write FpFCPHasValue;
    /// <summary>
    /// Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    /// </summary>
    property vFCP: Double read FvFCP write SetvFCP;
    property vFCPHasValue: Boolean read FvFCPHasValue write FvFCPHasValue;
  end;
  
  TNfeSefazICMS10 = class
  private
    Forig: Integer;
    FCST: string;
    FmodBC: Integer;
    FvBC: Double;
    FpICMS: Double;
    FvICMS: Double;
    FvBCFCP: Double;
    FvBCFCPHasValue: Boolean;
    FpFCP: Double;
    FpFCPHasValue: Boolean;
    FvFCP: Double;
    FvFCPHasValue: Boolean;
    FmodBCST: Integer;
    FpMVAST: Double;
    FpMVASTHasValue: Boolean;
    FpRedBCST: Double;
    FpRedBCSTHasValue: Boolean;
    FvBCST: Double;
    FpICMSST: Double;
    FvICMSST: Double;
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
    procedure SetvBCFCP(const Value: Double);
    procedure SetpFCP(const Value: Double);
    procedure SetvFCP(const Value: Double);
    procedure SetpMVAST(const Value: Double);
    procedure SetpRedBCST(const Value: Double);
    procedure SetvBCFCPST(const Value: Double);
    procedure SetpFCPST(const Value: Double);
    procedure SetvFCPST(const Value: Double);
    procedure SetvICMSSTDeson(const Value: Double);
    procedure SetmotDesICMSST(const Value: Integer);
  public
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// 10 - Tributada e com cobrança do ICMS por substituição tributária.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS:
    /// 0 - Margem Valor Agregado (%%);
    /// 1 - Pauta (valor);
    /// 2 - Preço Tabelado Máximo (valor);
    /// 3 - Valor da Operação.
    /// </summary>
    property modBC: Integer read FmodBC write FmodBC;
    /// <summary>
    /// Valor da BC do ICMS.
    /// </summary>
    property vBC: Double read FvBC write FvBC;
    /// <summary>
    /// Alíquota do ICMS.
    /// </summary>
    property pICMS: Double read FpICMS write FpICMS;
    /// <summary>
    /// Valor do ICMS.
    /// </summary>
    property vICMS: Double read FvICMS write FvICMS;
    /// <summary>
    /// Valor da Base de cálculo do FCP.
    /// </summary>
    property vBCFCP: Double read FvBCFCP write SetvBCFCP;
    property vBCFCPHasValue: Boolean read FvBCFCPHasValue write FvBCFCPHasValue;
    /// <summary>
    /// Percentual de ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    /// </summary>
    property pFCP: Double read FpFCP write SetpFCP;
    property pFCPHasValue: Boolean read FpFCPHasValue write FpFCPHasValue;
    /// <summary>
    /// Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    /// </summary>
    property vFCP: Double read FvFCP write SetvFCP;
    property vFCPHasValue: Boolean read FvFCPHasValue write FvFCPHasValue;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS ST:
    /// 0 – Preço tabelado ou máximo  sugerido;
    /// 1 - Lista Negativa (valor);
    /// 2 - Lista Positiva (valor);
    /// 3 - Lista Neutra (valor);
    /// 4 - Margem Valor Agregado (%%);
    /// 5 - Pauta (valor)
    /// 6-Valor da Operação;.
    /// </summary>
    property modBCST: Integer read FmodBCST write FmodBCST;
    /// <summary>
    /// Percentual da Margem de Valor Adicionado ICMS ST.
    /// </summary>
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    /// <summary>
    /// Percentual de redução da BC ICMS ST.
    /// </summary>
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    /// <summary>
    /// Valor da BC do ICMS ST.
    /// </summary>
    property vBCST: Double read FvBCST write FvBCST;
    /// <summary>
    /// Alíquota do ICMS ST.
    /// </summary>
    property pICMSST: Double read FpICMSST write FpICMSST;
    /// <summary>
    /// Valor do ICMS ST.
    /// </summary>
    property vICMSST: Double read FvICMSST write FvICMSST;
    /// <summary>
    /// Valor da Base de cálculo do FCP retido por substituicao tributaria.
    /// </summary>
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    /// <summary>
    /// Percentual de FCP retido por substituição tributária.
    /// </summary>
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    /// <summary>
    /// Valor do FCP retido por substituição tributária.
    /// </summary>
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
    /// <summary>
    /// Valor do ICMS-ST desonerado.
    /// </summary>
    property vICMSSTDeson: Double read FvICMSSTDeson write SetvICMSSTDeson;
    property vICMSSTDesonHasValue: Boolean read FvICMSSTDesonHasValue write FvICMSSTDesonHasValue;
    /// <summary>
    /// Motivo da desoneração do ICMS-ST: 3-Uso na agropecuária; 9-Outros; 12-Fomento agropecuário.
    /// </summary>
    property motDesICMSST: Integer read FmotDesICMSST write SetmotDesICMSST;
    property motDesICMSSTHasValue: Boolean read FmotDesICMSSTHasValue write FmotDesICMSSTHasValue;
  end;
  
  TNfeSefazICMS20 = class
  private
    Forig: Integer;
    FCST: string;
    FmodBC: Integer;
    FpRedBC: Double;
    FvBC: Double;
    FpICMS: Double;
    FvICMS: Double;
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
    procedure SetvBCFCP(const Value: Double);
    procedure SetpFCP(const Value: Double);
    procedure SetvFCP(const Value: Double);
    procedure SetvICMSDeson(const Value: Double);
    procedure SetmotDesICMS(const Value: Integer);
  public
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// Tributção pelo ICMS
    /// 20 - Com redução de base de cálculo.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS:
    /// 0 - Margem Valor Agregado (%%);
    /// 1 - Pauta (valor);
    /// 2 - Preço Tabelado Máximo (valor);
    /// 3 - Valor da Operação.
    /// </summary>
    property modBC: Integer read FmodBC write FmodBC;
    /// <summary>
    /// Percentual de redução da BC.
    /// </summary>
    property pRedBC: Double read FpRedBC write FpRedBC;
    /// <summary>
    /// Valor da BC do ICMS.
    /// </summary>
    property vBC: Double read FvBC write FvBC;
    /// <summary>
    /// Alíquota do ICMS.
    /// </summary>
    property pICMS: Double read FpICMS write FpICMS;
    /// <summary>
    /// Valor do ICMS.
    /// </summary>
    property vICMS: Double read FvICMS write FvICMS;
    /// <summary>
    /// Valor da Base de cálculo do FCP.
    /// </summary>
    property vBCFCP: Double read FvBCFCP write SetvBCFCP;
    property vBCFCPHasValue: Boolean read FvBCFCPHasValue write FvBCFCPHasValue;
    /// <summary>
    /// Percentual de ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    /// </summary>
    property pFCP: Double read FpFCP write SetpFCP;
    property pFCPHasValue: Boolean read FpFCPHasValue write FpFCPHasValue;
    /// <summary>
    /// Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    /// </summary>
    property vFCP: Double read FvFCP write SetvFCP;
    property vFCPHasValue: Boolean read FvFCPHasValue write FvFCPHasValue;
    /// <summary>
    /// Valor do ICMS de desoneração.
    /// </summary>
    property vICMSDeson: Double read FvICMSDeson write SetvICMSDeson;
    property vICMSDesonHasValue: Boolean read FvICMSDesonHasValue write FvICMSDesonHasValue;
    /// <summary>
    /// Motivo da desoneração do ICMS:3-Uso na agropecuária;9-Outros;12-Fomento agropecuário.
    /// </summary>
    property motDesICMS: Integer read FmotDesICMS write SetmotDesICMS;
    property motDesICMSHasValue: Boolean read FmotDesICMSHasValue write FmotDesICMSHasValue;
  end;
  
  TNfeSefazICMS30 = class
  private
    Forig: Integer;
    FCST: string;
    FmodBCST: Integer;
    FpMVAST: Double;
    FpMVASTHasValue: Boolean;
    FpRedBCST: Double;
    FpRedBCSTHasValue: Boolean;
    FvBCST: Double;
    FpICMSST: Double;
    FvICMSST: Double;
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
    procedure SetpMVAST(const Value: Double);
    procedure SetpRedBCST(const Value: Double);
    procedure SetvBCFCPST(const Value: Double);
    procedure SetpFCPST(const Value: Double);
    procedure SetvFCPST(const Value: Double);
    procedure SetvICMSDeson(const Value: Double);
    procedure SetmotDesICMS(const Value: Integer);
  public
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// Tributção pelo ICMS
    /// 30 - Isenta ou não tributada e com cobrança do ICMS por substituição tributária.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS ST:
    /// 0 – Preço tabelado ou máximo  sugerido;
    /// 1 - Lista Negativa (valor);
    /// 2 - Lista Positiva (valor);
    /// 3 - Lista Neutra (valor);
    /// 4 - Margem Valor Agregado (%%);
    /// 5 - Pauta (valor).
    /// 6 - Valor da Operação.
    /// </summary>
    property modBCST: Integer read FmodBCST write FmodBCST;
    /// <summary>
    /// Percentual da Margem de Valor Adicionado ICMS ST.
    /// </summary>
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    /// <summary>
    /// Percentual de redução da BC ICMS ST.
    /// </summary>
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    /// <summary>
    /// Valor da BC do ICMS ST.
    /// </summary>
    property vBCST: Double read FvBCST write FvBCST;
    /// <summary>
    /// Alíquota do ICMS ST.
    /// </summary>
    property pICMSST: Double read FpICMSST write FpICMSST;
    /// <summary>
    /// Valor do ICMS ST.
    /// </summary>
    property vICMSST: Double read FvICMSST write FvICMSST;
    /// <summary>
    /// Valor da Base de cálculo do FCP.
    /// </summary>
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    /// <summary>
    /// Percentual de FCP retido por substituição tributária.
    /// </summary>
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    /// <summary>
    /// Valor do FCP retido por substituição tributária.
    /// </summary>
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
    /// <summary>
    /// Valor do ICMS de desoneração.
    /// </summary>
    property vICMSDeson: Double read FvICMSDeson write SetvICMSDeson;
    property vICMSDesonHasValue: Boolean read FvICMSDesonHasValue write FvICMSDesonHasValue;
    /// <summary>
    /// Motivo da desoneração do ICMS:6-Utilitários Motocicleta AÁrea Livre;7-SUFRAMA;9-Outros.
    /// </summary>
    property motDesICMS: Integer read FmotDesICMS write SetmotDesICMS;
    property motDesICMSHasValue: Boolean read FmotDesICMSHasValue write FmotDesICMSHasValue;
  end;
  
  TNfeSefazICMS40 = class
  private
    Forig: Integer;
    FCST: string;
    FvICMSDeson: Double;
    FvICMSDesonHasValue: Boolean;
    FmotDesICMS: Integer;
    FmotDesICMSHasValue: Boolean;
    procedure SetvICMSDeson(const Value: Double);
    procedure SetmotDesICMS(const Value: Integer);
  public
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// Tributação pelo ICMS 
    /// 40 - Isenta 
    /// 41 - Não tributada 
    /// 50 - Suspensão 
    /// 51 - Diferimento.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// O valor do ICMS será informado apenas nas operações com veículos beneficiados com a desoneração condicional do ICMS.
    /// </summary>
    property vICMSDeson: Double read FvICMSDeson write SetvICMSDeson;
    property vICMSDesonHasValue: Boolean read FvICMSDesonHasValue write FvICMSDesonHasValue;
    /// <summary>
    /// Este campo será preenchido quando o campo anterior estiver preenchido.
    /// Informar o motivo da desoneração:
    /// 1 – Táxi;
    /// 3 – Produtor Agropecuário;
    /// 4 – Frotista/Locadora;
    /// 5 – Diplomático/Consular;
    /// 6 – Utilitários e Motocicletas da Amazônia Ocidental e Áreas de Livre Comércio (Resolução 714/88 e 790/94 – CONTRAN e suas alterações);
    /// 7 – SUFRAMA;
    /// 8 - Venda a órgão Público;
    /// 9 – Outros
    /// 10- Deficiente Condutor
    /// 11- Deficiente não condutor
    /// 16 - Olimpíadas Rio 2016
    /// 90 - Solicitado pelo Fisco.
    /// </summary>
    property motDesICMS: Integer read FmotDesICMS write SetmotDesICMS;
    property motDesICMSHasValue: Boolean read FmotDesICMSHasValue write FmotDesICMSHasValue;
  end;
  
  TNfeSefazICMS51 = class
  private
    Forig: Integer;
    FCST: string;
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
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// Tributção pelo ICMS
    /// 20 - Com redução de base de cálculo.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS:
    /// 0 - Margem Valor Agregado (%%);
    /// 1 - Pauta (valor);
    /// 2 - Preço Tabelado Máximo (valor);
    /// 3 - Valor da Operação.
    /// </summary>
    property modBC: Integer read FmodBC write SetmodBC;
    property modBCHasValue: Boolean read FmodBCHasValue write FmodBCHasValue;
    /// <summary>
    /// Percentual de redução da BC.
    /// </summary>
    property pRedBC: Double read FpRedBC write SetpRedBC;
    property pRedBCHasValue: Boolean read FpRedBCHasValue write FpRedBCHasValue;
    /// <summary>
    /// Valor da BC do ICMS.
    /// </summary>
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    /// <summary>
    /// Alíquota do imposto.
    /// </summary>
    property pICMS: Double read FpICMS write SetpICMS;
    property pICMSHasValue: Boolean read FpICMSHasValue write FpICMSHasValue;
    /// <summary>
    /// Valor do ICMS da Operação.
    /// </summary>
    property vICMSOp: Double read FvICMSOp write SetvICMSOp;
    property vICMSOpHasValue: Boolean read FvICMSOpHasValue write FvICMSOpHasValue;
    /// <summary>
    /// Percentual do diferemento.
    /// </summary>
    property pDif: Double read FpDif write SetpDif;
    property pDifHasValue: Boolean read FpDifHasValue write FpDifHasValue;
    /// <summary>
    /// Valor do ICMS da diferido.
    /// </summary>
    property vICMSDif: Double read FvICMSDif write SetvICMSDif;
    property vICMSDifHasValue: Boolean read FvICMSDifHasValue write FvICMSDifHasValue;
    /// <summary>
    /// Valor do ICMS.
    /// </summary>
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
    /// <summary>
    /// Valor da Base de cálculo do FCP.
    /// </summary>
    property vBCFCP: Double read FvBCFCP write SetvBCFCP;
    property vBCFCPHasValue: Boolean read FvBCFCPHasValue write FvBCFCPHasValue;
    /// <summary>
    /// Percentual de ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    /// </summary>
    property pFCP: Double read FpFCP write SetpFCP;
    property pFCPHasValue: Boolean read FpFCPHasValue write FpFCPHasValue;
    /// <summary>
    /// Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    /// </summary>
    property vFCP: Double read FvFCP write SetvFCP;
    property vFCPHasValue: Boolean read FvFCPHasValue write FvFCPHasValue;
    /// <summary>
    /// Percentual do diferimento do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    /// </summary>
    property pFCPDif: Double read FpFCPDif write SetpFCPDif;
    property pFCPDifHasValue: Boolean read FpFCPDifHasValue write FpFCPDifHasValue;
    /// <summary>
    /// Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) diferido.
    /// </summary>
    property vFCPDif: Double read FvFCPDif write SetvFCPDif;
    property vFCPDifHasValue: Boolean read FvFCPDifHasValue write FvFCPDifHasValue;
    /// <summary>
    /// Valor efetivo do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    /// </summary>
    property vFCPEfet: Double read FvFCPEfet write SetvFCPEfet;
    property vFCPEfetHasValue: Boolean read FvFCPEfetHasValue write FvFCPEfetHasValue;
  end;
  
  TNfeSefazICMS60 = class
  private
    Forig: Integer;
    FCST: string;
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
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// Tributação pelo ICMS 
    /// 60 - ICMS cobrado anteriormente por substituição tributária.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Valor da BC do ICMS ST retido anteriormente.
    /// </summary>
    property vBCSTRet: Double read FvBCSTRet write SetvBCSTRet;
    property vBCSTRetHasValue: Boolean read FvBCSTRetHasValue write FvBCSTRetHasValue;
    /// <summary>
    /// Aliquota suportada pelo consumidor final.
    /// </summary>
    property pST: Double read FpST write SetpST;
    property pSTHasValue: Boolean read FpSTHasValue write FpSTHasValue;
    /// <summary>
    /// Valor do ICMS Próprio do Substituto cobrado em operação anterior.
    /// </summary>
    property vICMSSubstituto: Double read FvICMSSubstituto write SetvICMSSubstituto;
    property vICMSSubstitutoHasValue: Boolean read FvICMSSubstitutoHasValue write FvICMSSubstitutoHasValue;
    /// <summary>
    /// Valor do ICMS ST retido anteriormente.
    /// </summary>
    property vICMSSTRet: Double read FvICMSSTRet write SetvICMSSTRet;
    property vICMSSTRetHasValue: Boolean read FvICMSSTRetHasValue write FvICMSSTRetHasValue;
    /// <summary>
    /// Valor da Base de cálculo do FCP retido anteriormente por ST.
    /// </summary>
    property vBCFCPSTRet: Double read FvBCFCPSTRet write SetvBCFCPSTRet;
    property vBCFCPSTRetHasValue: Boolean read FvBCFCPSTRetHasValue write FvBCFCPSTRetHasValue;
    /// <summary>
    /// Percentual de FCP retido anteriormente por substituição tributária.
    /// </summary>
    property pFCPSTRet: Double read FpFCPSTRet write SetpFCPSTRet;
    property pFCPSTRetHasValue: Boolean read FpFCPSTRetHasValue write FpFCPSTRetHasValue;
    /// <summary>
    /// Valor do FCP retido por substituição tributária.
    /// </summary>
    property vFCPSTRet: Double read FvFCPSTRet write SetvFCPSTRet;
    property vFCPSTRetHasValue: Boolean read FvFCPSTRetHasValue write FvFCPSTRetHasValue;
    /// <summary>
    /// Percentual de redução da base de cálculo efetiva.
    /// </summary>
    property pRedBCEfet: Double read FpRedBCEfet write SetpRedBCEfet;
    property pRedBCEfetHasValue: Boolean read FpRedBCEfetHasValue write FpRedBCEfetHasValue;
    /// <summary>
    /// Valor da base de cálculo efetiva.
    /// </summary>
    property vBCEfet: Double read FvBCEfet write SetvBCEfet;
    property vBCEfetHasValue: Boolean read FvBCEfetHasValue write FvBCEfetHasValue;
    /// <summary>
    /// Alíquota do ICMS efetiva.
    /// </summary>
    property pICMSEfet: Double read FpICMSEfet write SetpICMSEfet;
    property pICMSEfetHasValue: Boolean read FpICMSEfetHasValue write FpICMSEfetHasValue;
    /// <summary>
    /// Valor do ICMS efetivo.
    /// </summary>
    property vICMSEfet: Double read FvICMSEfet write SetvICMSEfet;
    property vICMSEfetHasValue: Boolean read FvICMSEfetHasValue write FvICMSEfetHasValue;
  end;
  
  TNfeSefazICMS70 = class
  private
    Forig: Integer;
    FCST: string;
    FmodBC: Integer;
    FpRedBC: Double;
    FvBC: Double;
    FpICMS: Double;
    FvICMS: Double;
    FvBCFCP: Double;
    FvBCFCPHasValue: Boolean;
    FpFCP: Double;
    FpFCPHasValue: Boolean;
    FvFCP: Double;
    FvFCPHasValue: Boolean;
    FmodBCST: Integer;
    FpMVAST: Double;
    FpMVASTHasValue: Boolean;
    FpRedBCST: Double;
    FpRedBCSTHasValue: Boolean;
    FvBCST: Double;
    FpICMSST: Double;
    FvICMSST: Double;
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
    procedure SetvBCFCP(const Value: Double);
    procedure SetpFCP(const Value: Double);
    procedure SetvFCP(const Value: Double);
    procedure SetpMVAST(const Value: Double);
    procedure SetpRedBCST(const Value: Double);
    procedure SetvBCFCPST(const Value: Double);
    procedure SetpFCPST(const Value: Double);
    procedure SetvFCPST(const Value: Double);
    procedure SetvICMSDeson(const Value: Double);
    procedure SetmotDesICMS(const Value: Integer);
    procedure SetvICMSSTDeson(const Value: Double);
    procedure SetmotDesICMSST(const Value: Integer);
  public
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// Tributção pelo ICMS
    /// 70 - Com redução de base de cálculo e cobrança do ICMS por substituição tributária.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS:
    /// 0 - Margem Valor Agregado (%%);
    /// 1 - Pauta (valor);
    /// 2 - Preço Tabelado Máximo (valor);
    /// 3 - Valor da Operação.
    /// </summary>
    property modBC: Integer read FmodBC write FmodBC;
    /// <summary>
    /// Percentual de redução da BC.
    /// </summary>
    property pRedBC: Double read FpRedBC write FpRedBC;
    /// <summary>
    /// Valor da BC do ICMS.
    /// </summary>
    property vBC: Double read FvBC write FvBC;
    /// <summary>
    /// Alíquota do ICMS.
    /// </summary>
    property pICMS: Double read FpICMS write FpICMS;
    /// <summary>
    /// Valor do ICMS.
    /// </summary>
    property vICMS: Double read FvICMS write FvICMS;
    /// <summary>
    /// Valor da Base de cálculo do FCP.
    /// </summary>
    property vBCFCP: Double read FvBCFCP write SetvBCFCP;
    property vBCFCPHasValue: Boolean read FvBCFCPHasValue write FvBCFCPHasValue;
    /// <summary>
    /// Percentual de ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    /// </summary>
    property pFCP: Double read FpFCP write SetpFCP;
    property pFCPHasValue: Boolean read FpFCPHasValue write FpFCPHasValue;
    /// <summary>
    /// Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    /// </summary>
    property vFCP: Double read FvFCP write SetvFCP;
    property vFCPHasValue: Boolean read FvFCPHasValue write FvFCPHasValue;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS ST:
    /// 0 – Preço tabelado ou máximo  sugerido;
    /// 1 - Lista Negativa (valor);
    /// 2 - Lista Positiva (valor);
    /// 3 - Lista Neutra (valor);
    /// 4 - Margem Valor Agregado (%%);
    /// 5 - Pauta (valor);
    /// 6 - Valor da Operação.
    /// </summary>
    property modBCST: Integer read FmodBCST write FmodBCST;
    /// <summary>
    /// Percentual da Margem de Valor Adicionado ICMS ST.
    /// </summary>
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    /// <summary>
    /// Percentual de redução da BC ICMS ST.
    /// </summary>
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    /// <summary>
    /// Valor da BC do ICMS ST.
    /// </summary>
    property vBCST: Double read FvBCST write FvBCST;
    /// <summary>
    /// Alíquota do ICMS ST.
    /// </summary>
    property pICMSST: Double read FpICMSST write FpICMSST;
    /// <summary>
    /// Valor do ICMS ST.
    /// </summary>
    property vICMSST: Double read FvICMSST write FvICMSST;
    /// <summary>
    /// Valor da Base de cálculo do FCP retido por substituição tributária.
    /// </summary>
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    /// <summary>
    /// Percentual de FCP retido por substituição tributária.
    /// </summary>
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    /// <summary>
    /// Valor do FCP retido por substituição tributária.
    /// </summary>
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
    /// <summary>
    /// Valor do ICMS de desoneração.
    /// </summary>
    property vICMSDeson: Double read FvICMSDeson write SetvICMSDeson;
    property vICMSDesonHasValue: Boolean read FvICMSDesonHasValue write FvICMSDesonHasValue;
    /// <summary>
    /// Motivo da desoneração do ICMS:3-Uso na agropecuária;9-Outros;12-Fomento agropecuário.
    /// </summary>
    property motDesICMS: Integer read FmotDesICMS write SetmotDesICMS;
    property motDesICMSHasValue: Boolean read FmotDesICMSHasValue write FmotDesICMSHasValue;
    /// <summary>
    /// Valor do ICMS-ST desonerado.
    /// </summary>
    property vICMSSTDeson: Double read FvICMSSTDeson write SetvICMSSTDeson;
    property vICMSSTDesonHasValue: Boolean read FvICMSSTDesonHasValue write FvICMSSTDesonHasValue;
    /// <summary>
    /// Motivo da desoneração do ICMS-ST: 3-Uso na agropecuária; 9-Outros; 12-Fomento agropecuário.
    /// </summary>
    property motDesICMSST: Integer read FmotDesICMSST write SetmotDesICMSST;
    property motDesICMSSTHasValue: Boolean read FmotDesICMSSTHasValue write FmotDesICMSSTHasValue;
  end;
  
  TNfeSefazICMS90 = class
  private
    Forig: Integer;
    FCST: string;
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
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// Tributção pelo ICMS
    /// 90 - Outras.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS: 
    /// 0 - Margem Valor Agregado (%%);
    /// 1 - Pauta (valor);
    /// 2 - Preço Tabelado Máximo (valor);
    /// 3 - Valor da Operação.
    /// </summary>
    property modBC: Integer read FmodBC write SetmodBC;
    property modBCHasValue: Boolean read FmodBCHasValue write FmodBCHasValue;
    /// <summary>
    /// Valor da BC do ICMS.
    /// </summary>
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    /// <summary>
    /// Percentual de redução da BC.
    /// </summary>
    property pRedBC: Double read FpRedBC write SetpRedBC;
    property pRedBCHasValue: Boolean read FpRedBCHasValue write FpRedBCHasValue;
    /// <summary>
    /// Alíquota do ICMS.
    /// </summary>
    property pICMS: Double read FpICMS write SetpICMS;
    property pICMSHasValue: Boolean read FpICMSHasValue write FpICMSHasValue;
    /// <summary>
    /// Valor do ICMS.
    /// </summary>
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
    /// <summary>
    /// Valor da Base de cálculo do FCP.
    /// </summary>
    property vBCFCP: Double read FvBCFCP write SetvBCFCP;
    property vBCFCPHasValue: Boolean read FvBCFCPHasValue write FvBCFCPHasValue;
    /// <summary>
    /// Percentual de ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    /// </summary>
    property pFCP: Double read FpFCP write SetpFCP;
    property pFCPHasValue: Boolean read FpFCPHasValue write FpFCPHasValue;
    /// <summary>
    /// Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    /// </summary>
    property vFCP: Double read FvFCP write SetvFCP;
    property vFCPHasValue: Boolean read FvFCPHasValue write FvFCPHasValue;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS ST:
    /// 0 – Preço tabelado ou máximo  sugerido;
    /// 1 - Lista Negativa (valor);
    /// 2 - Lista Positiva (valor);
    /// 3 - Lista Neutra (valor);
    /// 4 - Margem Valor Agregado (%%);
    /// 5 - Pauta (valor);
    /// 6 - Valor da Operação.
    /// </summary>
    property modBCST: Integer read FmodBCST write SetmodBCST;
    property modBCSTHasValue: Boolean read FmodBCSTHasValue write FmodBCSTHasValue;
    /// <summary>
    /// Percentual da Margem de Valor Adicionado ICMS ST.
    /// </summary>
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    /// <summary>
    /// Percentual de redução da BC ICMS ST.
    /// </summary>
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    /// <summary>
    /// Valor da BC do ICMS ST.
    /// </summary>
    property vBCST: Double read FvBCST write SetvBCST;
    property vBCSTHasValue: Boolean read FvBCSTHasValue write FvBCSTHasValue;
    /// <summary>
    /// Alíquota do ICMS ST.
    /// </summary>
    property pICMSST: Double read FpICMSST write SetpICMSST;
    property pICMSSTHasValue: Boolean read FpICMSSTHasValue write FpICMSSTHasValue;
    /// <summary>
    /// Valor do ICMS ST.
    /// </summary>
    property vICMSST: Double read FvICMSST write SetvICMSST;
    property vICMSSTHasValue: Boolean read FvICMSSTHasValue write FvICMSSTHasValue;
    /// <summary>
    /// Valor da Base de cálculo do FCP.
    /// </summary>
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    /// <summary>
    /// Percentual de FCP retido por substituição tributária.
    /// </summary>
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    /// <summary>
    /// Valor do FCP retido por substituição tributária.
    /// </summary>
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
    /// <summary>
    /// Valor do ICMS de desoneração.
    /// </summary>
    property vICMSDeson: Double read FvICMSDeson write SetvICMSDeson;
    property vICMSDesonHasValue: Boolean read FvICMSDesonHasValue write FvICMSDesonHasValue;
    /// <summary>
    /// Motivo da desoneração do ICMS:3-Uso na agropecuária;9-Outros;12-Fomento agropecuário.
    /// </summary>
    property motDesICMS: Integer read FmotDesICMS write SetmotDesICMS;
    property motDesICMSHasValue: Boolean read FmotDesICMSHasValue write FmotDesICMSHasValue;
    /// <summary>
    /// Valor do ICMS-ST desonerado.
    /// </summary>
    property vICMSSTDeson: Double read FvICMSSTDeson write SetvICMSSTDeson;
    property vICMSSTDesonHasValue: Boolean read FvICMSSTDesonHasValue write FvICMSSTDesonHasValue;
    /// <summary>
    /// Motivo da desoneração do ICMS-ST: 3-Uso na agropecuária; 9-Outros; 12-Fomento agropecuário.
    /// </summary>
    property motDesICMSST: Integer read FmotDesICMSST write SetmotDesICMSST;
    property motDesICMSSTHasValue: Boolean read FmotDesICMSSTHasValue write FmotDesICMSSTHasValue;
  end;
  
  TNfeSefazICMSPart = class
  private
    Forig: Integer;
    FCST: string;
    FmodBC: Integer;
    FvBC: Double;
    FpRedBC: Double;
    FpRedBCHasValue: Boolean;
    FpICMS: Double;
    FvICMS: Double;
    FmodBCST: Integer;
    FpMVAST: Double;
    FpMVASTHasValue: Boolean;
    FpRedBCST: Double;
    FpRedBCSTHasValue: Boolean;
    FvBCST: Double;
    FpICMSST: Double;
    FvICMSST: Double;
    FvBCFCPST: Double;
    FvBCFCPSTHasValue: Boolean;
    FpFCPST: Double;
    FpFCPSTHasValue: Boolean;
    FvFCPST: Double;
    FvFCPSTHasValue: Boolean;
    FpBCOp: Double;
    FUFST: string;
    procedure SetpRedBC(const Value: Double);
    procedure SetpMVAST(const Value: Double);
    procedure SetpRedBCST(const Value: Double);
    procedure SetvBCFCPST(const Value: Double);
    procedure SetpFCPST(const Value: Double);
    procedure SetvFCPST(const Value: Double);
  public
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// Tributação pelo ICMS 
    /// 10 - Tributada e com cobrança do ICMS por substituição tributária;
    /// 90 – Outros.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS: 
    /// 0 - Margem Valor Agregado (%%);
    /// 1 - Pauta (valor);
    /// 2 - Preço Tabelado Máximo (valor);
    /// 3 - Valor da Operação.
    /// </summary>
    property modBC: Integer read FmodBC write FmodBC;
    /// <summary>
    /// Valor da BC do ICMS.
    /// </summary>
    property vBC: Double read FvBC write FvBC;
    /// <summary>
    /// Percentual de redução da BC.
    /// </summary>
    property pRedBC: Double read FpRedBC write SetpRedBC;
    property pRedBCHasValue: Boolean read FpRedBCHasValue write FpRedBCHasValue;
    /// <summary>
    /// Alíquota do ICMS.
    /// </summary>
    property pICMS: Double read FpICMS write FpICMS;
    /// <summary>
    /// Valor do ICMS.
    /// </summary>
    property vICMS: Double read FvICMS write FvICMS;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS ST:
    /// 0 – Preço tabelado ou máximo  sugerido;
    /// 1 - Lista Negativa (valor);
    /// 2 - Lista Positiva (valor);
    /// 3 - Lista Neutra (valor);
    /// 4 - Margem Valor Agregado (%%);
    /// 5 - Pauta (valor).
    /// 6 - Valor da Operação.
    /// </summary>
    property modBCST: Integer read FmodBCST write FmodBCST;
    /// <summary>
    /// Percentual da Margem de Valor Adicionado ICMS ST.
    /// </summary>
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    /// <summary>
    /// Percentual de redução da BC ICMS ST.
    /// </summary>
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    /// <summary>
    /// Valor da BC do ICMS ST.
    /// </summary>
    property vBCST: Double read FvBCST write FvBCST;
    /// <summary>
    /// Alíquota do ICMS ST.
    /// </summary>
    property pICMSST: Double read FpICMSST write FpICMSST;
    /// <summary>
    /// Valor do ICMS ST.
    /// </summary>
    property vICMSST: Double read FvICMSST write FvICMSST;
    /// <summary>
    /// Valor da Base de cálculo do FCP retido por substituicao tributaria.
    /// </summary>
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    /// <summary>
    /// Percentual de FCP retido por substituição tributária.
    /// </summary>
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    /// <summary>
    /// Valor do FCP retido por substituição tributária.
    /// </summary>
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
    /// <summary>
    /// Percentual para determinação do valor  da Base de Cálculo da operação própria.
    /// </summary>
    property pBCOp: Double read FpBCOp write FpBCOp;
    /// <summary>
    /// Sigla da UF para qual é devido o ICMS ST da operação.
    /// </summary>
    property UFST: string read FUFST write FUFST;
  end;
  
  TNfeSefazICMSST = class
  private
    Forig: Integer;
    FCST: string;
    FvBCSTRet: Double;
    FpST: Double;
    FpSTHasValue: Boolean;
    FvICMSSubstituto: Double;
    FvICMSSubstitutoHasValue: Boolean;
    FvICMSSTRet: Double;
    FvBCFCPSTRet: Double;
    FvBCFCPSTRetHasValue: Boolean;
    FpFCPSTRet: Double;
    FpFCPSTRetHasValue: Boolean;
    FvFCPSTRet: Double;
    FvFCPSTRetHasValue: Boolean;
    FvBCSTDest: Double;
    FvICMSSTDest: Double;
    FpRedBCEfet: Double;
    FpRedBCEfetHasValue: Boolean;
    FvBCEfet: Double;
    FvBCEfetHasValue: Boolean;
    FpICMSEfet: Double;
    FpICMSEfetHasValue: Boolean;
    FvICMSEfet: Double;
    FvICMSEfetHasValue: Boolean;
    procedure SetpST(const Value: Double);
    procedure SetvICMSSubstituto(const Value: Double);
    procedure SetvBCFCPSTRet(const Value: Double);
    procedure SetpFCPSTRet(const Value: Double);
    procedure SetvFCPSTRet(const Value: Double);
    procedure SetpRedBCEfet(const Value: Double);
    procedure SetvBCEfet(const Value: Double);
    procedure SetpICMSEfet(const Value: Double);
    procedure SetvICMSEfet(const Value: Double);
  public
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// Tributção pelo ICMS
    /// 41-Não Tributado.
    /// 60-Cobrado anteriormente por substituição tributária.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Informar o valor da BC do ICMS ST retido na UF remetente.
    /// </summary>
    property vBCSTRet: Double read FvBCSTRet write FvBCSTRet;
    /// <summary>
    /// Aliquota suportada pelo consumidor final.
    /// </summary>
    property pST: Double read FpST write SetpST;
    property pSTHasValue: Boolean read FpSTHasValue write FpSTHasValue;
    /// <summary>
    /// Valor do ICMS Próprio do Substituto cobrado em operação anterior.
    /// </summary>
    property vICMSSubstituto: Double read FvICMSSubstituto write SetvICMSSubstituto;
    property vICMSSubstitutoHasValue: Boolean read FvICMSSubstitutoHasValue write FvICMSSubstitutoHasValue;
    /// <summary>
    /// Informar o valor do ICMS ST retido na UF remetente (iv2.0)).
    /// </summary>
    property vICMSSTRet: Double read FvICMSSTRet write FvICMSSTRet;
    /// <summary>
    /// Informar o valor da Base de Cálculo do FCP retido anteriormente por ST.
    /// </summary>
    property vBCFCPSTRet: Double read FvBCFCPSTRet write SetvBCFCPSTRet;
    property vBCFCPSTRetHasValue: Boolean read FvBCFCPSTRetHasValue write FvBCFCPSTRetHasValue;
    /// <summary>
    /// Percentual relativo ao Fundo de Combate à Pobreza (FCP) retido por substituição tributária.
    /// </summary>
    property pFCPSTRet: Double read FpFCPSTRet write SetpFCPSTRet;
    property pFCPSTRetHasValue: Boolean read FpFCPSTRetHasValue write FpFCPSTRetHasValue;
    /// <summary>
    /// Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) retido por substituição tributária.
    /// </summary>
    property vFCPSTRet: Double read FvFCPSTRet write SetvFCPSTRet;
    property vFCPSTRetHasValue: Boolean read FvFCPSTRetHasValue write FvFCPSTRetHasValue;
    /// <summary>
    /// Informar o valor da BC do ICMS ST da UF destino.
    /// </summary>
    property vBCSTDest: Double read FvBCSTDest write FvBCSTDest;
    /// <summary>
    /// Informar o valor da BC do ICMS ST da UF destino (v2.0).
    /// </summary>
    property vICMSSTDest: Double read FvICMSSTDest write FvICMSSTDest;
    /// <summary>
    /// Percentual de redução da base de cálculo efetiva.
    /// </summary>
    property pRedBCEfet: Double read FpRedBCEfet write SetpRedBCEfet;
    property pRedBCEfetHasValue: Boolean read FpRedBCEfetHasValue write FpRedBCEfetHasValue;
    /// <summary>
    /// Valor da base de cálculo efetiva.
    /// </summary>
    property vBCEfet: Double read FvBCEfet write SetvBCEfet;
    property vBCEfetHasValue: Boolean read FvBCEfetHasValue write FvBCEfetHasValue;
    /// <summary>
    /// Alíquota do ICMS efetivo.
    /// </summary>
    property pICMSEfet: Double read FpICMSEfet write SetpICMSEfet;
    property pICMSEfetHasValue: Boolean read FpICMSEfetHasValue write FpICMSEfetHasValue;
    /// <summary>
    /// Valor do ICMS efetivo.
    /// </summary>
    property vICMSEfet: Double read FvICMSEfet write SetvICMSEfet;
    property vICMSEfetHasValue: Boolean read FvICMSEfetHasValue write FvICMSEfetHasValue;
  end;
  
  TNfeSefazICMSSN101 = class
  private
    Forig: Integer;
    FCSOSN: string;
    FpCredSN: Double;
    FvCredICMSSN: Double;
  public
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// 101- Tributada pelo Simples Nacional com permissão de crédito. (v.2.0).
    /// </summary>
    property CSOSN: string read FCSOSN write FCSOSN;
    /// <summary>
    /// Alíquota aplicável de cálculo do crédito (Simples Nacional). (v2.0).
    /// </summary>
    property pCredSN: Double read FpCredSN write FpCredSN;
    /// <summary>
    /// Valor crédito do ICMS que pode ser aproveitado nos termos do art. 23 da LC 123 (Simples Nacional) (v2.0).
    /// </summary>
    property vCredICMSSN: Double read FvCredICMSSN write FvCredICMSSN;
  end;
  
  TNfeSefazICMSSN102 = class
  private
    Forig: Integer;
    FCSOSN: string;
  public
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// 102- Tributada pelo Simples Nacional sem permissão de crédito. 
    /// 103 – Isenção do ICMS  no Simples Nacional para faixa de receita bruta.
    /// 300 – Imune.
    /// 400 – Não tributda pelo Simples Nacional (v.2.0) (v.2.0).
    /// </summary>
    property CSOSN: string read FCSOSN write FCSOSN;
  end;
  
  TNfeSefazICMSSN201 = class
  private
    Forig: Integer;
    FCSOSN: string;
    FmodBCST: Integer;
    FpMVAST: Double;
    FpMVASTHasValue: Boolean;
    FpRedBCST: Double;
    FpRedBCSTHasValue: Boolean;
    FvBCST: Double;
    FpICMSST: Double;
    FvICMSST: Double;
    FvBCFCPST: Double;
    FvBCFCPSTHasValue: Boolean;
    FpFCPST: Double;
    FpFCPSTHasValue: Boolean;
    FvFCPST: Double;
    FvFCPSTHasValue: Boolean;
    FpCredSN: Double;
    FvCredICMSSN: Double;
    procedure SetpMVAST(const Value: Double);
    procedure SetpRedBCST(const Value: Double);
    procedure SetvBCFCPST(const Value: Double);
    procedure SetpFCPST(const Value: Double);
    procedure SetvFCPST(const Value: Double);
  public
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// 201- Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por Substituição Tributária (v.2.0).
    /// </summary>
    property CSOSN: string read FCSOSN write FCSOSN;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS ST:
    /// 0 – Preço tabelado ou máximo  sugerido;
    /// 1 - Lista Negativa (valor);
    /// 2 - Lista Positiva (valor);
    /// 3 - Lista Neutra (valor);
    /// 4 - Margem Valor Agregado (%%);
    /// 5 - Pauta (valor). (v2.0)
    /// 6 - Valor da Operação.
    /// </summary>
    property modBCST: Integer read FmodBCST write FmodBCST;
    /// <summary>
    /// Percentual da Margem de Valor Adicionado ICMS ST (v2.0).
    /// </summary>
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    /// <summary>
    /// Percentual de redução da BC ICMS ST  (v2.0).
    /// </summary>
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    /// <summary>
    /// Valor da BC do ICMS ST (v2.0).
    /// </summary>
    property vBCST: Double read FvBCST write FvBCST;
    /// <summary>
    /// Alíquota do ICMS ST (v2.0).
    /// </summary>
    property pICMSST: Double read FpICMSST write FpICMSST;
    /// <summary>
    /// Valor do ICMS ST (v2.0).
    /// </summary>
    property vICMSST: Double read FvICMSST write FvICMSST;
    /// <summary>
    /// Valor da Base de cálculo do FCP.
    /// </summary>
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    /// <summary>
    /// Percentual de FCP retido por substituição tributária.
    /// </summary>
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    /// <summary>
    /// Valor do FCP retido por substituição tributária.
    /// </summary>
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
    /// <summary>
    /// Alíquota aplicável de cálculo do crédito (Simples Nacional). (v2.0).
    /// </summary>
    property pCredSN: Double read FpCredSN write FpCredSN;
    /// <summary>
    /// Valor crédito do ICMS que pode ser aproveitado nos termos do art. 23 da LC 123 (Simples Nacional) (v2.0).
    /// </summary>
    property vCredICMSSN: Double read FvCredICMSSN write FvCredICMSSN;
  end;
  
  TNfeSefazICMSSN202 = class
  private
    Forig: Integer;
    FCSOSN: string;
    FmodBCST: Integer;
    FpMVAST: Double;
    FpMVASTHasValue: Boolean;
    FpRedBCST: Double;
    FpRedBCSTHasValue: Boolean;
    FvBCST: Double;
    FpICMSST: Double;
    FvICMSST: Double;
    FvBCFCPST: Double;
    FvBCFCPSTHasValue: Boolean;
    FpFCPST: Double;
    FpFCPSTHasValue: Boolean;
    FvFCPST: Double;
    FvFCPSTHasValue: Boolean;
    procedure SetpMVAST(const Value: Double);
    procedure SetpRedBCST(const Value: Double);
    procedure SetvBCFCPST(const Value: Double);
    procedure SetpFCPST(const Value: Double);
    procedure SetvFCPST(const Value: Double);
  public
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// 202- Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por Substituição Tributária;
    /// 203-  Isenção do ICMS nos Simples Nacional para faixa de receita bruta e com cobrança do ICMS por Substituição Tributária (v.2.0).
    /// </summary>
    property CSOSN: string read FCSOSN write FCSOSN;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS ST:
    /// 0 – Preço tabelado ou máximo  sugerido;
    /// 1 - Lista Negativa (valor);
    /// 2 - Lista Positiva (valor);
    /// 3 - Lista Neutra (valor);
    /// 4 - Margem Valor Agregado (%%);
    /// 5 - Pauta (valor). (v2.0)
    /// 6 - Valor da Operação.
    /// </summary>
    property modBCST: Integer read FmodBCST write FmodBCST;
    /// <summary>
    /// Percentual da Margem de Valor Adicionado ICMS ST (v2.0).
    /// </summary>
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    /// <summary>
    /// Percentual de redução da BC ICMS ST  (v2.0).
    /// </summary>
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    /// <summary>
    /// Valor da BC do ICMS ST (v2.0).
    /// </summary>
    property vBCST: Double read FvBCST write FvBCST;
    /// <summary>
    /// Alíquota do ICMS ST (v2.0).
    /// </summary>
    property pICMSST: Double read FpICMSST write FpICMSST;
    /// <summary>
    /// Valor do ICMS ST (v2.0).
    /// </summary>
    property vICMSST: Double read FvICMSST write FvICMSST;
    /// <summary>
    /// Valor da Base de cálculo do FCP.
    /// </summary>
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    /// <summary>
    /// Percentual de FCP retido por substituição tributária.
    /// </summary>
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    /// <summary>
    /// Valor do FCP retido por substituição tributária.
    /// </summary>
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
  end;
  
  TNfeSefazICMSSN500 = class
  private
    Forig: Integer;
    FCSOSN: string;
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
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// 500 – ICMS cobrado anterirmente por substituição tributária (substituído) ou por antecipação
    /// (v.2.0).
    /// </summary>
    property CSOSN: string read FCSOSN write FCSOSN;
    /// <summary>
    /// Valor da BC do ICMS ST retido anteriormente (v2.0).
    /// </summary>
    property vBCSTRet: Double read FvBCSTRet write SetvBCSTRet;
    property vBCSTRetHasValue: Boolean read FvBCSTRetHasValue write FvBCSTRetHasValue;
    /// <summary>
    /// Aliquota suportada pelo consumidor final.
    /// </summary>
    property pST: Double read FpST write SetpST;
    property pSTHasValue: Boolean read FpSTHasValue write FpSTHasValue;
    /// <summary>
    /// Valor do ICMS próprio do substituto.
    /// </summary>
    property vICMSSubstituto: Double read FvICMSSubstituto write SetvICMSSubstituto;
    property vICMSSubstitutoHasValue: Boolean read FvICMSSubstitutoHasValue write FvICMSSubstitutoHasValue;
    /// <summary>
    /// Valor do ICMS ST retido anteriormente  (v2.0).
    /// </summary>
    property vICMSSTRet: Double read FvICMSSTRet write SetvICMSSTRet;
    property vICMSSTRetHasValue: Boolean read FvICMSSTRetHasValue write FvICMSSTRetHasValue;
    /// <summary>
    /// Valor da Base de cálculo do FCP retido anteriormente.
    /// </summary>
    property vBCFCPSTRet: Double read FvBCFCPSTRet write SetvBCFCPSTRet;
    property vBCFCPSTRetHasValue: Boolean read FvBCFCPSTRetHasValue write FvBCFCPSTRetHasValue;
    /// <summary>
    /// Percentual de FCP retido anteriormente por substituição tributária.
    /// </summary>
    property pFCPSTRet: Double read FpFCPSTRet write SetpFCPSTRet;
    property pFCPSTRetHasValue: Boolean read FpFCPSTRetHasValue write FpFCPSTRetHasValue;
    /// <summary>
    /// Valor do FCP retido por substituição tributária.
    /// </summary>
    property vFCPSTRet: Double read FvFCPSTRet write SetvFCPSTRet;
    property vFCPSTRetHasValue: Boolean read FvFCPSTRetHasValue write FvFCPSTRetHasValue;
    /// <summary>
    /// Percentual de redução da base de cálculo efetiva.
    /// </summary>
    property pRedBCEfet: Double read FpRedBCEfet write SetpRedBCEfet;
    property pRedBCEfetHasValue: Boolean read FpRedBCEfetHasValue write FpRedBCEfetHasValue;
    /// <summary>
    /// Valor da base de cálculo efetiva.
    /// </summary>
    property vBCEfet: Double read FvBCEfet write SetvBCEfet;
    property vBCEfetHasValue: Boolean read FvBCEfetHasValue write FvBCEfetHasValue;
    /// <summary>
    /// Alíquota do ICMS efetiva.
    /// </summary>
    property pICMSEfet: Double read FpICMSEfet write SetpICMSEfet;
    property pICMSEfetHasValue: Boolean read FpICMSEfetHasValue write FpICMSEfetHasValue;
    /// <summary>
    /// Valor do ICMS efetivo.
    /// </summary>
    property vICMSEfet: Double read FvICMSEfet write SetvICMSEfet;
    property vICMSEfetHasValue: Boolean read FvICMSEfetHasValue write FvICMSEfetHasValue;
  end;
  
  TNfeSefazICMSSN900 = class
  private
    Forig: Integer;
    FCSOSN: string;
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
    /// <summary>
    /// Origem da mercadoria:
    /// 0 - Nacional, exceto as indicadas nos códigos 3, 4, 5 e 8;
    /// 1 - Estrangeira - Importação direta, exceto a indicada no código 6;
    /// 2 - Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7;
    /// 3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%% e inferior ou igual a 70%%;
    /// 4 - Nacional, cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam as legislações citadas nos Ajustes;
    /// 5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%%;
    /// 6 - Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX e gás natural;
    /// 7 - Estrangeira - Adquirida no mercado interno, sem similar nacional, constante lista CAMEX e gás natural;
    /// 8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%%.
    /// </summary>
    property orig: Integer read Forig write Forig;
    /// <summary>
    /// Tributação pelo ICMS 900 - Outros(v2.0).
    /// </summary>
    property CSOSN: string read FCSOSN write FCSOSN;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS: 
    /// 0 - Margem Valor Agregado (%%);
    /// 1 - Pauta (valor);
    /// 2 - Preço Tabelado Máximo (valor);
    /// 3 - Valor da Operação.
    /// </summary>
    property modBC: Integer read FmodBC write SetmodBC;
    property modBCHasValue: Boolean read FmodBCHasValue write FmodBCHasValue;
    /// <summary>
    /// Valor da BC do ICMS.
    /// </summary>
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    /// <summary>
    /// Percentual de redução da BC.
    /// </summary>
    property pRedBC: Double read FpRedBC write SetpRedBC;
    property pRedBCHasValue: Boolean read FpRedBCHasValue write FpRedBCHasValue;
    /// <summary>
    /// Alíquota do ICMS.
    /// </summary>
    property pICMS: Double read FpICMS write SetpICMS;
    property pICMSHasValue: Boolean read FpICMSHasValue write FpICMSHasValue;
    /// <summary>
    /// Valor do ICMS.
    /// </summary>
    property vICMS: Double read FvICMS write SetvICMS;
    property vICMSHasValue: Boolean read FvICMSHasValue write FvICMSHasValue;
    /// <summary>
    /// Modalidade de determinação da BC do ICMS ST:
    /// 0 – Preço tabelado ou máximo  sugerido;
    /// 1 - Lista Negativa (valor);
    /// 2 - Lista Positiva (valor);
    /// 3 - Lista Neutra (valor);
    /// 4 - Margem Valor Agregado (%%);
    /// 5 - Pauta (valor).
    /// 6 - Valor da Operação.
    /// </summary>
    property modBCST: Integer read FmodBCST write SetmodBCST;
    property modBCSTHasValue: Boolean read FmodBCSTHasValue write FmodBCSTHasValue;
    /// <summary>
    /// Percentual da Margem de Valor Adicionado ICMS ST.
    /// </summary>
    property pMVAST: Double read FpMVAST write SetpMVAST;
    property pMVASTHasValue: Boolean read FpMVASTHasValue write FpMVASTHasValue;
    /// <summary>
    /// Percentual de redução da BC ICMS ST.
    /// </summary>
    property pRedBCST: Double read FpRedBCST write SetpRedBCST;
    property pRedBCSTHasValue: Boolean read FpRedBCSTHasValue write FpRedBCSTHasValue;
    /// <summary>
    /// Valor da BC do ICMS ST.
    /// </summary>
    property vBCST: Double read FvBCST write SetvBCST;
    property vBCSTHasValue: Boolean read FvBCSTHasValue write FvBCSTHasValue;
    /// <summary>
    /// Alíquota do ICMS ST.
    /// </summary>
    property pICMSST: Double read FpICMSST write SetpICMSST;
    property pICMSSTHasValue: Boolean read FpICMSSTHasValue write FpICMSSTHasValue;
    /// <summary>
    /// Valor do ICMS ST.
    /// </summary>
    property vICMSST: Double read FvICMSST write SetvICMSST;
    property vICMSSTHasValue: Boolean read FvICMSSTHasValue write FvICMSSTHasValue;
    /// <summary>
    /// Valor da Base de cálculo do FCP.
    /// </summary>
    property vBCFCPST: Double read FvBCFCPST write SetvBCFCPST;
    property vBCFCPSTHasValue: Boolean read FvBCFCPSTHasValue write FvBCFCPSTHasValue;
    /// <summary>
    /// Percentual de FCP retido por substituição tributária.
    /// </summary>
    property pFCPST: Double read FpFCPST write SetpFCPST;
    property pFCPSTHasValue: Boolean read FpFCPSTHasValue write FpFCPSTHasValue;
    /// <summary>
    /// Valor do FCP retido por substituição tributária.
    /// </summary>
    property vFCPST: Double read FvFCPST write SetvFCPST;
    property vFCPSTHasValue: Boolean read FvFCPSTHasValue write FvFCPSTHasValue;
    /// <summary>
    /// Alíquota aplicável de cálculo do crédito (Simples Nacional). (v2.0).
    /// </summary>
    property pCredSN: Double read FpCredSN write SetpCredSN;
    property pCredSNHasValue: Boolean read FpCredSNHasValue write FpCredSNHasValue;
    /// <summary>
    /// Valor crédito do ICMS que pode ser aproveitado nos termos do art. 23 da LC 123 (Simples Nacional) (v2.0).
    /// </summary>
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
    /// <summary>
    /// Tributação pelo ICMS
    /// 00 - Tributada integralmente.
    /// </summary>
    property ICMS00: TNfeSefazICMS00 read FICMS00 write SetICMS00;
    /// <summary>
    /// Tributação pelo ICMS
    /// 10 - Tributada e com cobrança do ICMS por substituição tributária.
    /// </summary>
    property ICMS10: TNfeSefazICMS10 read FICMS10 write SetICMS10;
    /// <summary>
    /// Tributção pelo ICMS
    /// 20 - Com redução de base de cálculo.
    /// </summary>
    property ICMS20: TNfeSefazICMS20 read FICMS20 write SetICMS20;
    /// <summary>
    /// Tributação pelo ICMS
    /// 30 - Isenta ou não tributada e com cobrança do ICMS por substituição tributária.
    /// </summary>
    property ICMS30: TNfeSefazICMS30 read FICMS30 write SetICMS30;
    /// <summary>
    /// Tributação pelo ICMS
    /// 40 - Isenta 
    /// 41 - Não tributada 
    /// 50 - Suspensão.
    /// </summary>
    property ICMS40: TNfeSefazICMS40 read FICMS40 write SetICMS40;
    /// <summary>
    /// Tributção pelo ICMS
    /// 51 - Diferimento
    /// A exigência do preenchimento das informações do ICMS diferido fica à critério de cada UF.
    /// </summary>
    property ICMS51: TNfeSefazICMS51 read FICMS51 write SetICMS51;
    /// <summary>
    /// Tributação pelo ICMS
    /// 60 - ICMS cobrado anteriormente por substituição tributária.
    /// </summary>
    property ICMS60: TNfeSefazICMS60 read FICMS60 write SetICMS60;
    /// <summary>
    /// Tributação pelo ICMS 
    /// 70 - Com redução de base de cálculo e cobrança do ICMS por substituição tributária.
    /// </summary>
    property ICMS70: TNfeSefazICMS70 read FICMS70 write SetICMS70;
    /// <summary>
    /// Tributação pelo ICMS
    /// 90 - Outras.
    /// </summary>
    property ICMS90: TNfeSefazICMS90 read FICMS90 write SetICMS90;
    /// <summary>
    /// Partilha do ICMS entre a UF de origem e UF de destino ou a UF definida na legislação
    /// Operação interestadual para consumidor final com partilha do ICMS  devido na operação entre a UF de origem e a UF do destinatário ou ou a UF definida na legislação. (Ex. UF da concessionária de entrega do  veículos).
    /// </summary>
    property ICMSPart: TNfeSefazICMSPart read FICMSPart write SetICMSPart;
    /// <summary>
    /// Grupo de informação do ICMSST devido para a UF de destino, nas operações interestaduais de produtos que tiveram retenção antecipada de ICMS por ST na UF do remetente. Repasse via Substituto Tributário.
    /// </summary>
    property ICMSST: TNfeSefazICMSST read FICMSST write SetICMSST;
    /// <summary>
    /// Tributação do ICMS pelo SIMPLES NACIONAL e CSOSN=101 (v.2.0).
    /// </summary>
    property ICMSSN101: TNfeSefazICMSSN101 read FICMSSN101 write SetICMSSN101;
    /// <summary>
    /// Tributação do ICMS pelo SIMPLES NACIONAL e CSOSN=102, 103, 300 ou 400 (v.2.0)).
    /// </summary>
    property ICMSSN102: TNfeSefazICMSSN102 read FICMSSN102 write SetICMSSN102;
    /// <summary>
    /// Tributação do ICMS pelo SIMPLES NACIONAL e CSOSN=201 (v.2.0).
    /// </summary>
    property ICMSSN201: TNfeSefazICMSSN201 read FICMSSN201 write SetICMSSN201;
    /// <summary>
    /// Tributação do ICMS pelo SIMPLES NACIONAL e CSOSN=202 ou 203 (v.2.0).
    /// </summary>
    property ICMSSN202: TNfeSefazICMSSN202 read FICMSSN202 write SetICMSSN202;
    /// <summary>
    /// Tributação do ICMS pelo SIMPLES NACIONAL,CRT=1 – Simples Nacional e CSOSN=500 (v.2.0).
    /// </summary>
    property ICMSSN500: TNfeSefazICMSSN500 read FICMSSN500 write SetICMSSN500;
    /// <summary>
    /// Tributação do ICMS pelo SIMPLES NACIONAL, CRT=1 – Simples Nacional e CSOSN=900 (v2.0).
    /// </summary>
    property ICMSSN900: TNfeSefazICMSSN900 read FICMSSN900 write SetICMSSN900;
  end;
  
  TNfeSefazIPITrib = class
  private
    FCST: string;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpIPI: Double;
    FpIPIHasValue: Boolean;
    FqUnid: Double;
    FqUnidHasValue: Boolean;
    FvUnid: Double;
    FvUnidHasValue: Boolean;
    FvIPI: Double;
    procedure SetvBC(const Value: Double);
    procedure SetpIPI(const Value: Double);
    procedure SetqUnid(const Value: Double);
    procedure SetvUnid(const Value: Double);
  public
    /// <summary>
    /// Código da Situação Tributária do IPI:
    /// 00-Entrada com recuperação de crédito
    /// 49 - Outras entradas
    /// 50-Saída tributada
    /// 99-Outras saídas.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Valor da BC do IPI.
    /// </summary>
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    /// <summary>
    /// Alíquota do IPI.
    /// </summary>
    property pIPI: Double read FpIPI write SetpIPI;
    property pIPIHasValue: Boolean read FpIPIHasValue write FpIPIHasValue;
    /// <summary>
    /// Quantidade total na unidade padrão para tributação.
    /// </summary>
    property qUnid: Double read FqUnid write SetqUnid;
    property qUnidHasValue: Boolean read FqUnidHasValue write FqUnidHasValue;
    /// <summary>
    /// Valor por Unidade Tributável. Informar o valor do imposto Pauta por unidade de medida.
    /// </summary>
    property vUnid: Double read FvUnid write SetvUnid;
    property vUnidHasValue: Boolean read FvUnidHasValue write FvUnidHasValue;
    /// <summary>
    /// Valor do IPI.
    /// </summary>
    property vIPI: Double read FvIPI write FvIPI;
  end;
  
  TNfeSefazIPINT = class
  private
    FCST: string;
  public
    /// <summary>
    /// Código da Situação Tributária do IPI:
    /// 01-Entrada tributada com alíquota zero
    /// 02-Entrada isenta
    /// 03-Entrada não-tributada
    /// 04-Entrada imune
    /// 05-Entrada com suspensão
    /// 51-Saída tributada com alíquota zero
    /// 52-Saída isenta
    /// 53-Saída não-tributada
    /// 54-Saída imune
    /// 55-Saída com suspensão.
    /// </summary>
    property CST: string read FCST write FCST;
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
    FIPITrib: TNfeSefazIPITrib;
    FIPINT: TNfeSefazIPINT;
    procedure SetCNPJProd(const Value: string);
    procedure SetcSelo(const Value: string);
    procedure SetqSelo(const Value: Integer);
    procedure SetIPITrib(const Value: TNfeSefazIPITrib);
    procedure SetIPINT(const Value: TNfeSefazIPINT);
  public
    destructor Destroy; override;
    /// <summary>
    /// CNPJ do produtor da mercadoria, quando diferente do emitente. Somente para os casos de exportação direta ou indireta.
    /// </summary>
    property CNPJProd: string read FCNPJProd write SetCNPJProd;
    property CNPJProdHasValue: Boolean read FCNPJProdHasValue write FCNPJProdHasValue;
    /// <summary>
    /// Código do selo de controle do IPI.
    /// </summary>
    property cSelo: string read FcSelo write SetcSelo;
    property cSeloHasValue: Boolean read FcSeloHasValue write FcSeloHasValue;
    /// <summary>
    /// Quantidade de selo de controle do IPI.
    /// </summary>
    property qSelo: Integer read FqSelo write SetqSelo;
    property qSeloHasValue: Boolean read FqSeloHasValue write FqSeloHasValue;
    /// <summary>
    /// Código de Enquadramento Legal do IPI (tabela a ser criada pela RFB).
    /// </summary>
    property cEnq: string read FcEnq write FcEnq;
    property IPITrib: TNfeSefazIPITrib read FIPITrib write SetIPITrib;
    property IPINT: TNfeSefazIPINT read FIPINT write SetIPINT;
  end;
  
  TNfeSefazII = class
  private
    FvBC: Double;
    FvDespAdu: Double;
    FvII: Double;
    FvIOF: Double;
  public
    /// <summary>
    /// Base da BC do Imposto de Importação.
    /// </summary>
    property vBC: Double read FvBC write FvBC;
    /// <summary>
    /// Valor das despesas aduaneiras.
    /// </summary>
    property vDespAdu: Double read FvDespAdu write FvDespAdu;
    /// <summary>
    /// Valor do Imposto de Importação.
    /// </summary>
    property vII: Double read FvII write FvII;
    /// <summary>
    /// Valor do Imposto sobre Operações Financeiras.
    /// </summary>
    property vIOF: Double read FvIOF write FvIOF;
  end;
  
  TNfeSefazISSQN = class
  private
    FvBC: Double;
    FvAliq: Double;
    FvISSQN: Double;
    FcMunFG: string;
    FcListServ: string;
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
    FcServico: string;
    FcServicoHasValue: Boolean;
    FcMun: string;
    FcMunHasValue: Boolean;
    FcPais: string;
    FcPaisHasValue: Boolean;
    FnProcesso: string;
    FnProcessoHasValue: Boolean;
    FindIncentivo: Integer;
    procedure SetvDeducao(const Value: Double);
    procedure SetvOutro(const Value: Double);
    procedure SetvDescIncond(const Value: Double);
    procedure SetvDescCond(const Value: Double);
    procedure SetvISSRet(const Value: Double);
    procedure SetcServico(const Value: string);
    procedure SetcMun(const Value: string);
    procedure SetcPais(const Value: string);
    procedure SetnProcesso(const Value: string);
  public
    /// <summary>
    /// Valor da BC do ISSQN.
    /// </summary>
    property vBC: Double read FvBC write FvBC;
    /// <summary>
    /// Alíquota do ISSQN.
    /// </summary>
    property vAliq: Double read FvAliq write FvAliq;
    /// <summary>
    /// Valor da do ISSQN.
    /// </summary>
    property vISSQN: Double read FvISSQN write FvISSQN;
    /// <summary>
    /// Informar o município de ocorrência do fato gerador do ISSQN. Utilizar a Tabela do IBGE (Anexo VII - Tabela de UF, Município e País). “Atenção, não vincular com os campos B12, C10 ou E10” v2.0.
    /// </summary>
    property cMunFG: string read FcMunFG write FcMunFG;
    /// <summary>
    /// Informar o Item da lista de serviços da LC 116/03 em que se classifica o serviço.
    /// </summary>
    property cListServ: string read FcListServ write FcListServ;
    /// <summary>
    /// Valor dedução para redução da base de cálculo.
    /// </summary>
    property vDeducao: Double read FvDeducao write SetvDeducao;
    property vDeducaoHasValue: Boolean read FvDeducaoHasValue write FvDeducaoHasValue;
    /// <summary>
    /// Valor outras retenções.
    /// </summary>
    property vOutro: Double read FvOutro write SetvOutro;
    property vOutroHasValue: Boolean read FvOutroHasValue write FvOutroHasValue;
    /// <summary>
    /// Valor desconto incondicionado.
    /// </summary>
    property vDescIncond: Double read FvDescIncond write SetvDescIncond;
    property vDescIncondHasValue: Boolean read FvDescIncondHasValue write FvDescIncondHasValue;
    /// <summary>
    /// Valor desconto condicionado.
    /// </summary>
    property vDescCond: Double read FvDescCond write SetvDescCond;
    property vDescCondHasValue: Boolean read FvDescCondHasValue write FvDescCondHasValue;
    /// <summary>
    /// Valor Retenção ISS.
    /// </summary>
    property vISSRet: Double read FvISSRet write SetvISSRet;
    property vISSRetHasValue: Boolean read FvISSRetHasValue write FvISSRetHasValue;
    /// <summary>
    /// Exibilidade do ISS:1-Exigível;2-Não incidente;3-Isenção;4-Exportação;5-Imunidade;6-Exig.Susp. Judicial;7-Exig.Susp. ADM.
    /// </summary>
    property indISS: Integer read FindISS write FindISS;
    /// <summary>
    /// Código do serviço prestado dentro do município.
    /// </summary>
    property cServico: string read FcServico write SetcServico;
    property cServicoHasValue: Boolean read FcServicoHasValue write FcServicoHasValue;
    /// <summary>
    /// Código do Município de Incidência do Imposto.
    /// </summary>
    property cMun: string read FcMun write SetcMun;
    property cMunHasValue: Boolean read FcMunHasValue write FcMunHasValue;
    /// <summary>
    /// Código de Pais.
    /// </summary>
    property cPais: string read FcPais write SetcPais;
    property cPaisHasValue: Boolean read FcPaisHasValue write FcPaisHasValue;
    /// <summary>
    /// Número do Processo administrativo ou judicial de suspenção do processo.
    /// </summary>
    property nProcesso: string read FnProcesso write SetnProcesso;
    property nProcessoHasValue: Boolean read FnProcessoHasValue write FnProcessoHasValue;
    /// <summary>
    /// Indicador de Incentivo Fiscal. 1=Sim; 2=Não.
    /// </summary>
    property indIncentivo: Integer read FindIncentivo write FindIncentivo;
  end;
  
  TNfeSefazPISAliq = class
  private
    FCST: string;
    FvBC: Double;
    FpPIS: Double;
    FvPIS: Double;
  public
    /// <summary>
    /// Código de Situação Tributária do PIS.
    ///  01 – Operação Tributável - Base de Cálculo = Valor da Operação Alíquota Normal (Cumulativo/Não Cumulativo);
    /// 02 - Operação Tributável - Base de Calculo = Valor da Operação (Alíquota Diferenciada);.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Valor da BC do PIS.
    /// </summary>
    property vBC: Double read FvBC write FvBC;
    /// <summary>
    /// Alíquota do PIS (em percentual).
    /// </summary>
    property pPIS: Double read FpPIS write FpPIS;
    /// <summary>
    /// Valor do PIS.
    /// </summary>
    property vPIS: Double read FvPIS write FvPIS;
  end;
  
  TNfeSefazPISQtde = class
  private
    FCST: string;
    FqBCProd: Double;
    FvAliqProd: Double;
    FvPIS: Double;
  public
    /// <summary>
    /// Código de Situação Tributária do PIS.
    /// 03 - Operação Tributável - Base de Calculo = Quantidade Vendida x Alíquota por Unidade de Produto;.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Quantidade Vendida  (NT2011/004).
    /// </summary>
    property qBCProd: Double read FqBCProd write FqBCProd;
    /// <summary>
    /// Alíquota do PIS (em reais) (NT2011/004).
    /// </summary>
    property vAliqProd: Double read FvAliqProd write FvAliqProd;
    /// <summary>
    /// Valor do PIS.
    /// </summary>
    property vPIS: Double read FvPIS write FvPIS;
  end;
  
  TNfeSefazPISNT = class
  private
    FCST: string;
  public
    /// <summary>
    /// Código de Situação Tributária do PIS.
    /// 04 - Operação Tributável - Tributação Monofásica - (Alíquota Zero);
    /// 05 - Operação Tributável (ST);
    /// 06 - Operação Tributável - Alíquota Zero;
    /// 07 - Operação Isenta da contribuição;
    /// 08 - Operação Sem Incidência da contribuição;
    /// 09 - Operação com suspensão da contribuição;.
    /// </summary>
    property CST: string read FCST write FCST;
  end;
  
  TNfeSefazPISOutr = class
  private
    FCST: string;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpPIS: Double;
    FpPISHasValue: Boolean;
    FqBCProd: Double;
    FqBCProdHasValue: Boolean;
    FvAliqProd: Double;
    FvAliqProdHasValue: Boolean;
    FvPIS: Double;
    procedure SetvBC(const Value: Double);
    procedure SetpPIS(const Value: Double);
    procedure SetqBCProd(const Value: Double);
    procedure SetvAliqProd(const Value: Double);
  public
    /// <summary>
    /// Código de Situação Tributária do PIS.
    /// 99 - Outras Operações.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Valor da BC do PIS.
    /// </summary>
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    /// <summary>
    /// Alíquota do PIS (em percentual).
    /// </summary>
    property pPIS: Double read FpPIS write SetpPIS;
    property pPISHasValue: Boolean read FpPISHasValue write FpPISHasValue;
    /// <summary>
    /// Quantidade Vendida (NT2011/004).
    /// </summary>
    property qBCProd: Double read FqBCProd write SetqBCProd;
    property qBCProdHasValue: Boolean read FqBCProdHasValue write FqBCProdHasValue;
    /// <summary>
    /// Alíquota do PIS (em reais) (NT2011/004).
    /// </summary>
    property vAliqProd: Double read FvAliqProd write SetvAliqProd;
    property vAliqProdHasValue: Boolean read FvAliqProdHasValue write FvAliqProdHasValue;
    /// <summary>
    /// Valor do PIS.
    /// </summary>
    property vPIS: Double read FvPIS write FvPIS;
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
    /// <summary>
    /// Código de Situação Tributária do PIS.
    ///  01 – Operação Tributável - Base de Cálculo = Valor da Operação Alíquota Normal (Cumulativo/Não Cumulativo);
    /// 02 - Operação Tributável - Base de Calculo = Valor da Operação (Alíquota Diferenciada);.
    /// </summary>
    property PISAliq: TNfeSefazPISAliq read FPISAliq write SetPISAliq;
    /// <summary>
    /// Código de Situação Tributária do PIS.
    /// 03 - Operação Tributável - Base de Calculo = Quantidade Vendida x Alíquota por Unidade de Produto;.
    /// </summary>
    property PISQtde: TNfeSefazPISQtde read FPISQtde write SetPISQtde;
    /// <summary>
    /// Código de Situação Tributária do PIS.
    /// 04 - Operação Tributável - Tributação Monofásica - (Alíquota Zero);
    /// 06 - Operação Tributável - Alíquota Zero;
    /// 07 - Operação Isenta da contribuição;
    /// 08 - Operação Sem Incidência da contribuição;
    /// 09 - Operação com suspensão da contribuição;.
    /// </summary>
    property PISNT: TNfeSefazPISNT read FPISNT write SetPISNT;
    /// <summary>
    /// Código de Situação Tributária do PIS.
    /// 99 - Outras Operações.
    /// </summary>
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
    FindSomaPISST: Integer;
    FindSomaPISSTHasValue: Boolean;
    procedure SetvBC(const Value: Double);
    procedure SetpPIS(const Value: Double);
    procedure SetqBCProd(const Value: Double);
    procedure SetvAliqProd(const Value: Double);
    procedure SetindSomaPISST(const Value: Integer);
  public
    /// <summary>
    /// Valor da BC do PIS ST.
    /// </summary>
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    /// <summary>
    /// Alíquota do PIS ST (em percentual).
    /// </summary>
    property pPIS: Double read FpPIS write SetpPIS;
    property pPISHasValue: Boolean read FpPISHasValue write FpPISHasValue;
    /// <summary>
    /// Quantidade Vendida.
    /// </summary>
    property qBCProd: Double read FqBCProd write SetqBCProd;
    property qBCProdHasValue: Boolean read FqBCProdHasValue write FqBCProdHasValue;
    /// <summary>
    /// Alíquota do PIS ST (em reais).
    /// </summary>
    property vAliqProd: Double read FvAliqProd write SetvAliqProd;
    property vAliqProdHasValue: Boolean read FvAliqProdHasValue write FvAliqProdHasValue;
    /// <summary>
    /// Valor do PIS ST.
    /// </summary>
    property vPIS: Double read FvPIS write FvPIS;
    /// <summary>
    /// Indica se o valor do PISST compõe o valor total da NF-e.
    /// </summary>
    property indSomaPISST: Integer read FindSomaPISST write SetindSomaPISST;
    property indSomaPISSTHasValue: Boolean read FindSomaPISSTHasValue write FindSomaPISSTHasValue;
  end;
  
  TNfeSefazCOFINSAliq = class
  private
    FCST: string;
    FvBC: Double;
    FpCOFINS: Double;
    FvCOFINS: Double;
  public
    /// <summary>
    /// Código de Situação Tributária do COFINS.
    ///  01 – Operação Tributável - Base de Cálculo = Valor da Operação Alíquota Normal (Cumulativo/Não Cumulativo);
    /// 02 - Operação Tributável - Base de Calculo = Valor da Operação (Alíquota Diferenciada);.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Valor da BC do COFINS.
    /// </summary>
    property vBC: Double read FvBC write FvBC;
    /// <summary>
    /// Alíquota do COFINS (em percentual).
    /// </summary>
    property pCOFINS: Double read FpCOFINS write FpCOFINS;
    /// <summary>
    /// Valor do COFINS.
    /// </summary>
    property vCOFINS: Double read FvCOFINS write FvCOFINS;
  end;
  
  TNfeSefazCOFINSQtde = class
  private
    FCST: string;
    FqBCProd: Double;
    FvAliqProd: Double;
    FvCOFINS: Double;
  public
    /// <summary>
    /// Código de Situação Tributária do COFINS.
    /// 03 - Operação Tributável - Base de Calculo = Quantidade Vendida x Alíquota por Unidade de Produto;.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Quantidade Vendida (NT2011/004).
    /// </summary>
    property qBCProd: Double read FqBCProd write FqBCProd;
    /// <summary>
    /// Alíquota do COFINS (em reais) (NT2011/004).
    /// </summary>
    property vAliqProd: Double read FvAliqProd write FvAliqProd;
    /// <summary>
    /// Valor do COFINS.
    /// </summary>
    property vCOFINS: Double read FvCOFINS write FvCOFINS;
  end;
  
  TNfeSefazCOFINSNT = class
  private
    FCST: string;
  public
    /// <summary>
    /// Código de Situação Tributária do COFINS:
    /// 04 - Operação Tributável - Tributação Monofásica - (Alíquota Zero);
    /// 05 - Operação Tributável (ST);
    /// 06 - Operação Tributável - Alíquota Zero;
    /// 07 - Operação Isenta da contribuição;
    /// 08 - Operação Sem Incidência da contribuição;
    /// 09 - Operação com suspensão da contribuição;.
    /// </summary>
    property CST: string read FCST write FCST;
  end;
  
  TNfeSefazCOFINSOutr = class
  private
    FCST: string;
    FvBC: Double;
    FvBCHasValue: Boolean;
    FpCOFINS: Double;
    FpCOFINSHasValue: Boolean;
    FqBCProd: Double;
    FqBCProdHasValue: Boolean;
    FvAliqProd: Double;
    FvAliqProdHasValue: Boolean;
    FvCOFINS: Double;
    procedure SetvBC(const Value: Double);
    procedure SetpCOFINS(const Value: Double);
    procedure SetqBCProd(const Value: Double);
    procedure SetvAliqProd(const Value: Double);
  public
    /// <summary>
    /// Código de Situação Tributária do COFINS:
    /// 49 - Outras Operações de Saída
    /// 50 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
    /// 51 - Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno
    /// 52 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação
    /// 53 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
    /// 54 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
    /// 55 - Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
    /// 56 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação
    /// 60 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno
    /// 61 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno
    /// 62 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação
    /// 63 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
    /// 64 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
    /// 65 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
    /// 66 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação
    /// 67 - Crédito Presumido - Outras Operações
    /// 70 - Operação de Aquisição sem Direito a Crédito
    /// 71 - Operação de Aquisição com Isenção
    /// 72 - Operação de Aquisição com Suspensão
    /// 73 - Operação de Aquisição a Alíquota Zero
    /// 74 - Operação de Aquisição sem Incidência da Contribuição
    /// 75 - Operação de Aquisição por Substituição Tributária
    /// 98 - Outras Operações de Entrada
    /// 99 - Outras Operações.
    /// </summary>
    property CST: string read FCST write FCST;
    /// <summary>
    /// Valor da BC do COFINS.
    /// </summary>
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    /// <summary>
    /// Alíquota do COFINS (em percentual).
    /// </summary>
    property pCOFINS: Double read FpCOFINS write SetpCOFINS;
    property pCOFINSHasValue: Boolean read FpCOFINSHasValue write FpCOFINSHasValue;
    /// <summary>
    /// Quantidade Vendida (NT2011/004).
    /// </summary>
    property qBCProd: Double read FqBCProd write SetqBCProd;
    property qBCProdHasValue: Boolean read FqBCProdHasValue write FqBCProdHasValue;
    /// <summary>
    /// Alíquota do COFINS (em reais) (NT2011/004).
    /// </summary>
    property vAliqProd: Double read FvAliqProd write SetvAliqProd;
    property vAliqProdHasValue: Boolean read FvAliqProdHasValue write FvAliqProdHasValue;
    /// <summary>
    /// Valor do COFINS.
    /// </summary>
    property vCOFINS: Double read FvCOFINS write FvCOFINS;
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
    /// <summary>
    /// Código de Situação Tributária do COFINS.
    ///  01 – Operação Tributável - Base de Cálculo = Valor da Operação Alíquota Normal (Cumulativo/Não Cumulativo);
    /// 02 - Operação Tributável - Base de Calculo = Valor da Operação (Alíquota Diferenciada);.
    /// </summary>
    property COFINSAliq: TNfeSefazCOFINSAliq read FCOFINSAliq write SetCOFINSAliq;
    /// <summary>
    /// Código de Situação Tributária do COFINS.
    /// 03 - Operação Tributável - Base de Calculo = Quantidade Vendida x Alíquota por Unidade de Produto;.
    /// </summary>
    property COFINSQtde: TNfeSefazCOFINSQtde read FCOFINSQtde write SetCOFINSQtde;
    /// <summary>
    /// Código de Situação Tributária do COFINS:
    /// 04 - Operação Tributável - Tributação Monofásica - (Alíquota Zero);
    /// 06 - Operação Tributável - Alíquota Zero;
    /// 07 - Operação Isenta da contribuição;
    /// 08 - Operação Sem Incidência da contribuição;
    /// 09 - Operação com suspensão da contribuição;.
    /// </summary>
    property COFINSNT: TNfeSefazCOFINSNT read FCOFINSNT write SetCOFINSNT;
    /// <summary>
    /// Código de Situação Tributária do COFINS:
    /// 49 - Outras Operações de Saída
    /// 50 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno
    /// 51 - Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno
    /// 52 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação
    /// 53 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
    /// 54 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
    /// 55 - Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
    /// 56 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação
    /// 60 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno
    /// 61 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno
    /// 62 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação
    /// 63 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno
    /// 64 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação
    /// 65 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação
    /// 66 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação
    /// 67 - Crédito Presumido - Outras Operações
    /// 70 - Operação de Aquisição sem Direito a Crédito
    /// 71 - Operação de Aquisição com Isenção
    /// 72 - Operação de Aquisição com Suspensão
    /// 73 - Operação de Aquisição a Alíquota Zero
    /// 74 - Operação de Aquisição sem Incidência da Contribuição
    /// 75 - Operação de Aquisição por Substituição Tributária
    /// 98 - Outras Operações de Entrada
    /// 99 - Outras Operações.
    /// </summary>
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
    FindSomaCOFINSST: Integer;
    FindSomaCOFINSSTHasValue: Boolean;
    procedure SetvBC(const Value: Double);
    procedure SetpCOFINS(const Value: Double);
    procedure SetqBCProd(const Value: Double);
    procedure SetvAliqProd(const Value: Double);
    procedure SetindSomaCOFINSST(const Value: Integer);
  public
    /// <summary>
    /// Valor da BC do COFINS ST.
    /// </summary>
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    /// <summary>
    /// Alíquota do COFINS ST(em percentual).
    /// </summary>
    property pCOFINS: Double read FpCOFINS write SetpCOFINS;
    property pCOFINSHasValue: Boolean read FpCOFINSHasValue write FpCOFINSHasValue;
    /// <summary>
    /// Quantidade Vendida.
    /// </summary>
    property qBCProd: Double read FqBCProd write SetqBCProd;
    property qBCProdHasValue: Boolean read FqBCProdHasValue write FqBCProdHasValue;
    /// <summary>
    /// Alíquota do COFINS ST(em reais).
    /// </summary>
    property vAliqProd: Double read FvAliqProd write SetvAliqProd;
    property vAliqProdHasValue: Boolean read FvAliqProdHasValue write FvAliqProdHasValue;
    /// <summary>
    /// Valor do COFINS ST.
    /// </summary>
    property vCOFINS: Double read FvCOFINS write FvCOFINS;
    /// <summary>
    /// Indica se o valor da COFINS ST compõe o valor total da NFe.
    /// </summary>
    property indSomaCOFINSST: Integer read FindSomaCOFINSST write SetindSomaCOFINSST;
    property indSomaCOFINSSTHasValue: Boolean read FindSomaCOFINSSTHasValue write FindSomaCOFINSSTHasValue;
  end;
  
  TNfeSefazICMSUFDest = class
  private
    FvBCUFDest: Double;
    FvBCFCPUFDest: Double;
    FvBCFCPUFDestHasValue: Boolean;
    FpFCPUFDest: Double;
    FpFCPUFDestHasValue: Boolean;
    FpICMSUFDest: Double;
    FpICMSInter: Double;
    FpICMSInterPart: Double;
    FvFCPUFDest: Double;
    FvFCPUFDestHasValue: Boolean;
    FvICMSUFDest: Double;
    FvICMSUFRemet: Double;
    procedure SetvBCFCPUFDest(const Value: Double);
    procedure SetpFCPUFDest(const Value: Double);
    procedure SetvFCPUFDest(const Value: Double);
  public
    /// <summary>
    /// Valor da Base de Cálculo do ICMS na UF do destinatário.
    /// </summary>
    property vBCUFDest: Double read FvBCUFDest write FvBCUFDest;
    /// <summary>
    /// Valor da Base de Cálculo do FCP na UF do destinatário.
    /// </summary>
    property vBCFCPUFDest: Double read FvBCFCPUFDest write SetvBCFCPUFDest;
    property vBCFCPUFDestHasValue: Boolean read FvBCFCPUFDestHasValue write FvBCFCPUFDestHasValue;
    /// <summary>
    /// Percentual adicional inserido na alíquota interna da UF de destino, relativo ao Fundo de Combate à Pobreza (FCP) naquela UF.
    /// </summary>
    property pFCPUFDest: Double read FpFCPUFDest write SetpFCPUFDest;
    property pFCPUFDestHasValue: Boolean read FpFCPUFDestHasValue write FpFCPUFDestHasValue;
    /// <summary>
    /// Alíquota adotada nas operações internas na UF do destinatário para o produto / mercadoria.
    /// </summary>
    property pICMSUFDest: Double read FpICMSUFDest write FpICMSUFDest;
    /// <summary>
    /// Alíquota interestadual das UF envolvidas: - 4%% alíquota interestadual para produtos importados; - 7%% para os Estados de origem do Sul e Sudeste (exceto ES), destinado para os Estados do Norte e Nordeste  ou ES; - 12%% para os demais casos.
    /// </summary>
    property pICMSInter: Double read FpICMSInter write FpICMSInter;
    /// <summary>
    /// Percentual de partilha para a UF do destinatário: - 40%% em 2016; - 60%% em 2017; - 80%% em 2018; - 100%% a partir de 2019.
    /// </summary>
    property pICMSInterPart: Double read FpICMSInterPart write FpICMSInterPart;
    /// <summary>
    /// Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) da UF de destino.
    /// </summary>
    property vFCPUFDest: Double read FvFCPUFDest write SetvFCPUFDest;
    property vFCPUFDestHasValue: Boolean read FvFCPUFDestHasValue write FvFCPUFDestHasValue;
    /// <summary>
    /// Valor do ICMS de partilha para a UF do destinatário.
    /// </summary>
    property vICMSUFDest: Double read FvICMSUFDest write FvICMSUFDest;
    /// <summary>
    /// Valor do ICMS de partilha para a UF do remetente. Nota: A partir de 2019, este valor será zero.
    /// </summary>
    property vICMSUFRemet: Double read FvICMSUFRemet write FvICMSUFRemet;
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
    /// <summary>
    /// Valor estimado total de impostos federais, estaduais e municipais.
    /// </summary>
    property vTotTrib: Double read FvTotTrib write SetvTotTrib;
    property vTotTribHasValue: Boolean read FvTotTribHasValue write FvTotTribHasValue;
    /// <summary>
    /// Dados do ICMS Normal e ST.
    /// </summary>
    property ICMS: TNfeSefazICMS read FICMS write SetICMS;
    property IPI: TNfeSefazIpi read FIPI write SetIPI;
    /// <summary>
    /// Dados do Imposto de Importação.
    /// </summary>
    property II: TNfeSefazII read FII write SetII;
    /// <summary>
    /// ISSQN.
    /// </summary>
    property ISSQN: TNfeSefazISSQN read FISSQN write SetISSQN;
    /// <summary>
    /// Dados do PIS.
    /// </summary>
    property PIS: TNfeSefazPIS read FPIS write SetPIS;
    /// <summary>
    /// Dados do PIS Substituição Tributária.
    /// </summary>
    property PISST: TNfeSefazPISST read FPISST write SetPISST;
    /// <summary>
    /// Dados do COFINS.
    /// </summary>
    property COFINS: TNfeSefazCOFINS read FCOFINS write SetCOFINS;
    /// <summary>
    /// Dados do COFINS da
    /// Substituição Tributaria;.
    /// </summary>
    property COFINSST: TNfeSefazCOFINSST read FCOFINSST write SetCOFINSST;
    /// <summary>
    /// Grupo a ser informado nas vendas interestarduais para consumidor final, não contribuinte de ICMS.
    /// </summary>
    property ICMSUFDest: TNfeSefazICMSUFDest read FICMSUFDest write SetICMSUFDest;
  end;
  
  TNfeSefazImpostoDevolIPI = class
  private
    FvIPIDevol: Double;
  public
    /// <summary>
    /// Valor do IPI devolvido.
    /// </summary>
    property vIPIDevol: Double read FvIPIDevol write FvIPIDevol;
  end;
  
  TNfeSefazImpostoDevol = class
  private
    FpDevol: Double;
    FIPI: TNfeSefazImpostoDevolIPI;
    procedure SetIPI(const Value: TNfeSefazImpostoDevolIPI);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Percentual de mercadoria devolvida.
    /// </summary>
    property pDevol: Double read FpDevol write FpDevol;
    /// <summary>
    /// Informação de IPI devolvido.
    /// </summary>
    property IPI: TNfeSefazImpostoDevolIPI read FIPI write SetIPI;
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
  
  TNfeSefazObsItem = class
  private
    FobsCont: TNfeSefazObsCont;
    FobsFisco: TNfeSefazObsFisco;
    procedure SetobsCont(const Value: TNfeSefazObsCont);
    procedure SetobsFisco(const Value: TNfeSefazObsFisco);
  public
    destructor Destroy; override;
    /// <summary>
    /// Grupo de observações de uso livre (para o item da NF-e).
    /// </summary>
    property obsCont: TNfeSefazObsCont read FobsCont write SetobsCont;
    /// <summary>
    /// Grupo de observações de uso livre (para o item da NF-e).
    /// </summary>
    property obsFisco: TNfeSefazObsFisco read FobsFisco write SetobsFisco;
  end;
  
  TNfeSefazDet = class
  private
    FnItem: Integer;
    Fprod: TNfeSefazProd;
    Fimposto: TNfeSefazImposto;
    FimpostoDevol: TNfeSefazImpostoDevol;
    FinfAdProd: string;
    FinfAdProdHasValue: Boolean;
    FobsItem: TNfeSefazObsItem;
    procedure Setprod(const Value: TNfeSefazProd);
    procedure Setimposto(const Value: TNfeSefazImposto);
    procedure SetimpostoDevol(const Value: TNfeSefazImpostoDevol);
    procedure SetinfAdProd(const Value: string);
    procedure SetobsItem(const Value: TNfeSefazObsItem);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Número do item do NF.
    /// </summary>
    property nItem: Integer read FnItem write FnItem;
    /// <summary>
    /// Dados dos produtos e serviços da NF-e.
    /// </summary>
    property prod: TNfeSefazProd read Fprod write Setprod;
    /// <summary>
    /// Tributos incidentes nos produtos ou serviços da NF-e.
    /// </summary>
    property imposto: TNfeSefazImposto read Fimposto write Setimposto;
    property impostoDevol: TNfeSefazImpostoDevol read FimpostoDevol write SetimpostoDevol;
    /// <summary>
    /// Informações adicionais do produto (norma referenciada, informações complementares, etc).
    /// </summary>
    property infAdProd: string read FinfAdProd write SetinfAdProd;
    property infAdProdHasValue: Boolean read FinfAdProdHasValue write FinfAdProdHasValue;
    /// <summary>
    /// Grupo de observações de uso livre (para o item da NF-e).
    /// </summary>
    property obsItem: TNfeSefazObsItem read FobsItem write SetobsItem;
  end;
  
  TNfeSefazDetList = class(TObjectList<TNfeSefazDet>)
  end;
  
  TNfeSefazICMSTot = class
  private
    FvBC: Double;
    FvICMS: Double;
    FvICMSDeson: Double;
    FvFCPUFDest: Double;
    FvFCPUFDestHasValue: Boolean;
    FvICMSUFDest: Double;
    FvICMSUFDestHasValue: Boolean;
    FvICMSUFRemet: Double;
    FvICMSUFRemetHasValue: Boolean;
    FvFCP: Double;
    FvBCST: Double;
    FvST: Double;
    FvFCPST: Double;
    FvFCPSTRet: Double;
    FvProd: Double;
    FvFrete: Double;
    FvSeg: Double;
    FvDesc: Double;
    FvII: Double;
    FvIPI: Double;
    FvIPIDevol: Double;
    FvPIS: Double;
    FvCOFINS: Double;
    FvOutro: Double;
    FvNF: Double;
    FvTotTrib: Double;
    FvTotTribHasValue: Boolean;
    procedure SetvFCPUFDest(const Value: Double);
    procedure SetvICMSUFDest(const Value: Double);
    procedure SetvICMSUFRemet(const Value: Double);
    procedure SetvTotTrib(const Value: Double);
  public
    /// <summary>
    /// BC do ICMS.
    /// </summary>
    property vBC: Double read FvBC write FvBC;
    /// <summary>
    /// Valor Total do ICMS.
    /// </summary>
    property vICMS: Double read FvICMS write FvICMS;
    /// <summary>
    /// Valor Total do ICMS desonerado.
    /// </summary>
    property vICMSDeson: Double read FvICMSDeson write FvICMSDeson;
    /// <summary>
    /// Valor total do ICMS relativo ao Fundo de Combate à Pobreza (FCP) para a UF de destino.
    /// </summary>
    property vFCPUFDest: Double read FvFCPUFDest write SetvFCPUFDest;
    property vFCPUFDestHasValue: Boolean read FvFCPUFDestHasValue write FvFCPUFDestHasValue;
    /// <summary>
    /// Valor total do ICMS de partilha para a UF do destinatário.
    /// </summary>
    property vICMSUFDest: Double read FvICMSUFDest write SetvICMSUFDest;
    property vICMSUFDestHasValue: Boolean read FvICMSUFDestHasValue write FvICMSUFDestHasValue;
    /// <summary>
    /// Valor total do ICMS de partilha para a UF do remetente.
    /// </summary>
    property vICMSUFRemet: Double read FvICMSUFRemet write SetvICMSUFRemet;
    property vICMSUFRemetHasValue: Boolean read FvICMSUFRemetHasValue write FvICMSUFRemetHasValue;
    /// <summary>
    /// Valor Total do FCP (Fundo de Combate à Pobreza).
    /// </summary>
    property vFCP: Double read FvFCP write FvFCP;
    /// <summary>
    /// BC do ICMS ST.
    /// </summary>
    property vBCST: Double read FvBCST write FvBCST;
    /// <summary>
    /// Valor Total do ICMS ST.
    /// </summary>
    property vST: Double read FvST write FvST;
    /// <summary>
    /// Valor Total do FCP (Fundo de Combate à Pobreza) retido por substituição tributária.
    /// </summary>
    property vFCPST: Double read FvFCPST write FvFCPST;
    /// <summary>
    /// Valor Total do FCP (Fundo de Combate à Pobreza) retido anteriormente por substituição tributária.
    /// </summary>
    property vFCPSTRet: Double read FvFCPSTRet write FvFCPSTRet;
    /// <summary>
    /// Valor Total dos produtos e serviços.
    /// </summary>
    property vProd: Double read FvProd write FvProd;
    /// <summary>
    /// Valor Total do Frete.
    /// </summary>
    property vFrete: Double read FvFrete write FvFrete;
    /// <summary>
    /// Valor Total do Seguro.
    /// </summary>
    property vSeg: Double read FvSeg write FvSeg;
    /// <summary>
    /// Valor Total do Desconto.
    /// </summary>
    property vDesc: Double read FvDesc write FvDesc;
    /// <summary>
    /// Valor Total do II.
    /// </summary>
    property vII: Double read FvII write FvII;
    /// <summary>
    /// Valor Total do IPI.
    /// </summary>
    property vIPI: Double read FvIPI write FvIPI;
    /// <summary>
    /// Valor Total do IPI devolvido. Deve ser informado quando preenchido o Grupo Tributos Devolvidos na emissão de nota finNFe=4 (devolução) nas operações com não contribuintes do IPI. Corresponde ao total da soma dos campos id: UA04.
    /// </summary>
    property vIPIDevol: Double read FvIPIDevol write FvIPIDevol;
    /// <summary>
    /// Valor do PIS.
    /// </summary>
    property vPIS: Double read FvPIS write FvPIS;
    /// <summary>
    /// Valor do COFINS.
    /// </summary>
    property vCOFINS: Double read FvCOFINS write FvCOFINS;
    /// <summary>
    /// Outras Despesas acessórias.
    /// </summary>
    property vOutro: Double read FvOutro write FvOutro;
    /// <summary>
    /// Valor Total da NF-e.
    /// </summary>
    property vNF: Double read FvNF write FvNF;
    /// <summary>
    /// Valor estimado total de impostos federais, estaduais e municipais.
    /// </summary>
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
    procedure SetvDeducao(const Value: Double);
    procedure SetvOutro(const Value: Double);
    procedure SetvDescIncond(const Value: Double);
    procedure SetvDescCond(const Value: Double);
    procedure SetvISSRet(const Value: Double);
    procedure SetcRegTrib(const Value: Integer);
  public
    /// <summary>
    /// Valor Total dos Serviços sob não-incidência ou não tributados pelo ICMS.
    /// </summary>
    property vServ: Double read FvServ write SetvServ;
    property vServHasValue: Boolean read FvServHasValue write FvServHasValue;
    /// <summary>
    /// Base de Cálculo do ISS.
    /// </summary>
    property vBC: Double read FvBC write SetvBC;
    property vBCHasValue: Boolean read FvBCHasValue write FvBCHasValue;
    /// <summary>
    /// Valor Total do ISS.
    /// </summary>
    property vISS: Double read FvISS write SetvISS;
    property vISSHasValue: Boolean read FvISSHasValue write FvISSHasValue;
    /// <summary>
    /// Valor do PIS sobre serviços.
    /// </summary>
    property vPIS: Double read FvPIS write SetvPIS;
    property vPISHasValue: Boolean read FvPISHasValue write FvPISHasValue;
    /// <summary>
    /// Valor do COFINS sobre serviços.
    /// </summary>
    property vCOFINS: Double read FvCOFINS write SetvCOFINS;
    property vCOFINSHasValue: Boolean read FvCOFINSHasValue write FvCOFINSHasValue;
    /// <summary>
    /// Data da prestação do serviço  (AAAA-MM-DD).
    /// </summary>
    property dCompet: TDate read FdCompet write FdCompet;
    /// <summary>
    /// Valor dedução para redução da base de cálculo.
    /// </summary>
    property vDeducao: Double read FvDeducao write SetvDeducao;
    property vDeducaoHasValue: Boolean read FvDeducaoHasValue write FvDeducaoHasValue;
    /// <summary>
    /// Valor outras retenções.
    /// </summary>
    property vOutro: Double read FvOutro write SetvOutro;
    property vOutroHasValue: Boolean read FvOutroHasValue write FvOutroHasValue;
    /// <summary>
    /// Valor desconto incondicionado.
    /// </summary>
    property vDescIncond: Double read FvDescIncond write SetvDescIncond;
    property vDescIncondHasValue: Boolean read FvDescIncondHasValue write FvDescIncondHasValue;
    /// <summary>
    /// Valor desconto condicionado.
    /// </summary>
    property vDescCond: Double read FvDescCond write SetvDescCond;
    property vDescCondHasValue: Boolean read FvDescCondHasValue write FvDescCondHasValue;
    /// <summary>
    /// Valor Total Retenção ISS.
    /// </summary>
    property vISSRet: Double read FvISSRet write SetvISSRet;
    property vISSRetHasValue: Boolean read FvISSRetHasValue write FvISSRetHasValue;
    /// <summary>
    /// Código do regime especial de tributação.
    /// </summary>
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
    /// <summary>
    /// Valor Retido de PIS.
    /// </summary>
    property vRetPIS: Double read FvRetPIS write SetvRetPIS;
    property vRetPISHasValue: Boolean read FvRetPISHasValue write FvRetPISHasValue;
    /// <summary>
    /// Valor Retido de COFINS.
    /// </summary>
    property vRetCOFINS: Double read FvRetCOFINS write SetvRetCOFINS;
    property vRetCOFINSHasValue: Boolean read FvRetCOFINSHasValue write FvRetCOFINSHasValue;
    /// <summary>
    /// Valor Retido de CSLL.
    /// </summary>
    property vRetCSLL: Double read FvRetCSLL write SetvRetCSLL;
    property vRetCSLLHasValue: Boolean read FvRetCSLLHasValue write FvRetCSLLHasValue;
    /// <summary>
    /// Base de Cálculo do IRRF.
    /// </summary>
    property vBCIRRF: Double read FvBCIRRF write SetvBCIRRF;
    property vBCIRRFHasValue: Boolean read FvBCIRRFHasValue write FvBCIRRFHasValue;
    /// <summary>
    /// Valor Retido de IRRF.
    /// </summary>
    property vIRRF: Double read FvIRRF write SetvIRRF;
    property vIRRFHasValue: Boolean read FvIRRFHasValue write FvIRRFHasValue;
    /// <summary>
    /// Base de Cálculo da Retenção da Previdêncica Social.
    /// </summary>
    property vBCRetPrev: Double read FvBCRetPrev write SetvBCRetPrev;
    property vBCRetPrevHasValue: Boolean read FvBCRetPrevHasValue write FvBCRetPrevHasValue;
    /// <summary>
    /// Valor da Retenção da Previdêncica Social.
    /// </summary>
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Totais referentes ao ICMS.
    /// </summary>
    property ICMSTot: TNfeSefazICMSTot read FICMSTot write SetICMSTot;
    /// <summary>
    /// Totais referentes ao ISSQN.
    /// </summary>
    property ISSQNtot: TNfeSefazISSQNtot read FISSQNtot write SetISSQNtot;
    /// <summary>
    /// Retenção de Tributos Federais.
    /// </summary>
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
    /// <summary>
    /// CNPJ do transportador.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// CPF do transportador.
    /// </summary>
    property CPF: string read FCPF write SetCPF;
    property CPFHasValue: Boolean read FCPFHasValue write FCPFHasValue;
    /// <summary>
    /// Razão Social ou nome do transportador.
    /// </summary>
    property xNome: string read FxNome write SetxNome;
    property xNomeHasValue: Boolean read FxNomeHasValue write FxNomeHasValue;
    /// <summary>
    /// Inscrição Estadual (v2.0).
    /// </summary>
    property IE: string read FIE write SetIE;
    property IEHasValue: Boolean read FIEHasValue write FIEHasValue;
    /// <summary>
    /// Endereço completo.
    /// </summary>
    property xEnder: string read FxEnder write SetxEnder;
    property xEnderHasValue: Boolean read FxEnderHasValue write FxEnderHasValue;
    /// <summary>
    /// Nome do munícipio.
    /// </summary>
    property xMun: string read FxMun write SetxMun;
    property xMunHasValue: Boolean read FxMunHasValue write FxMunHasValue;
    /// <summary>
    /// Sigla da UF.
    /// </summary>
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
  end;
  
  TNfeSefazRetTransp = class
  private
    FvServ: Double;
    FvBCRet: Double;
    FpICMSRet: Double;
    FvICMSRet: Double;
    FCFOP: string;
    FcMunFG: string;
  public
    /// <summary>
    /// Valor do Serviço.
    /// </summary>
    property vServ: Double read FvServ write FvServ;
    /// <summary>
    /// BC da Retenção do ICMS.
    /// </summary>
    property vBCRet: Double read FvBCRet write FvBCRet;
    /// <summary>
    /// Alíquota da Retenção.
    /// </summary>
    property pICMSRet: Double read FpICMSRet write FpICMSRet;
    /// <summary>
    /// Valor do ICMS Retido.
    /// </summary>
    property vICMSRet: Double read FvICMSRet write FvICMSRet;
    /// <summary>
    /// Código Fiscal de Operações e Prestações.
    /// </summary>
    property CFOP: string read FCFOP write FCFOP;
    /// <summary>
    /// Código do Município de Ocorrência do Fato Gerador (utilizar a tabela do IBGE).
    /// </summary>
    property cMunFG: string read FcMunFG write FcMunFG;
  end;
  
  TNfeSefazVeiculo = class
  private
    Fplaca: string;
    FUF: string;
    FUFHasValue: Boolean;
    FRNTC: string;
    FRNTCHasValue: Boolean;
    procedure SetUF(const Value: string);
    procedure SetRNTC(const Value: string);
  public
    /// <summary>
    /// Placa do veículo (NT2011/004).
    /// </summary>
    property placa: string read Fplaca write Fplaca;
    /// <summary>
    /// Sigla da UF.
    /// </summary>
    property UF: string read FUF write SetUF;
    property UFHasValue: Boolean read FUFHasValue write FUFHasValue;
    /// <summary>
    /// Registro Nacional de Transportador de Carga (ANTT).
    /// </summary>
    property RNTC: string read FRNTC write SetRNTC;
    property RNTCHasValue: Boolean read FRNTCHasValue write FRNTCHasValue;
  end;
  
  TNfeSefazVeiculoList = class(TObjectList<TNfeSefazVeiculo>)
  end;
  
  TNfeSefazLacres = class
  private
    FnLacre: string;
  public
    /// <summary>
    /// Número dos Lacres.
    /// </summary>
    property nLacre: string read FnLacre write FnLacre;
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
    /// <summary>
    /// Quantidade de volumes transportados.
    /// </summary>
    property qVol: Integer read FqVol write SetqVol;
    property qVolHasValue: Boolean read FqVolHasValue write FqVolHasValue;
    /// <summary>
    /// Espécie dos volumes transportados.
    /// </summary>
    property esp: string read Fesp write Setesp;
    property espHasValue: Boolean read FespHasValue write FespHasValue;
    /// <summary>
    /// Marca dos volumes transportados.
    /// </summary>
    property marca: string read Fmarca write Setmarca;
    property marcaHasValue: Boolean read FmarcaHasValue write FmarcaHasValue;
    /// <summary>
    /// Numeração dos volumes transportados.
    /// </summary>
    property nVol: string read FnVol write SetnVol;
    property nVolHasValue: Boolean read FnVolHasValue write FnVolHasValue;
    /// <summary>
    /// Peso líquido (em kg).
    /// </summary>
    property pesoL: Double read FpesoL write SetpesoL;
    property pesoLHasValue: Boolean read FpesoLHasValue write FpesoLHasValue;
    /// <summary>
    /// Peso bruto (em kg).
    /// </summary>
    property pesoB: Double read FpesoB write SetpesoB;
    property pesoBHasValue: Boolean read FpesoBHasValue write FpesoBHasValue;
    property lacres: TNfeSefazLacresList read Flacres write Setlacres;
  end;
  
  TNfeSefazVolList = class(TObjectList<TNfeSefazVol>)
  end;
  
  TNfeSefazTransp = class
  private
    FmodFrete: Integer;
    Ftransporta: TNfeSefazTransporta;
    FretTransp: TNfeSefazRetTransp;
    FveicTransp: TNfeSefazVeiculo;
    Freboque: TNfeSefazVeiculoList;
    Fvagao: string;
    FvagaoHasValue: Boolean;
    Fbalsa: string;
    FbalsaHasValue: Boolean;
    Fvol: TNfeSefazVolList;
    procedure Settransporta(const Value: TNfeSefazTransporta);
    procedure SetretTransp(const Value: TNfeSefazRetTransp);
    procedure SetveicTransp(const Value: TNfeSefazVeiculo);
    procedure Setreboque(const Value: TNfeSefazVeiculoList);
    procedure Setvagao(const Value: string);
    procedure Setbalsa(const Value: string);
    procedure Setvol(const Value: TNfeSefazVolList);
  public
    destructor Destroy; override;
    /// <summary>
    /// Modalidade do frete
    /// 0- Contratação do Frete por conta do Remetente (CIF);
    /// 1- Contratação do Frete por conta do destinatário/remetente (FOB);
    /// 2- Contratação do Frete por conta de terceiros;
    /// 3- Transporte próprio por conta do remetente;
    /// 4- Transporte próprio por conta do destinatário;
    /// 9- Sem Ocorrência de transporte.
    /// </summary>
    property modFrete: Integer read FmodFrete write FmodFrete;
    /// <summary>
    /// Dados do transportador.
    /// </summary>
    property transporta: TNfeSefazTransporta read Ftransporta write Settransporta;
    /// <summary>
    /// Dados da retenção  ICMS do Transporte.
    /// </summary>
    property retTransp: TNfeSefazRetTransp read FretTransp write SetretTransp;
    /// <summary>
    /// Dados do veículo.
    /// </summary>
    property veicTransp: TNfeSefazVeiculo read FveicTransp write SetveicTransp;
    /// <summary>
    /// Dados do reboque/Dolly (v2.0).
    /// </summary>
    property reboque: TNfeSefazVeiculoList read Freboque write Setreboque;
    /// <summary>
    /// Identificação do vagão (v2.0).
    /// </summary>
    property vagao: string read Fvagao write Setvagao;
    property vagaoHasValue: Boolean read FvagaoHasValue write FvagaoHasValue;
    /// <summary>
    /// Identificação da balsa (v2.0).
    /// </summary>
    property balsa: string read Fbalsa write Setbalsa;
    property balsaHasValue: Boolean read FbalsaHasValue write FbalsaHasValue;
    /// <summary>
    /// Dados dos volumes.
    /// </summary>
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
    /// <summary>
    /// Número da fatura.
    /// </summary>
    property nFat: string read FnFat write SetnFat;
    property nFatHasValue: Boolean read FnFatHasValue write FnFatHasValue;
    /// <summary>
    /// Valor original da fatura.
    /// </summary>
    property vOrig: Double read FvOrig write SetvOrig;
    property vOrigHasValue: Boolean read FvOrigHasValue write FvOrigHasValue;
    /// <summary>
    /// Valor do desconto da fatura.
    /// </summary>
    property vDesc: Double read FvDesc write SetvDesc;
    property vDescHasValue: Boolean read FvDescHasValue write FvDescHasValue;
    /// <summary>
    /// Valor líquido da fatura.
    /// </summary>
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
    procedure SetnDup(const Value: string);
    procedure SetdVenc(const Value: TDate);
  public
    /// <summary>
    /// Número da duplicata.
    /// </summary>
    property nDup: string read FnDup write SetnDup;
    property nDupHasValue: Boolean read FnDupHasValue write FnDupHasValue;
    /// <summary>
    /// Data de vencimento da duplicata (AAAA-MM-DD).
    /// </summary>
    property dVenc: TDate read FdVenc write SetdVenc;
    property dVencHasValue: Boolean read FdVencHasValue write FdVencHasValue;
    /// <summary>
    /// Valor da duplicata.
    /// </summary>
    property vDup: Double read FvDup write FvDup;
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
    /// <summary>
    /// Dados da fatura.
    /// </summary>
    property fat: TNfeSefazFat read Ffat write Setfat;
    /// <summary>
    /// Dados das duplicatas NT 2011/004.
    /// </summary>
    property dup: TNfeSefazDupList read Fdup write Setdup;
  end;
  
  TNfeSefazCard = class
  private
    FtpIntegra: Integer;
    FCNPJ: string;
    FCNPJHasValue: Boolean;
    FtBand: string;
    FtBandHasValue: Boolean;
    FcAut: string;
    FcAutHasValue: Boolean;
    procedure SetCNPJ(const Value: string);
    procedure SettBand(const Value: string);
    procedure SetcAut(const Value: string);
  public
    /// <summary>
    /// Tipo de Integração do processo de pagamento com o sistema de automação da empresa/ 
    /// 																1=Pagamento integrado com o sistema de automação da empresa Ex. equipamento TEF , Comercio Eletronico
    /// 																2=Pagamento não integrado com o sistema de automação da empresa Ex: equipamento POS.
    /// </summary>
    property tpIntegra: Integer read FtpIntegra write FtpIntegra;
    /// <summary>
    /// CNPJ da instituição de pagamento.
    /// </summary>
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJHasValue: Boolean read FCNPJHasValue write FCNPJHasValue;
    /// <summary>
    /// Bandeira da operadora de cartão.
    /// </summary>
    property tBand: string read FtBand write SettBand;
    property tBandHasValue: Boolean read FtBandHasValue write FtBandHasValue;
    /// <summary>
    /// Número de autorização da operação cartão de crédito/débito.
    /// </summary>
    property cAut: string read FcAut write SetcAut;
    property cAutHasValue: Boolean read FcAutHasValue write FcAutHasValue;
  end;
  
  TNfeSefazDetPag = class
  private
    FindPag: Integer;
    FindPagHasValue: Boolean;
    FtPag: string;
    FxPag: string;
    FxPagHasValue: Boolean;
    FvPag: Double;
    Fcard: TNfeSefazCard;
    procedure SetindPag(const Value: Integer);
    procedure SetxPag(const Value: string);
    procedure Setcard(const Value: TNfeSefazCard);
  public
    destructor Destroy; override;
    /// <summary>
    /// Indicador da Forma de Pagamento:0-Pagamento à Vista;1-Pagamento à Prazo;.
    /// </summary>
    property indPag: Integer read FindPag write SetindPag;
    property indPagHasValue: Boolean read FindPagHasValue write FindPagHasValue;
    /// <summary>
    /// Forma de Pagamento:.
    /// </summary>
    property tPag: string read FtPag write FtPag;
    /// <summary>
    /// Descrição do Meio de Pagamento.
    /// </summary>
    property xPag: string read FxPag write SetxPag;
    property xPagHasValue: Boolean read FxPagHasValue write FxPagHasValue;
    /// <summary>
    /// Valor do Pagamento. Esta tag poderá ser omitida quando a tag tPag=90 (Sem Pagamento), caso contrário deverá ser preenchida.
    /// </summary>
    property vPag: Double read FvPag write FvPag;
    /// <summary>
    /// Grupo de Cartões.
    /// </summary>
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Grupo de detalhamento da forma de pagamento.
    /// </summary>
    property detPag: TNfeSefazDetPagList read FdetPag write SetdetPag;
    /// <summary>
    /// Valor do Troco.
    /// </summary>
    property vTroco: Double read FvTroco write SetvTroco;
    property vTrocoHasValue: Boolean read FvTrocoHasValue write FvTrocoHasValue;
  end;
  
  TNfeSefazInfIntermed = class
  private
    FCNPJ: string;
    FidCadIntTran: string;
  public
    /// <summary>
    /// CNPJ do Intermediador da Transação (agenciador, plataforma de delivery, marketplace e similar) de serviços e de negócios.
    /// </summary>
    property CNPJ: string read FCNPJ write FCNPJ;
    /// <summary>
    /// Identificador cadastrado no intermediador.
    /// </summary>
    property idCadIntTran: string read FidCadIntTran write FidCadIntTran;
  end;
  
  TNfeSefazInfAdicObsCont = class
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
  
  TNfeSefazInfAdicObsContList = class(TObjectList<TNfeSefazInfAdicObsCont>)
  end;
  
  TNfeSefazInfAdicObsFisco = class
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
  
  TNfeSefazInfAdicObsFiscoList = class(TObjectList<TNfeSefazInfAdicObsFisco>)
  end;
  
  TNfeSefazProcRef = class
  private
    FnProc: string;
    FindProc: Integer;
    FtpAto: string;
    FtpAtoHasValue: Boolean;
    procedure SettpAto(const Value: string);
  public
    /// <summary>
    /// Indentificador do processo ou ato
    /// concessório.
    /// </summary>
    property nProc: string read FnProc write FnProc;
    /// <summary>
    /// Origem do processo, informar com:
    /// 0 - SEFAZ;
    /// 1 - Justiça Federal;
    /// 2 - Justiça Estadual;
    /// 3 - Secex/RFB;
    /// 9 - Outros.
    /// </summary>
    property indProc: Integer read FindProc write FindProc;
    /// <summary>
    /// Tipo do ato concessório
    /// 														Para origem do Processo na SEFAZ (indProc=0), informar o
    /// tipo de ato concessório:
    /// 08=Termo de Acordo;
    /// 10=Regime Especial;
    /// 12=Autorização específica;.
    /// </summary>
    property tpAto: string read FtpAto write SettpAto;
    property tpAtoHasValue: Boolean read FtpAtoHasValue write FtpAtoHasValue;
  end;
  
  TNfeSefazProcRefList = class(TObjectList<TNfeSefazProcRef>)
  end;
  
  TNfeSefazInfAdic = class
  private
    FinfAdFisco: string;
    FinfAdFiscoHasValue: Boolean;
    FinfCpl: string;
    FinfCplHasValue: Boolean;
    FobsCont: TNfeSefazInfAdicObsContList;
    FobsFisco: TNfeSefazInfAdicObsFiscoList;
    FprocRef: TNfeSefazProcRefList;
    procedure SetinfAdFisco(const Value: string);
    procedure SetinfCpl(const Value: string);
    procedure SetobsCont(const Value: TNfeSefazInfAdicObsContList);
    procedure SetobsFisco(const Value: TNfeSefazInfAdicObsFiscoList);
    procedure SetprocRef(const Value: TNfeSefazProcRefList);
  public
    destructor Destroy; override;
    /// <summary>
    /// Informações adicionais de interesse do Fisco (v2.0).
    /// </summary>
    property infAdFisco: string read FinfAdFisco write SetinfAdFisco;
    property infAdFiscoHasValue: Boolean read FinfAdFiscoHasValue write FinfAdFiscoHasValue;
    /// <summary>
    /// Informações complementares de interesse do Contribuinte.
    /// </summary>
    property infCpl: string read FinfCpl write SetinfCpl;
    property infCplHasValue: Boolean read FinfCplHasValue write FinfCplHasValue;
    /// <summary>
    /// Campo de uso livre do contribuinte
    /// informar o nome do campo no atributo xCampo
    /// e o conteúdo do campo no xTexto.
    /// </summary>
    property obsCont: TNfeSefazInfAdicObsContList read FobsCont write SetobsCont;
    /// <summary>
    /// Campo de uso exclusivo do Fisco
    /// informar o nome do campo no atributo xCampo
    /// e o conteúdo do campo no xTexto.
    /// </summary>
    property obsFisco: TNfeSefazInfAdicObsFiscoList read FobsFisco write SetobsFisco;
    /// <summary>
    /// Grupo de informações do  processo referenciado.
    /// </summary>
    property procRef: TNfeSefazProcRefList read FprocRef write SetprocRef;
  end;
  
  TNfeSefazExporta = class
  private
    FUFSaidaPais: string;
    FxLocExporta: string;
    FxLocDespacho: string;
    FxLocDespachoHasValue: Boolean;
    procedure SetxLocDespacho(const Value: string);
  public
    /// <summary>
    /// Sigla da UF de Embarque ou de transposição de fronteira.
    /// </summary>
    property UFSaidaPais: string read FUFSaidaPais write FUFSaidaPais;
    /// <summary>
    /// Local de Embarque ou de transposição de fronteira.
    /// </summary>
    property xLocExporta: string read FxLocExporta write FxLocExporta;
    /// <summary>
    /// Descrição do local de despacho.
    /// </summary>
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
    /// <summary>
    /// Informação da Nota de Empenho de compras públicas (NT2011/004).
    /// </summary>
    property xNEmp: string read FxNEmp write SetxNEmp;
    property xNEmpHasValue: Boolean read FxNEmpHasValue write FxNEmpHasValue;
    /// <summary>
    /// Informação do pedido.
    /// </summary>
    property xPed: string read FxPed write SetxPed;
    property xPedHasValue: Boolean read FxPedHasValue write FxPedHasValue;
    /// <summary>
    /// Informação do contrato.
    /// </summary>
    property xCont: string read FxCont write SetxCont;
    property xContHasValue: Boolean read FxContHasValue write FxContHasValue;
  end;
  
  TNfeSefazForDia = class
  private
    Fdia: Integer;
    Fqtde: Double;
  public
    /// <summary>
    /// Número do dia.
    /// </summary>
    property dia: Integer read Fdia write Fdia;
    /// <summary>
    /// Quantidade em quilogramas - peso líquido.
    /// </summary>
    property qtde: Double read Fqtde write Fqtde;
  end;
  
  TNfeSefazForDiaList = class(TObjectList<TNfeSefazForDia>)
  end;
  
  TNfeSefazDeduc = class
  private
    FxDed: string;
    FvDed: Double;
  public
    /// <summary>
    /// Descrição da Dedução.
    /// </summary>
    property xDed: string read FxDed write FxDed;
    /// <summary>
    /// valor da dedução.
    /// </summary>
    property vDed: Double read FvDed write FvDed;
  end;
  
  TNfeSefazDeducList = class(TObjectList<TNfeSefazDeduc>)
  end;
  
  TNfeSefazCana = class
  private
    Fsafra: string;
    Fref: string;
    FforDia: TNfeSefazForDiaList;
    FqTotMes: Double;
    FqTotAnt: Double;
    FqTotGer: Double;
    Fdeduc: TNfeSefazDeducList;
    FvFor: Double;
    FvTotDed: Double;
    FvLiqFor: Double;
    procedure SetforDia(const Value: TNfeSefazForDiaList);
    procedure Setdeduc(const Value: TNfeSefazDeducList);
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Identificação da safra.
    /// </summary>
    property safra: string read Fsafra write Fsafra;
    /// <summary>
    /// Mês e Ano de Referência, formato: MM/AAAA.
    /// </summary>
    property ref: string read Fref write Fref;
    /// <summary>
    /// Fornecimentos diários.
    /// </summary>
    property forDia: TNfeSefazForDiaList read FforDia write SetforDia;
    /// <summary>
    /// Total do mês.
    /// </summary>
    property qTotMes: Double read FqTotMes write FqTotMes;
    /// <summary>
    /// Total Anterior.
    /// </summary>
    property qTotAnt: Double read FqTotAnt write FqTotAnt;
    /// <summary>
    /// Total Geral.
    /// </summary>
    property qTotGer: Double read FqTotGer write FqTotGer;
    /// <summary>
    /// Deduções - Taxas e Contribuições.
    /// </summary>
    property deduc: TNfeSefazDeducList read Fdeduc write Setdeduc;
    /// <summary>
    /// Valor  dos fornecimentos.
    /// </summary>
    property vFor: Double read FvFor write FvFor;
    /// <summary>
    /// Valor Total das Deduções.
    /// </summary>
    property vTotDed: Double read FvTotDed write FvTotDed;
    /// <summary>
    /// Valor Líquido dos fornecimentos.
    /// </summary>
    property vLiqFor: Double read FvLiqFor write FvLiqFor;
  end;
  
  TNfeSefazInfRespTec = class
  private
    FCNPJ: string;
    FxContato: string;
    Femail: string;
    Ffone: string;
    FidCSRT: Integer;
    FidCSRTHasValue: Boolean;
    FhashCSRT: string;
    FhashCSRTHasValue: Boolean;
    procedure SetidCSRT(const Value: Integer);
    procedure SethashCSRT(const Value: string);
  public
    /// <summary>
    /// CNPJ.
    /// </summary>
    property CNPJ: string read FCNPJ write FCNPJ;
    /// <summary>
    /// Informar o nome da pessoa a ser contatada na empresa desenvolvedora do sistema utilizado na emissão do documento fiscal eletrônico.
    /// </summary>
    property xContato: string read FxContato write FxContato;
    /// <summary>
    /// Informar o e-mail da pessoa a ser contatada na empresa desenvolvedora do sistema.
    /// </summary>
    property email: string read Femail write Femail;
    /// <summary>
    /// Informar o telefone da pessoa a ser contatada na empresa desenvolvedora do sistema. Preencher com o Código DDD + número do telefone.
    /// </summary>
    property fone: string read Ffone write Ffone;
    /// <summary>
    /// Identificador do CSRT utilizado para montar o hash do CSRT.
    /// </summary>
    property idCSRT: Integer read FidCSRT write SetidCSRT;
    property idCSRTHasValue: Boolean read FidCSRTHasValue write FidCSRTHasValue;
    /// <summary>
    /// O hashCSRT é o resultado da função hash (SHA-1 – Base64) do CSRT fornecido pelo fisco mais a Chave de Acesso da NFe.
    /// </summary>
    property hashCSRT: string read FhashCSRT write SethashCSRT;
    property hashCSRTHasValue: Boolean read FhashCSRTHasValue write FhashCSRTHasValue;
  end;
  
  TNfeSefazInfSolicNFF = class
  private
    FxSolic: string;
  public
    /// <summary>
    /// Solicitação do pedido de emissão da NFF.
    /// </summary>
    property xSolic: string read FxSolic write FxSolic;
  end;
  
  TNfeSefazInfNFe = class
  private
    Fversao: string;
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
    constructor Create;
    destructor Destroy; override;
    /// <summary>
    /// Versão do leiaute (v4.00).
    /// </summary>
    property versao: string read Fversao write Fversao;
    /// <summary>
    /// PL_005d - 11/08/09 - validação do Id.
    /// </summary>
    property Id: string read FId write SetId;
    property IdHasValue: Boolean read FIdHasValue write FIdHasValue;
    /// <summary>
    /// identificação da NF-e.
    /// </summary>
    property ide: TNfeSefazIde read Fide write Setide;
    /// <summary>
    /// Identificação do emitente.
    /// </summary>
    property emit: TNfeSefazEmit read Femit write Setemit;
    /// <summary>
    /// Emissão de avulsa, informar os dados do Fisco emitente.
    /// </summary>
    property avulsa: TNfeSefazAvulsa read Favulsa write Setavulsa;
    /// <summary>
    /// Identificação do Destinatário.
    /// </summary>
    property dest: TNfeSefazDest read Fdest write Setdest;
    /// <summary>
    /// Identificação do Local de Retirada (informar apenas quando for diferente do endereço do remetente).
    /// </summary>
    property retirada: TNfeSefazLocal read Fretirada write Setretirada;
    /// <summary>
    /// Identificação do Local de Entrega (informar apenas quando for diferente do endereço do destinatário).
    /// </summary>
    property entrega: TNfeSefazLocal read Fentrega write Setentrega;
    /// <summary>
    /// Pessoas autorizadas para o download do XML da NF-e.
    /// </summary>
    property autXML: TNfeSefazAutXMLList read FautXML write SetautXML;
    /// <summary>
    /// Dados dos detalhes da NF-e.
    /// </summary>
    property det: TNfeSefazDetList read Fdet write Setdet;
    /// <summary>
    /// Dados dos totais da NF-e.
    /// </summary>
    property total: TNfeSefazTotal read Ftotal write Settotal;
    /// <summary>
    /// Dados dos transportes da NF-e.
    /// </summary>
    property transp: TNfeSefazTransp read Ftransp write Settransp;
    /// <summary>
    /// Dados da cobrança da NF-e.
    /// </summary>
    property cobr: TNfeSefazCobr read Fcobr write Setcobr;
    /// <summary>
    /// Dados de Pagamento. Obrigatório apenas para (NFC-e) NT 2012/004.
    /// </summary>
    property pag: TNfeSefazPag read Fpag write Setpag;
    /// <summary>
    /// Grupo de Informações do Intermediador da Transação.
    /// </summary>
    property infIntermed: TNfeSefazInfIntermed read FinfIntermed write SetinfIntermed;
    /// <summary>
    /// Informações adicionais da NF-e.
    /// </summary>
    property infAdic: TNfeSefazInfAdic read FinfAdic write SetinfAdic;
    /// <summary>
    /// Informações de exportação.
    /// </summary>
    property exporta: TNfeSefazExporta read Fexporta write Setexporta;
    /// <summary>
    /// Informações de compras  (Nota de Empenho, Pedido e Contrato).
    /// </summary>
    property compra: TNfeSefazCompra read Fcompra write Setcompra;
    /// <summary>
    /// Informações de registro aquisições de cana.
    /// </summary>
    property cana: TNfeSefazCana read Fcana write Setcana;
    /// <summary>
    /// Informações do Responsável Técnico pela emissão do DF-e.
    /// </summary>
    property infRespTec: TNfeSefazInfRespTec read FinfRespTec write SetinfRespTec;
    /// <summary>
    /// Grupo para informações da solicitação da NFF.
    /// </summary>
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
    /// <summary>
    /// Texto com o QR-Code impresso no DANFE NFC-e.
    /// Geramos automaticamente quando nenhum valor é informado.
    /// </summary>
    property qrCode: string read FqrCode write SetqrCode;
    property qrCodeHasValue: Boolean read FqrCodeHasValue write FqrCodeHasValue;
    /// <summary>
    /// Informar a URL da "Consulta por chave de acesso da NFC-e". A mesma URL que deve estar informada no DANFE NFC-e para consulta por chave de acesso.
    /// Geramos automaticamente quando nenhum valor é informado.
    /// </summary>
    property urlChave: string read FurlChave write SeturlChave;
    property urlChaveHasValue: Boolean read FurlChaveHasValue write FurlChaveHasValue;
  end;
  
  TNfePedidoEmissao = class
  private
    FinfNFe: TNfeSefazInfNFe;
    FinfNFeSupl: TNfeSefazInfNFeSupl;
    Fambiente: string;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    procedure SetinfNFe(const Value: TNfeSefazInfNFe);
    procedure SetinfNFeSupl(const Value: TNfeSefazInfNFeSupl);
    procedure Setreferencia(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    property infNFe: TNfeSefazInfNFe read FinfNFe write SetinfNFe;
    property infNFeSupl: TNfeSefazInfNFeSupl read FinfNFeSupl write SetinfNFeSupl;
    /// <summary>
    /// Identificação do Ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Fambiente;
    /// <summary>
    /// Seu identificador único para este documento. Opcional, ajuda a evitar o envio duplicado de um mesmo documento.
    /// </summary>
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
  end;
  
  TNfePedidoEmissaoList = class(TObjectList<TNfePedidoEmissao>)
  end;
  
  TNfePedidoEmissaoLote = class
  private
    Fdocumentos: TNfePedidoEmissaoList;
    Fambiente: string;
    Freferencia: string;
    FreferenciaHasValue: Boolean;
    Fid_lote: string;
    procedure Setdocumentos(const Value: TNfePedidoEmissaoList);
    procedure Setreferencia(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    property documentos: TNfePedidoEmissaoList read Fdocumentos write Setdocumentos;
    /// <summary>
    /// Identificação do Ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Fambiente;
    /// <summary>
    /// Seu identificador para este documento. Opcional, ajuda a evitar o envio duplicado de um mesmo documento.
    /// </summary>
    property referencia: string read Freferencia write Setreferencia;
    property referenciaHasValue: Boolean read FreferenciaHasValue write FreferenciaHasValue;
    property id_lote: string read Fid_lote write Fid_lote;
  end;
  
  TNfePedidoCancelamento = class
  private
    Fjustificativa: string;
    FjustificativaHasValue: Boolean;
    procedure Setjustificativa(const Value: string);
  public
    /// <summary>
    /// Justificativa para o cancelamento. Preencheremos automaticamente, caso esteja em branco.
    /// </summary>
    property justificativa: string read Fjustificativa write Setjustificativa;
    property justificativaHasValue: Boolean read FjustificativaHasValue write FjustificativaHasValue;
  end;
  
  TNfePedidoCartaCorrecao = class
  private
    Fcorrecao: string;
    FcorrecaoHasValue: Boolean;
    procedure Setcorrecao(const Value: string);
  public
    /// <summary>
    /// Correção a ser considerada.
    /// </summary>
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
    /// <summary>
    /// Correção a ser considerada.
    /// </summary>
    property correcao: string read Fcorrecao write Setcorrecao;
    property correcaoHasValue: Boolean read FcorrecaoHasValue write FcorrecaoHasValue;
    /// <summary>
    /// ID único gerado pela Nuvem Fiscal para este evento.
    /// </summary>
    property id: string read Fid write Setid;
    property idHasValue: Boolean read FidHasValue write FidHasValue;
    /// <summary>
    /// Identificação do ambiente.
    /// </summary>
    property ambiente: string read Fambiente write Setambiente;
    property ambienteHasValue: Boolean read FambienteHasValue write FambienteHasValue;
    /// <summary>
    /// Status do Evento.
    /// </summary>
    property status: string read Fstatus write Setstatus;
    property statusHasValue: Boolean read FstatusHasValue write FstatusHasValue;
    /// <summary>
    /// Identificação do autor do evento.
    /// </summary>
    property autor: TDfeAutorEvento read Fautor write Setautor;
    /// <summary>
    /// Chave de Acesso do documento vinculado ao evento.
    /// </summary>
    property chave_acesso: string read Fchave_acesso write Setchave_acesso;
    property chave_acessoHasValue: Boolean read Fchave_acessoHasValue write Fchave_acessoHasValue;
    /// <summary>
    /// Data e hora do Evento.
    /// </summary>
    property data_evento: TDateTime read Fdata_evento write Setdata_evento;
    property data_eventoHasValue: Boolean read Fdata_eventoHasValue write Fdata_eventoHasValue;
    /// <summary>
    /// Sequencial do evento para o mesmo tipo de evento.
    /// </summary>
    property numero_sequencial: Integer read Fnumero_sequencial write Setnumero_sequencial;
    property numero_sequencialHasValue: Boolean read Fnumero_sequencialHasValue write Fnumero_sequencialHasValue;
    /// <summary>
    /// Data e hora do recebimento do Evento pela SEFAZ.
    /// </summary>
    property data_recebimento: TDateTime read Fdata_recebimento write Setdata_recebimento;
    property data_recebimentoHasValue: Boolean read Fdata_recebimentoHasValue write Fdata_recebimentoHasValue;
    /// <summary>
    /// Código do status de registro do Evento.
    /// </summary>
    property codigo_status: Integer read Fcodigo_status write Setcodigo_status;
    property codigo_statusHasValue: Boolean read Fcodigo_statusHasValue write Fcodigo_statusHasValue;
    /// <summary>
    /// Descrição literal do status do registro do Evento.
    /// </summary>
    property motivo_status: string read Fmotivo_status write Setmotivo_status;
    property motivo_statusHasValue: Boolean read Fmotivo_statusHasValue write Fmotivo_statusHasValue;
    /// <summary>
    /// Número do Protocolo de registro do Evento.
    /// </summary>
    property numero_protocolo: string read Fnumero_protocolo write Setnumero_protocolo;
    property numero_protocoloHasValue: Boolean read Fnumero_protocoloHasValue write Fnumero_protocoloHasValue;
    /// <summary>
    /// Código da Mensagem.
    /// </summary>
    property codigo_mensagem: Integer read Fcodigo_mensagem write Setcodigo_mensagem;
    property codigo_mensagemHasValue: Boolean read Fcodigo_mensagemHasValue write Fcodigo_mensagemHasValue;
    /// <summary>
    /// Mensagem da SEFAZ para o emissor.
    /// </summary>
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
    /// <summary>
    /// Código da natureza jurídica.
    /// </summary>
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    /// <summary>
    /// Nome da natureza jurídica.
    /// </summary>
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
    /// <summary>
    /// Código do porte da empresa.
    /// </summary>
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    /// <summary>
    /// Descrição do porte da empresa.
    /// </summary>
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
    /// <summary>
    /// Data do evento da situação cadastral.
    /// </summary>
    property data: TDate read Fdata write Setdata;
    property dataHasValue: Boolean read FdataHasValue write FdataHasValue;
    /// <summary>
    /// Código da situação cadastral.
    /// </summary>
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    /// <summary>
    /// Descrição da situação cadastral.
    /// </summary>
    property descricao: string read Fdescricao write Setdescricao;
    property descricaoHasValue: Boolean read FdescricaoHasValue write FdescricaoHasValue;
  end;
  
  TCnpjMotivoSituacaoCadastral = class
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
    /// <summary>
    /// Data do evento.
    /// </summary>
    property data: TDate read Fdata write Setdata;
    property dataHasValue: Boolean read FdataHasValue write FdataHasValue;
    /// <summary>
    /// Código do motivo da situação cadastral.
    /// </summary>
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    /// <summary>
    /// Descrição do motivo da situação cadastral.
    /// </summary>
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
    /// <summary>
    /// Código do país.
    /// </summary>
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    /// <summary>
    /// Nome do país.
    /// </summary>
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
    /// <summary>
    /// Código da atividade econômica.
    /// </summary>
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    /// <summary>
    /// Nome da atividade econômica.
    /// </summary>
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
    /// <summary>
    /// Código TOM do município.
    /// </summary>
    property codigo_tom: string read Fcodigo_tom write Setcodigo_tom;
    property codigo_tomHasValue: Boolean read Fcodigo_tomHasValue write Fcodigo_tomHasValue;
    /// <summary>
    /// Código IBGE do município.
    /// </summary>
    property codigo_ibge: string read Fcodigo_ibge write Setcodigo_ibge;
    property codigo_ibgeHasValue: Boolean read Fcodigo_ibgeHasValue write Fcodigo_ibgeHasValue;
    /// <summary>
    /// Nome do município.
    /// </summary>
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
    /// <summary>
    /// Descrição do tipo de logradouro.
    /// </summary>
    property tipo_logradouro: string read Ftipo_logradouro write Settipo_logradouro;
    property tipo_logradouroHasValue: Boolean read Ftipo_logradouroHasValue write Ftipo_logradouroHasValue;
    /// <summary>
    /// Nome do logradouro onde se localiza o estabelecimento.
    /// </summary>
    property logradouro: string read Flogradouro write Setlogradouro;
    property logradouroHasValue: Boolean read FlogradouroHasValue write FlogradouroHasValue;
    /// <summary>
    /// Número onde se localiza o estabelecimento. Quando não houver
    /// preenchimento do número haverá ‘S/N’.
    /// </summary>
    property numero: string read Fnumero write Setnumero;
    property numeroHasValue: Boolean read FnumeroHasValue write FnumeroHasValue;
    /// <summary>
    /// Complemento para o endereço de localização do estabelecimento.
    /// </summary>
    property complemento: string read Fcomplemento write Setcomplemento;
    property complementoHasValue: Boolean read FcomplementoHasValue write FcomplementoHasValue;
    /// <summary>
    /// Bairro onde se localiza o estabelecimento.
    /// </summary>
    property bairro: string read Fbairro write Setbairro;
    property bairroHasValue: Boolean read FbairroHasValue write FbairroHasValue;
    /// <summary>
    /// Código de endereçamento postal referente ao logradouro no qual o
    /// estabelecimento esta localizado.
    /// </summary>
    property cep: string read Fcep write Setcep;
    property cepHasValue: Boolean read FcepHasValue write FcepHasValue;
    /// <summary>
    /// Sigla da unidade da federação em que se encontra o estabelecimento.
    /// </summary>
    property uf: string read Fuf write Setuf;
    property ufHasValue: Boolean read FufHasValue write FufHasValue;
    /// <summary>
    /// Município de jurisdição onde se encontra o estabelecimento.
    /// </summary>
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
    /// <summary>
    /// Código de DDD (Discagem Direta à Distância)
    /// </summary>
    property ddd: string read Fddd write Setddd;
    property dddHasValue: Boolean read FdddHasValue write FdddHasValue;
    /// <summary>
    /// Número do telefone.
    /// </summary>
    property numero: string read Fnumero write Setnumero;
    property numeroHasValue: Boolean read FnumeroHasValue write FnumeroHasValue;
  end;
  
  TCnpjTelefoneList = class(TObjectList<TCnpjTelefone>)
  end;
  
  TCnpjSituacaoEspecial = class
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
    /// <summary>
    /// Data em que a empresa entrou em situação especial.
    /// </summary>
    property data: TDate read Fdata write Setdata;
    property dataHasValue: Boolean read FdataHasValue write FdataHasValue;
    /// <summary>
    /// Código da situação especial da empresa.
    /// </summary>
    property codigo: string read Fcodigo write Setcodigo;
    property codigoHasValue: Boolean read FcodigoHasValue write FcodigoHasValue;
    /// <summary>
    /// Descrição da situação especial da empresa.
    /// </summary>
    property descricao: string read Fdescricao write Setdescricao;
    property descricaoHasValue: Boolean read FdescricaoHasValue write FdescricaoHasValue;
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
    /// <summary>
    /// Indicador da existência da opção pelo Simples Nacional:
    /// * `true` - É optante.
    /// * `false` - Não é optante.
    /// </summary>
    property optante: Boolean read Foptante write Setoptante;
    property optanteHasValue: Boolean read FoptanteHasValue write FoptanteHasValue;
    /// <summary>
    /// Data da opção pelo Simples Nacional.
    /// </summary>
    property data_opcao: TDate read Fdata_opcao write Setdata_opcao;
    property data_opcaoHasValue: Boolean read Fdata_opcaoHasValue write Fdata_opcaoHasValue;
    /// <summary>
    /// Data da exclusão do Simples Nacional.
    /// </summary>
    property data_exclusao: TDate read Fdata_exclusao write Setdata_exclusao;
    property data_exclusaoHasValue: Boolean read Fdata_exclusaoHasValue write Fdata_exclusaoHasValue;
  end;
  
  TCnpjOpcaoSimei = class
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
    /// <summary>
    /// Indicador da existência da opção pelo MEI:
    /// * `true` - É optante.
    /// * `false` - Não é optante.
    /// </summary>
    property optante: Boolean read Foptante write Setoptante;
    property optanteHasValue: Boolean read FoptanteHasValue write FoptanteHasValue;
    /// <summary>
    /// Data da opção pelo MEI.
    /// </summary>
    property data_opcao: TDate read Fdata_opcao write Setdata_opcao;
    property data_opcaoHasValue: Boolean read Fdata_opcaoHasValue write Fdata_opcaoHasValue;
    /// <summary>
    /// Data da exclusão do MEI.
    /// </summary>
    property data_exclusao: TDate read Fdata_exclusao write Setdata_exclusao;
    property data_exclusaoHasValue: Boolean read Fdata_exclusaoHasValue write Fdata_exclusaoHasValue;
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
    Fmotivo_situacao_cadastral: TCnpjMotivoSituacaoCadastral;
    Fnome_da_cidade_no_exterior: string;
    Fnome_da_cidade_no_exteriorHasValue: Boolean;
    Fpais: TCnpjPais;
    Fatividade_principal: TCnpjCnae;
    Fatividades_secundarias: TCnpjCnaeList;
    Fendereco: TCnpjEndereco;
    Ftelefones: TCnpjTelefoneList;
    Femail: string;
    FemailHasValue: Boolean;
    Fsituacao_especial: TCnpjSituacaoEspecial;
    Fsimples: TCnpjOpcaoSimples;
    Fsimei: TCnpjOpcaoSimei;
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
    procedure Setmotivo_situacao_cadastral(const Value: TCnpjMotivoSituacaoCadastral);
    procedure Setnome_da_cidade_no_exterior(const Value: string);
    procedure Setpais(const Value: TCnpjPais);
    procedure Setatividade_principal(const Value: TCnpjCnae);
    procedure Setatividades_secundarias(const Value: TCnpjCnaeList);
    procedure Setendereco(const Value: TCnpjEndereco);
    procedure Settelefones(const Value: TCnpjTelefoneList);
    procedure Setemail(const Value: string);
    procedure Setsituacao_especial(const Value: TCnpjSituacaoEspecial);
    procedure Setsimples(const Value: TCnpjOpcaoSimples);
    procedure Setsimei(const Value: TCnpjOpcaoSimei);
  public
    destructor Destroy; override;
    /// <summary>
    /// Número de inscrição do CNPJ.
    /// </summary>
    property cnpj: string read Fcnpj write Setcnpj;
    property cnpjHasValue: Boolean read FcnpjHasValue write FcnpjHasValue;
    /// <summary>
    /// Nome empresarial da pessoa jurídica.
    /// </summary>
    property razao_social: string read Frazao_social write Setrazao_social;
    property razao_socialHasValue: Boolean read Frazao_socialHasValue write Frazao_socialHasValue;
    /// <summary>
    /// Corresponde ao nome fantasia.
    /// </summary>
    property nome_fantasia: string read Fnome_fantasia write Setnome_fantasia;
    property nome_fantasiaHasValue: Boolean read Fnome_fantasiaHasValue write Fnome_fantasiaHasValue;
    /// <summary>
    /// Data de início da atividade.
    /// </summary>
    property data_inicio_atividade: TDate read Fdata_inicio_atividade write Setdata_inicio_atividade;
    property data_inicio_atividadeHasValue: Boolean read Fdata_inicio_atividadeHasValue write Fdata_inicio_atividadeHasValue;
    /// <summary>
    /// Indicador de matriz/filial:
    /// * `true` - É matriz
    /// * `false` - É filial
    /// </summary>
    property matriz: Boolean read Fmatriz write Setmatriz;
    property matrizHasValue: Boolean read FmatrizHasValue write FmatrizHasValue;
    /// <summary>
    /// Natureza jurídica.
    /// </summary>
    property natureza_juridica: TCnpjNaturezaJuridica read Fnatureza_juridica write Setnatureza_juridica;
    /// <summary>
    /// Capital social da empresa.
    /// </summary>
    property capital_social: Double read Fcapital_social write Setcapital_social;
    property capital_socialHasValue: Boolean read Fcapital_socialHasValue write Fcapital_socialHasValue;
    /// <summary>
    /// Porte da empresa.
    /// </summary>
    property porte: TCnpjPorteEmpresa read Fporte write Setporte;
    /// <summary>
    /// O ente federativo responsável é preenchido para os casos de órgãos e
    /// entidades do grupo de natureza jurídica 1XXX. Para as demais naturezas,
    /// este atributo fica em branco.
    /// </summary>
    property ente_federativo_responsavel: string read Fente_federativo_responsavel write Setente_federativo_responsavel;
    property ente_federativo_responsavelHasValue: Boolean read Fente_federativo_responsavelHasValue write Fente_federativo_responsavelHasValue;
    /// <summary>
    /// Situação cadastral.
    /// </summary>
    property situacao_cadastral: TCnpjSituacaoCadastral read Fsituacao_cadastral write Setsituacao_cadastral;
    /// <summary>
    /// Motivo da situação cadastral.
    /// </summary>
    property motivo_situacao_cadastral: TCnpjMotivoSituacaoCadastral read Fmotivo_situacao_cadastral write Setmotivo_situacao_cadastral;
    /// <summary>
    /// Nome da cidade no exterior.
    /// </summary>
    property nome_da_cidade_no_exterior: string read Fnome_da_cidade_no_exterior write Setnome_da_cidade_no_exterior;
    property nome_da_cidade_no_exteriorHasValue: Boolean read Fnome_da_cidade_no_exteriorHasValue write Fnome_da_cidade_no_exteriorHasValue;
    /// <summary>
    /// País.
    /// </summary>
    property pais: TCnpjPais read Fpais write Setpais;
    /// <summary>
    /// Atividade econômica principal do estabelecimento.
    /// </summary>
    property atividade_principal: TCnpjCnae read Fatividade_principal write Setatividade_principal;
    /// <summary>
    /// Atividades econômicas secundárias do estabelecimento.
    /// </summary>
    property atividades_secundarias: TCnpjCnaeList read Fatividades_secundarias write Setatividades_secundarias;
    /// <summary>
    /// Endereço do estabelecimento.
    /// </summary>
    property endereco: TCnpjEndereco read Fendereco write Setendereco;
    /// <summary>
    /// Telefones do estabelecimento.
    /// </summary>
    property telefones: TCnpjTelefoneList read Ftelefones write Settelefones;
    /// <summary>
    /// E-mail do contribuinte.
    /// </summary>
    property email: string read Femail write Setemail;
    property emailHasValue: Boolean read FemailHasValue write FemailHasValue;
    /// <summary>
    /// Situação especial da empresa.
    /// </summary>
    property situacao_especial: TCnpjSituacaoEspecial read Fsituacao_especial write Setsituacao_especial;
    /// <summary>
    /// Informações da opção do Simples Nacional.
    /// </summary>
    property simples: TCnpjOpcaoSimples read Fsimples write Setsimples;
    /// <summary>
    /// Informações da opção pelo MEI.
    /// </summary>
    property simei: TCnpjOpcaoSimei read Fsimei write Setsimei;
  end;
  
  TCnpjEmpresaList = class(TObjectList<TCnpjEmpresa>)
  end;
  
  TCnpjListagem = class
  private
    F_count: Integer;
    F_countHasValue: Boolean;
    Fdata: TCnpjEmpresaList;
    procedure Set_count(const Value: Integer);
    procedure Setdata(const Value: TCnpjEmpresaList);
  public
    destructor Destroy; override;
    property _count: Integer read F_count write Set_count;
    property _countHasValue: Boolean read F_countHasValue write F_countHasValue;
    property data: TCnpjEmpresaList read Fdata write Setdata;
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

procedure TEmpresaEndereco.Setcomplemento(const Value: string);
begin
  Fcomplemento := Value;
  FcomplementoHasValue := True;
end;

procedure TEmpresaEndereco.Setcidade(const Value: string);
begin
  Fcidade := Value;
  FcidadeHasValue := True;
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

{ TEmpresa }

constructor TEmpresa.Create;
begin
  inherited;
  Fendereco := TEmpresaEndereco.Create;
end;

destructor TEmpresa.Destroy;
begin
  Fendereco.Free;
  inherited;
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

{ TEmpresaConfigNfce }

constructor TEmpresaConfigNfce.Create;
begin
  inherited;
  Fsefaz := TEmpresaConfigNfceSefaz.Create;
end;

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

constructor TEmpresaConfigNfse.Create;
begin
  inherited;
  Frps := TEmpresaConfigRps.Create;
end;

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

{ TRpsDadosTomadorEndereco }

procedure TRpsDadosTomadorEndereco.Setlogradouro(const Value: string);
begin
  Flogradouro := Value;
  FlogradouroHasValue := True;
end;

procedure TRpsDadosTomadorEndereco.Setnumero(const Value: string);
begin
  Fnumero := Value;
  FnumeroHasValue := True;
end;

procedure TRpsDadosTomadorEndereco.Setcomplemento(const Value: string);
begin
  Fcomplemento := Value;
  FcomplementoHasValue := True;
end;

procedure TRpsDadosTomadorEndereco.Setbairro(const Value: string);
begin
  Fbairro := Value;
  FbairroHasValue := True;
end;

procedure TRpsDadosTomadorEndereco.Setcodigo_municipio(const Value: string);
begin
  Fcodigo_municipio := Value;
  Fcodigo_municipioHasValue := True;
end;

procedure TRpsDadosTomadorEndereco.Setcidade(const Value: string);
begin
  Fcidade := Value;
  FcidadeHasValue := True;
end;

procedure TRpsDadosTomadorEndereco.Setuf(const Value: string);
begin
  Fuf := Value;
  FufHasValue := True;
end;

procedure TRpsDadosTomadorEndereco.Setcodigo_pais(const Value: string);
begin
  Fcodigo_pais := Value;
  Fcodigo_paisHasValue := True;
end;

procedure TRpsDadosTomadorEndereco.Setpais(const Value: string);
begin
  Fpais := Value;
  FpaisHasValue := True;
end;

procedure TRpsDadosTomadorEndereco.Setcep(const Value: string);
begin
  Fcep := Value;
  FcepHasValue := True;
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

procedure TRpsDadosTomador.Setendereco(const Value: TRpsDadosTomadorEndereco);
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

constructor TRpsDadosServico.Create;
begin
  inherited;
  Fvalores := TRpsServicoValores.Create;
end;

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

constructor TRpsPedidoEmissao.Create;
begin
  inherited;
  Fprestador := TRpsIdentificacaoPrestador.Create;
  Ftomador := TRpsDadosTomador.Create;
  Fservicos := TRpsDadosServicoList.Create;
end;

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

constructor TRps.Create;
begin
  inherited;
  Fservicos := TRpsDadosServicoList.Create;
end;

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

procedure TNfseCancelamento.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
  FcodigoHasValue := True;
end;

procedure TNfseCancelamento.Setmotivo(const Value: string);
begin
  Fmotivo := Value;
  FmotivoHasValue := True;
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

{ TDps }

procedure TDps.Setid(const Value: string);
begin
  Fid := Value;
  FidHasValue := True;
end;

procedure TDps.Setnumero(const Value: string);
begin
  Fnumero := Value;
  FnumeroHasValue := True;
end;

procedure TDps.Setserie(const Value: string);
begin
  Fserie := Value;
  FserieHasValue := True;
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

constructor TNfsePedidoEmissao.Create;
begin
  inherited;
  Frps := TRpsPedidoEmissao.Create;
end;

destructor TNfsePedidoEmissao.Destroy;
begin
  Frps.Free;
  inherited;
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

{ TNfsePedidoCancelamento }

procedure TNfsePedidoCancelamento.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
  FcodigoHasValue := True;
end;

procedure TNfsePedidoCancelamento.Setmotivo(const Value: string);
begin
  Fmotivo := Value;
  FmotivoHasValue := True;
end;

{ TContaCota }

procedure TContaCota.Setnome(const Value: string);
begin
  Fnome := Value;
  FnomeHasValue := True;
end;

procedure TContaCota.Setconsumo(const Value: Integer);
begin
  Fconsumo := Value;
  FconsumoHasValue := True;
end;

procedure TContaCota.Setlimite(const Value: Integer);
begin
  Flimite := Value;
  FlimiteHasValue := True;
end;

{ TContaCotaListagem }

destructor TContaCotaListagem.Destroy;
begin
  Fdata.Free;
  inherited;
end;

procedure TContaCotaListagem.Set_count(const Value: Integer);
begin
  F_count := Value;
  F_countHasValue := True;
end;

procedure TContaCotaListagem.Setdata(const Value: TContaCotaList);
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

{ TCteSefazEndereco }

procedure TCteSefazEndereco.SetxCpl(const Value: string);
begin
  FxCpl := Value;
  FxCplHasValue := True;
end;

procedure TCteSefazEndereco.SetCEP(const Value: string);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TCteSefazEndereco.SetcPais(const Value: string);
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

constructor TCteSefazToma4.Create;
begin
  inherited;
  FenderToma := TCteSefazEndereco.Create;
end;

destructor TCteSefazToma4.Destroy;
begin
  FenderToma.Free;
  inherited;
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

procedure TCteSefazIde.SetcCT(const Value: string);
begin
  FcCT := Value;
  FcCTHasValue := True;
end;

procedure TCteSefazIde.Setmod(const Value: Integer);
begin
  Fmod := Value;
  FmodHasValue := True;
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

procedure TCteSefazIde.SetindGlobalizado(const Value: Integer);
begin
  FindGlobalizado := Value;
  FindGlobalizadoHasValue := True;
end;

procedure TCteSefazIde.SetxDetRetira(const Value: string);
begin
  FxDetRetira := Value;
  FxDetRetiraHasValue := True;
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

procedure TCteSefazEndeEmi.SetcMun(const Value: string);
begin
  FcMun := Value;
  FcMunHasValue := True;
end;

procedure TCteSefazEndeEmi.SetxMun(const Value: string);
begin
  FxMun := Value;
  FxMunHasValue := True;
end;

procedure TCteSefazEndeEmi.SetCEP(const Value: string);
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

procedure TCteSefazEmit.SetCRT(const Value: Integer);
begin
  FCRT := Value;
  FCRTHasValue := True;
end;

{ TCteSefazRem }

constructor TCteSefazRem.Create;
begin
  inherited;
  FenderReme := TCteSefazEndereco.Create;
end;

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

constructor TCteSefazExped.Create;
begin
  inherited;
  FenderExped := TCteSefazEndereco.Create;
end;

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

constructor TCteSefazReceb.Create;
begin
  inherited;
  FenderReceb := TCteSefazEndereco.Create;
end;

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

constructor TCteSefazDest.Create;
begin
  inherited;
  FenderDest := TCteSefazEndereco.Create;
end;

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

{ TCteSefazVPrest }

destructor TCteSefazVPrest.Destroy;
begin
  FComp.Free;
  inherited;
end;

procedure TCteSefazVPrest.SetComp(const Value: TCteSefazCompList);
begin
  if Value <> FComp then
  begin
    FComp.Free;
    FComp := Value;
  end;
end;

{ TCteSefazICMS60 }

procedure TCteSefazICMS60.SetvCred(const Value: Double);
begin
  FvCred := Value;
  FvCredHasValue := True;
end;

{ TCteSefazICMS90 }

procedure TCteSefazICMS90.SetpRedBC(const Value: Double);
begin
  FpRedBC := Value;
  FpRedBCHasValue := True;
end;

procedure TCteSefazICMS90.SetvCred(const Value: Double);
begin
  FvCred := Value;
  FvCredHasValue := True;
end;

{ TCteSefazICMSOutraUF }

procedure TCteSefazICMSOutraUF.SetpRedBCOutraUF(const Value: Double);
begin
  FpRedBCOutraUF := Value;
  FpRedBCOutraUFHasValue := True;
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

{ TCteSefazInfCteImp }

constructor TCteSefazInfCteImp.Create;
begin
  inherited;
  FICMS := TCteSefazImp.Create;
end;

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

{ TCteSefazInfCarga }

constructor TCteSefazInfCarga.Create;
begin
  inherited;
  FinfQ := TCteSefazInfQList.Create;
end;

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

{ TCteSefazUnidCarga }

destructor TCteSefazUnidCarga.Destroy;
begin
  FlacUnidCarga.Free;
  inherited;
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

{ TCteSefazUnidadeTransp }

destructor TCteSefazUnidadeTransp.Destroy;
begin
  FinfUnidCarga.Free;
  FlacUnidTransp.Free;
  inherited;
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

procedure TCteSefazIdDocAntPap.Setsubser(const Value: string);
begin
  Fsubser := Value;
  FsubserHasValue := True;
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

constructor TCteSefazEmiDocAnt.Create;
begin
  inherited;
  FidDocAnt := TCteSefazIdDocAntList.Create;
end;

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

procedure TCteSefazEmiDocAnt.SetidDocAnt(const Value: TCteSefazIdDocAntList);
begin
  if Value <> FidDocAnt then
  begin
    FidDocAnt.Free;
    FidDocAnt := Value;
  end;
end;

{ TCteSefazDocAnt }

constructor TCteSefazDocAnt.Create;
begin
  inherited;
  FemiDocAnt := TCteSefazEmiDocAntList.Create;
end;

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

procedure TCteSefazEmiOcc.SetcInt(const Value: string);
begin
  FcInt := Value;
  FcIntHasValue := True;
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

procedure TCteSefazTarifa.SetcTar(const Value: string);
begin
  FcTar := Value;
  FcTarHasValue := True;
end;

{ TCteSefazPeri }

constructor TCteSefazPeri.Create;
begin
  inherited;
  FinfTotAP := TCteSefazInfTotAP.Create;
end;

destructor TCteSefazPeri.Destroy;
begin
  FinfTotAP.Free;
  inherited;
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

constructor TCteSefazAereo.Create;
begin
  inherited;
  FnatCarga := TCteSefazNatCarga.Create;
  Ftarifa := TCteSefazTarifa.Create;
end;

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

{ TCteSefazFerroEnv }

constructor TCteSefazFerroEnv.Create;
begin
  inherited;
  FenderFerro := TCteSefazEnderFer.Create;
end;

destructor TCteSefazFerroEnv.Destroy;
begin
  FenderFerro.Free;
  inherited;
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

procedure TCteSefazFerrov.SettrafMut(const Value: TCteSefazTrafMut);
begin
  if Value <> FtrafMut then
  begin
    FtrafMut.Free;
    FtrafMut := Value;
  end;
end;

{ TCteSefazDetContInfDocInfNF }

procedure TCteSefazDetContInfDocInfNF.SetunidRat(const Value: Double);
begin
  FunidRat := Value;
  FunidRatHasValue := True;
end;

{ TCteSefazDetContInfDocInfNFe }

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

{ TCteSefazSeg }

constructor TCteSefazSeg.Create;
begin
  inherited;
  FinfSeg := TCteSefazInfSeg.Create;
end;

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

{ TCteSefazMultimodal }

destructor TCteSefazMultimodal.Destroy;
begin
  Fseg.Free;
  inherited;
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

procedure TCteSefazRefNF.Setsubserie(const Value: Integer);
begin
  Fsubserie := Value;
  FsubserieHasValue := True;
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

{ TCteSefazInfServVinc }

constructor TCteSefazInfServVinc.Create;
begin
  inherited;
  FinfCTeMultimodal := TCteSefazInfCTeMultimodalList.Create;
end;

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

constructor TCteSefazInfCTeNorm.Create;
begin
  inherited;
  FinfCarga := TCteSefazInfCarga.Create;
  FinfModal := TCteSefazInfModal.Create;
end;

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

{ TCteSefazInfCte }

constructor TCteSefazInfCte.Create;
begin
  inherited;
  Fide := TCteSefazIde.Create;
  Femit := TCteSefazEmit.Create;
  FvPrest := TCteSefazVPrest.Create;
  Fimp := TCteSefazInfCteImp.Create;
end;

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

constructor TCtePedidoEmissao.Create;
begin
  inherited;
  FinfCte := TCteSefazInfCte.Create;
end;

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

procedure TCtePedidoEmissao.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
end;

{ TCtePedidoEmissaoLote }

constructor TCtePedidoEmissaoLote.Create;
begin
  inherited;
  Fdocumentos := TCtePedidoEmissaoList.Create;
end;

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

procedure TCtePedidoEmissaoLote.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
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

{ TDfeLoteListagem }

destructor TDfeLoteListagem.Destroy;
begin
  Fdata.Free;
  inherited;
end;

procedure TDfeLoteListagem.Set_count(const Value: Integer);
begin
  F_count := Value;
  F_countHasValue := True;
end;

procedure TDfeLoteListagem.Setdata(const Value: TDfeLoteList);
begin
  if Value <> Fdata then
  begin
    Fdata.Free;
    Fdata := Value;
  end;
end;

{ TDfeListagem }

destructor TDfeListagem.Destroy;
begin
  Fdata.Free;
  inherited;
end;

procedure TDfeListagem.Set_count(const Value: Integer);
begin
  F_count := Value;
  F_countHasValue := True;
end;

procedure TDfeListagem.Setdata(const Value: TDfeList);
begin
  if Value <> Fdata then
  begin
    Fdata.Free;
    Fdata := Value;
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

procedure TCteInfCorrecao.Setnumero_item_alterado(const Value: Integer);
begin
  Fnumero_item_alterado := Value;
  Fnumero_item_alteradoHasValue := True;
end;

{ TCtePedidoCartaCorrecao }

constructor TCtePedidoCartaCorrecao.Create;
begin
  inherited;
  Fcorrecoes := TCteInfCorrecaoList.Create;
end;

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

constructor TCteCartaCorrecao.Create;
begin
  inherited;
  Fcorrecoes := TCteInfCorrecaoList.Create;
end;

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

{ TMdfeSefazIde }

constructor TMdfeSefazIde.Create;
begin
  inherited;
  FinfMunCarrega := TMdfeSefazInfMunCarregaList.Create;
end;

destructor TMdfeSefazIde.Destroy;
begin
  FinfPercurso.Free;
  FinfMunCarrega.Free;
  inherited;
end;

procedure TMdfeSefazIde.SettpAmb(const Value: Integer);
begin
  FtpAmb := Value;
  FtpAmbHasValue := True;
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

procedure TMdfeSefazIde.SetcMDF(const Value: string);
begin
  FcMDF := Value;
  FcMDFHasValue := True;
end;

procedure TMdfeSefazIde.SetcDV(const Value: Integer);
begin
  FcDV := Value;
  FcDVHasValue := True;
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

procedure TMdfeSefazEndeEmi.SetcMun(const Value: string);
begin
  FcMun := Value;
  FcMunHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetxMun(const Value: string);
begin
  FxMun := Value;
  FxMunHasValue := True;
end;

procedure TMdfeSefazEndeEmi.SetCEP(const Value: string);
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

{ TMdfeSefazInfCIOT }

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

procedure TMdfeSefazDisp.SettpValePed(const Value: string);
begin
  FtpValePed := Value;
  FtpValePedHasValue := True;
end;

{ TMdfeSefazValePed }

constructor TMdfeSefazValePed.Create;
begin
  inherited;
  Fdisp := TMdfeSefazDispList.Create;
end;

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

destructor TMdfeSefazInfContratante.Destroy;
begin
  FinfContrato.Free;
  inherited;
end;

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

procedure TMdfeSefazInfContratante.SetinfContrato(const Value: TMdfeSefazInfContrato);
begin
  if Value <> FinfContrato then
  begin
    FinfContrato.Free;
    FinfContrato := Value;
  end;
end;

{ TMdfeSefazComp }

procedure TMdfeSefazComp.SetxComp(const Value: string);
begin
  FxComp := Value;
  FxCompHasValue := True;
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

constructor TMdfeSefazInfPag.Create;
begin
  inherited;
  FComp := TMdfeSefazCompList.Create;
  FinfBanc := TMdfeSefazInfBanc.Create;
end;

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

procedure TMdfeSefazInfPag.SetindAltoDesemp(const Value: Integer);
begin
  FindAltoDesemp := Value;
  FindAltoDesempHasValue := True;
end;

procedure TMdfeSefazInfPag.SetvAdiant(const Value: Double);
begin
  FvAdiant := Value;
  FvAdiantHasValue := True;
end;

procedure TMdfeSefazInfPag.SetindAntecipaAdiant(const Value: Integer);
begin
  FindAntecipaAdiant := Value;
  FindAntecipaAdiantHasValue := True;
end;

procedure TMdfeSefazInfPag.SetinfPrazo(const Value: TMdfeSefazInfPrazoList);
begin
  if Value <> FinfPrazo then
  begin
    FinfPrazo.Free;
    FinfPrazo := Value;
  end;
end;

procedure TMdfeSefazInfPag.SettpAntecip(const Value: Integer);
begin
  FtpAntecip := Value;
  FtpAntecipHasValue := True;
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

{ TMdfeSefazVeicTracao }

constructor TMdfeSefazVeicTracao.Create;
begin
  inherited;
  Fcondutor := TMdfeSefazCondutorList.Create;
end;

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

procedure TMdfeSefazVeicTracao.SetRENAVAM(const Value: string);
begin
  FRENAVAM := Value;
  FRENAVAMHasValue := True;
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

procedure TMdfeSefazVeicReboque.SetRENAVAM(const Value: string);
begin
  FRENAVAM := Value;
  FRENAVAMHasValue := True;
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

procedure TMdfeSefazVeicReboque.SetUF(const Value: string);
begin
  FUF := Value;
  FUFHasValue := True;
end;

{ TMdfeSefazRodo }

constructor TMdfeSefazRodo.Create;
begin
  inherited;
  FveicTracao := TMdfeSefazVeicTracao.Create;
end;

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

procedure TMdfeSefazTrem.SetdhTrem(const Value: TDateTime);
begin
  FdhTrem := Value;
  FdhTremHasValue := True;
end;

{ TMdfeSefazVag }

procedure TMdfeSefazVag.SettpVag(const Value: string);
begin
  FtpVag := Value;
  FtpVagHasValue := True;
end;

procedure TMdfeSefazVag.SetnSeq(const Value: Integer);
begin
  FnSeq := Value;
  FnSeqHasValue := True;
end;

{ TMdfeSefazFerrov }

constructor TMdfeSefazFerrov.Create;
begin
  inherited;
  Ftrem := TMdfeSefazTrem.Create;
  Fvag := TMdfeSefazVagList.Create;
end;

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

{ TMdfeSefazUnidCarga }

destructor TMdfeSefazUnidCarga.Destroy;
begin
  FlacUnidCarga.Free;
  inherited;
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

procedure TMdfeSefazPeri.SetqVolTipo(const Value: string);
begin
  FqVolTipo := Value;
  FqVolTipoHasValue := True;
end;

{ TMdfeSefazInfCTe }

destructor TMdfeSefazInfCTe.Destroy;
begin
  FinfEntregaParcial.Free;
  Fperi.Free;
  FinfUnidTransp.Free;
  inherited;
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

constructor TMdfeSefazInfDoc.Create;
begin
  inherited;
  FinfMunDescarga := TMdfeSefazInfMunDescargaList.Create;
end;

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

{ TMdfeSefazSeg }

constructor TMdfeSefazSeg.Create;
begin
  inherited;
  FinfResp := TMdfeSefazInfResp.Create;
end;

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

procedure TMdfeSefazInfLocalCarrega.SetCEP(const Value: string);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TMdfeSefazInfLocalCarrega.Setlatitude(const Value: string);
begin
  Flatitude := Value;
  FlatitudeHasValue := True;
end;

procedure TMdfeSefazInfLocalCarrega.Setlongitude(const Value: string);
begin
  Flongitude := Value;
  FlongitudeHasValue := True;
end;

{ TMdfeSefazInfLocalDescarrega }

procedure TMdfeSefazInfLocalDescarrega.SetCEP(const Value: string);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TMdfeSefazInfLocalDescarrega.Setlatitude(const Value: string);
begin
  Flatitude := Value;
  FlatitudeHasValue := True;
end;

procedure TMdfeSefazInfLocalDescarrega.Setlongitude(const Value: string);
begin
  Flongitude := Value;
  FlongitudeHasValue := True;
end;

{ TMdfeSefazInfLotacao }

constructor TMdfeSefazInfLotacao.Create;
begin
  inherited;
  FinfLocalCarrega := TMdfeSefazInfLocalCarrega.Create;
  FinfLocalDescarrega := TMdfeSefazInfLocalDescarrega.Create;
end;

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

{ TMdfeSefazInfMDFe }

constructor TMdfeSefazInfMDFe.Create;
begin
  inherited;
  Fide := TMdfeSefazIde.Create;
  Femit := TMdfeSefazEmit.Create;
  FinfModal := TMdfeSefazInfModal.Create;
  FinfDoc := TMdfeSefazInfDoc.Create;
  Ftot := TMdfeSefazTot.Create;
end;

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

constructor TMdfePedidoEmissao.Create;
begin
  inherited;
  FinfMDFe := TMdfeSefazInfMDFe.Create;
end;

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

procedure TMdfePedidoEmissaoLote.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
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

procedure TMdfeEncerramento.Setcodigo_municipio(const Value: string);
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

procedure TMdfeDocumentoVinculado.Setcodigo_municipio_descarga(const Value: string);
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

procedure TMdfePedidoInclusaoDfe.Setcodigo_municipio_carrega(const Value: string);
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

procedure TMdfeInclusaoDfe.Setcodigo_municipio_carrega(const Value: string);
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

{ TNfeSefazRefNFP }

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

procedure TNfeSefazIde.SetcNF(const Value: string);
begin
  FcNF := Value;
  FcNFHasValue := True;
end;

procedure TNfeSefazIde.Setmod(const Value: Integer);
begin
  Fmod := Value;
  FmodHasValue := True;
end;

procedure TNfeSefazIde.SetdhSaiEnt(const Value: TDateTime);
begin
  FdhSaiEnt := Value;
  FdhSaiEntHasValue := True;
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

procedure TNfeSefazIde.SetindIntermed(const Value: Integer);
begin
  FindIntermed := Value;
  FindIntermedHasValue := True;
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

procedure TNfeSefazEnderEmi.SetcMun(const Value: string);
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

procedure TNfeSefazEnderEmi.SetCEP(const Value: string);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TNfeSefazEnderEmi.SetcPais(const Value: string);
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

procedure TNfeSefazAvulsa.Setfone(const Value: string);
begin
  Ffone := Value;
  FfoneHasValue := True;
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

procedure TNfeSefazAvulsa.SetdPag(const Value: TDate);
begin
  FdPag := Value;
  FdPagHasValue := True;
end;

{ TNfeSefazEndereco }

procedure TNfeSefazEndereco.SetxCpl(const Value: string);
begin
  FxCpl := Value;
  FxCplHasValue := True;
end;

procedure TNfeSefazEndereco.SetCEP(const Value: string);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TNfeSefazEndereco.SetcPais(const Value: string);
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

procedure TNfeSefazLocal.SetxCpl(const Value: string);
begin
  FxCpl := Value;
  FxCplHasValue := True;
end;

procedure TNfeSefazLocal.SetCEP(const Value: string);
begin
  FCEP := Value;
  FCEPHasValue := True;
end;

procedure TNfeSefazLocal.SetcPais(const Value: string);
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

constructor TNfeSefazDI.Create;
begin
  inherited;
  Fadi := TNfeSefazAdiList.Create;
end;

destructor TNfeSefazDI.Destroy;
begin
  Fadi.Free;
  inherited;
end;

procedure TNfeSefazDI.SetvAFRMM(const Value: Double);
begin
  FvAFRMM := Value;
  FvAFRMMHasValue := True;
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

procedure TNfeSefazDI.Setadi(const Value: TNfeSefazAdiList);
begin
  if Value <> Fadi then
  begin
    Fadi.Free;
    Fadi := Value;
  end;
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

procedure TNfeSefazRastro.SetcAgreg(const Value: string);
begin
  FcAgreg := Value;
  FcAgregHasValue := True;
end;

{ TNfeSefazMed }

procedure TNfeSefazMed.SetxMotivoIsencao(const Value: string);
begin
  FxMotivoIsencao := Value;
  FxMotivoIsencaoHasValue := True;
end;

{ TNfeSefazEncerrante }

procedure TNfeSefazEncerrante.SetnBomba(const Value: Integer);
begin
  FnBomba := Value;
  FnBombaHasValue := True;
end;

{ TNfeSefazComb }

destructor TNfeSefazComb.Destroy;
begin
  Fencerrante.Free;
  FCIDE.Free;
  inherited;
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

procedure TNfeSefazProd.SetcBarra(const Value: string);
begin
  FcBarra := Value;
  FcBarraHasValue := True;
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

procedure TNfeSefazProd.SetcBarraTrib(const Value: string);
begin
  FcBarraTrib := Value;
  FcBarraTribHasValue := True;
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

procedure TNfeSefazICMSPart.SetpRedBC(const Value: Double);
begin
  FpRedBC := Value;
  FpRedBCHasValue := True;
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

procedure TNfeSefazICMSPart.SetvBCFCPST(const Value: Double);
begin
  FvBCFCPST := Value;
  FvBCFCPSTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetpFCPST(const Value: Double);
begin
  FpFCPST := Value;
  FpFCPSTHasValue := True;
end;

procedure TNfeSefazICMSPart.SetvFCPST(const Value: Double);
begin
  FvFCPST := Value;
  FvFCPSTHasValue := True;
end;

{ TNfeSefazICMSST }

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

{ TNfeSefazICMSSN201 }

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

{ TNfeSefazICMSSN202 }

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

{ TNfeSefazISSQN }

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

procedure TNfeSefazISSQN.SetcServico(const Value: string);
begin
  FcServico := Value;
  FcServicoHasValue := True;
end;

procedure TNfeSefazISSQN.SetcMun(const Value: string);
begin
  FcMun := Value;
  FcMunHasValue := True;
end;

procedure TNfeSefazISSQN.SetcPais(const Value: string);
begin
  FcPais := Value;
  FcPaisHasValue := True;
end;

procedure TNfeSefazISSQN.SetnProcesso(const Value: string);
begin
  FnProcesso := Value;
  FnProcessoHasValue := True;
end;

{ TNfeSefazPISOutr }

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

procedure TNfeSefazPISST.SetindSomaPISST(const Value: Integer);
begin
  FindSomaPISST := Value;
  FindSomaPISSTHasValue := True;
end;

{ TNfeSefazCOFINSOutr }

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

procedure TNfeSefazCOFINSST.SetindSomaCOFINSST(const Value: Integer);
begin
  FindSomaCOFINSST := Value;
  FindSomaCOFINSSTHasValue := True;
end;

{ TNfeSefazICMSUFDest }

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

procedure TNfeSefazICMSUFDest.SetvFCPUFDest(const Value: Double);
begin
  FvFCPUFDest := Value;
  FvFCPUFDestHasValue := True;
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

{ TNfeSefazImpostoDevol }

constructor TNfeSefazImpostoDevol.Create;
begin
  inherited;
  FIPI := TNfeSefazImpostoDevolIPI.Create;
end;

destructor TNfeSefazImpostoDevol.Destroy;
begin
  FIPI.Free;
  inherited;
end;

procedure TNfeSefazImpostoDevol.SetIPI(const Value: TNfeSefazImpostoDevolIPI);
begin
  if Value <> FIPI then
  begin
    FIPI.Free;
    FIPI := Value;
  end;
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

{ TNfeSefazObsItem }

destructor TNfeSefazObsItem.Destroy;
begin
  FobsFisco.Free;
  FobsCont.Free;
  inherited;
end;

procedure TNfeSefazObsItem.SetobsCont(const Value: TNfeSefazObsCont);
begin
  if Value <> FobsCont then
  begin
    FobsCont.Free;
    FobsCont := Value;
  end;
end;

procedure TNfeSefazObsItem.SetobsFisco(const Value: TNfeSefazObsFisco);
begin
  if Value <> FobsFisco then
  begin
    FobsFisco.Free;
    FobsFisco := Value;
  end;
end;

{ TNfeSefazDet }

constructor TNfeSefazDet.Create;
begin
  inherited;
  Fprod := TNfeSefazProd.Create;
  Fimposto := TNfeSefazImposto.Create;
end;

destructor TNfeSefazDet.Destroy;
begin
  FobsItem.Free;
  FimpostoDevol.Free;
  Fimposto.Free;
  Fprod.Free;
  inherited;
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

procedure TNfeSefazDet.SetobsItem(const Value: TNfeSefazObsItem);
begin
  if Value <> FobsItem then
  begin
    FobsItem.Free;
    FobsItem := Value;
  end;
end;

{ TNfeSefazICMSTot }

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

constructor TNfeSefazTotal.Create;
begin
  inherited;
  FICMSTot := TNfeSefazICMSTot.Create;
end;

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

{ TNfeSefazVeiculo }

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

procedure TNfeSefazDetPag.SetxPag(const Value: string);
begin
  FxPag := Value;
  FxPagHasValue := True;
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

constructor TNfeSefazPag.Create;
begin
  inherited;
  FdetPag := TNfeSefazDetPagList.Create;
end;

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

{ TNfeSefazInfAdicObsCont }

procedure TNfeSefazInfAdicObsCont.SetxCampo(const Value: string);
begin
  FxCampo := Value;
  FxCampoHasValue := True;
end;

procedure TNfeSefazInfAdicObsCont.SetxTexto(const Value: string);
begin
  FxTexto := Value;
  FxTextoHasValue := True;
end;

{ TNfeSefazInfAdicObsFisco }

procedure TNfeSefazInfAdicObsFisco.SetxCampo(const Value: string);
begin
  FxCampo := Value;
  FxCampoHasValue := True;
end;

procedure TNfeSefazInfAdicObsFisco.SetxTexto(const Value: string);
begin
  FxTexto := Value;
  FxTextoHasValue := True;
end;

{ TNfeSefazProcRef }

procedure TNfeSefazProcRef.SettpAto(const Value: string);
begin
  FtpAto := Value;
  FtpAtoHasValue := True;
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

procedure TNfeSefazInfAdic.SetobsCont(const Value: TNfeSefazInfAdicObsContList);
begin
  if Value <> FobsCont then
  begin
    FobsCont.Free;
    FobsCont := Value;
  end;
end;

procedure TNfeSefazInfAdic.SetobsFisco(const Value: TNfeSefazInfAdicObsFiscoList);
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

{ TNfeSefazCana }

constructor TNfeSefazCana.Create;
begin
  inherited;
  FforDia := TNfeSefazForDiaList.Create;
end;

destructor TNfeSefazCana.Destroy;
begin
  Fdeduc.Free;
  FforDia.Free;
  inherited;
end;

procedure TNfeSefazCana.SetforDia(const Value: TNfeSefazForDiaList);
begin
  if Value <> FforDia then
  begin
    FforDia.Free;
    FforDia := Value;
  end;
end;

procedure TNfeSefazCana.Setdeduc(const Value: TNfeSefazDeducList);
begin
  if Value <> Fdeduc then
  begin
    Fdeduc.Free;
    Fdeduc := Value;
  end;
end;

{ TNfeSefazInfRespTec }

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

{ TNfeSefazInfNFe }

constructor TNfeSefazInfNFe.Create;
begin
  inherited;
  Fide := TNfeSefazIde.Create;
  Femit := TNfeSefazEmit.Create;
  Fdet := TNfeSefazDetList.Create;
  Ftotal := TNfeSefazTotal.Create;
  Ftransp := TNfeSefazTransp.Create;
  Fpag := TNfeSefazPag.Create;
end;

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

constructor TNfePedidoEmissao.Create;
begin
  inherited;
  FinfNFe := TNfeSefazInfNFe.Create;
end;

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

procedure TNfePedidoEmissao.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
end;

{ TNfePedidoEmissaoLote }

constructor TNfePedidoEmissaoLote.Create;
begin
  inherited;
  Fdocumentos := TNfePedidoEmissaoList.Create;
end;

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

procedure TNfePedidoEmissaoLote.Setreferencia(const Value: string);
begin
  Freferencia := Value;
  FreferenciaHasValue := True;
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

{ TCnpjMotivoSituacaoCadastral }

procedure TCnpjMotivoSituacaoCadastral.Setdata(const Value: TDate);
begin
  Fdata := Value;
  FdataHasValue := True;
end;

procedure TCnpjMotivoSituacaoCadastral.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
  FcodigoHasValue := True;
end;

procedure TCnpjMotivoSituacaoCadastral.Setdescricao(const Value: string);
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

{ TCnpjSituacaoEspecial }

procedure TCnpjSituacaoEspecial.Setdata(const Value: TDate);
begin
  Fdata := Value;
  FdataHasValue := True;
end;

procedure TCnpjSituacaoEspecial.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
  FcodigoHasValue := True;
end;

procedure TCnpjSituacaoEspecial.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
  FdescricaoHasValue := True;
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

{ TCnpjOpcaoSimei }

procedure TCnpjOpcaoSimei.Setoptante(const Value: Boolean);
begin
  Foptante := Value;
  FoptanteHasValue := True;
end;

procedure TCnpjOpcaoSimei.Setdata_opcao(const Value: TDate);
begin
  Fdata_opcao := Value;
  Fdata_opcaoHasValue := True;
end;

procedure TCnpjOpcaoSimei.Setdata_exclusao(const Value: TDate);
begin
  Fdata_exclusao := Value;
  Fdata_exclusaoHasValue := True;
end;

{ TCnpjEmpresa }

destructor TCnpjEmpresa.Destroy;
begin
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

procedure TCnpjEmpresa.Setmotivo_situacao_cadastral(const Value: TCnpjMotivoSituacaoCadastral);
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

procedure TCnpjEmpresa.Setsituacao_especial(const Value: TCnpjSituacaoEspecial);
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

procedure TCnpjEmpresa.Setsimei(const Value: TCnpjOpcaoSimei);
begin
  if Value <> Fsimei then
  begin
    Fsimei.Free;
    Fsimei := Value;
  end;
end;

{ TCnpjListagem }

destructor TCnpjListagem.Destroy;
begin
  Fdata.Free;
  inherited;
end;

procedure TCnpjListagem.Set_count(const Value: Integer);
begin
  F_count := Value;
  F_countHasValue := True;
end;

procedure TCnpjListagem.Setdata(const Value: TCnpjEmpresaList);
begin
  if Value <> Fdata then
  begin
    Fdata.Free;
    Fdata := Value;
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
