unit NuvemFiscalClient;

interface

uses
  System.SysUtils, 
  OpenApiRest, 
  NuvemFiscalJson, 
  NuvemFiscalDtos;

type
  TRestService = class;
  TCepService = class;
  TCnpjService = class;
  TCteService = class;
  TEmpresaService = class;
  TMdfeService = class;
  TNfceService = class;
  TNfeService = class;
  TNfseService = class;
  TNuvemFiscalConfig = class;
  TNuvemFiscalClient = class;
  
  TRestService = class(TCustomRestService)
  protected
    function CreateConverter: TJsonConverter;
    function Converter: TJsonConverter;
  end;
  
  ICepService = interface(IInvokable)
    ['{F5350711-87FF-4AE2-852C-1EB18BD1CEA5}']
    /// <summary>
    /// Consultar endereço através do CEP
    /// </summary>
    /// <param name="Cep">
    /// CEP sem máscara.
    /// </param>
    function ConsultarCep(Cep: string): TCepEndereco;
  end;
  
  TCepService = class(TRestService, ICepService)
  public
    /// <param name="Cep">
    /// CEP sem máscara.
    /// </param>
    function ConsultarCep(Cep: string): TCepEndereco;
  end;
  
  ICnpjService = interface(IInvokable)
    ['{8E151A0C-46A6-4752-A292-DBE060A33E46}']
    /// <summary>
    /// Listar estabelecimentos a partir da base de CNPJ
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CnaePrincipal">
    /// Filtro pelo código CNAE da atividade principal do estabelecimento.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Municipio">
    /// Filtro pelo código IBGE ou TOM (Tabela de Órgãos e Municípios) do município do estabelecimento.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="NaturezaJuridica">
    /// Filtro pela natureza jurídica do estabelecimento
    ///  Utilize o valor de quatro dígitos sem máscara.
    /// </param>
    /// <remarks>
    /// Retorna uma lista de estabelecimentos de acordo com os critérios de busca utilizados.
    /// </remarks>
    function ListarCnpj(Top: Integer; Skip: Integer; CnaePrincipal: string; Municipio: string; NaturezaJuridica: string): TCnpjListagem;
    /// <summary>
    /// Consultar dados do CNPJ
    /// </summary>
    /// <param name="Cnpj">
    /// CNPJ sem máscara.
    /// </param>
    function ConsultarCnpj(Cnpj: string): TCnpjEmpresa;
  end;
  
  TCnpjService = class(TRestService, ICnpjService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CnaePrincipal">
    /// Filtro pelo código CNAE da atividade principal do estabelecimento.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Municipio">
    /// Filtro pelo código IBGE ou TOM (Tabela de Órgãos e Municípios) do município do estabelecimento.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="NaturezaJuridica">
    /// Filtro pela natureza jurídica do estabelecimento
    ///  Utilize o valor de quatro dígitos sem máscara.
    /// </param>
    function ListarCnpj(Top: Integer; Skip: Integer; CnaePrincipal: string; Municipio: string; NaturezaJuridica: string): TCnpjListagem;
    /// <param name="Cnpj">
    /// CNPJ sem máscara.
    /// </param>
    function ConsultarCnpj(Cnpj: string): TCnpjEmpresa;
  end;
  
  /// <summary>
  /// Conhecimento de Transporte Eletrônico.
  /// </summary>
  ICteService = interface(IInvokable)
    ['{B7F0519C-F96C-4AA1-B44C-2231911D7F1D}']
    /// <summary>
    /// Listar CT-e
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista de CT-e de acordo com os critérios de busca utilizados. Os CT-e são retornados ordenados pela data da criação, com os mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarCte(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeListagem;
    /// <summary>
    /// Emitir CT-e
    /// </summary>
    function EmitirCte(Body: TCtePedidoEmissao): TDfe;
    /// <summary>
    /// Consultar evento
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarEventoCte(Id: string): TDfeEvento;
    /// <summary>
    /// Baixar XML do evento
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlEventoCte(Id: string): TBytes;
    /// <summary>
    /// Inutilizar uma sequência de numeração de CT-e
    /// </summary>
    function InutilizarCte(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
    /// <summary>
    /// Consultar a inutilização de sequência de numeração
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarInutilizacaoCte(Id: string): TDfeInutilizacao;
    /// <summary>
    /// Baixar XML da inutilização
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlInutilizacaoCte(Id: string): TBytes;
    /// <summary>
    /// Listar lotes de CT-e
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista dos lotes de acordo com os critérios de busca utilizados. Os lotes são retornados ordenados pela data da criação, com os mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarLotesCte(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
    /// <summary>
    /// Emitir lote de CT-e
    /// </summary>
    function EmitirLoteCte(Body: TCtePedidoEmissaoLote): TDfeLote;
    /// <summary>
    /// Consultar lote de CT-e
    /// </summary>
    /// <param name="Id">
    /// ID único do lote gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Consulta os detalhes de um lote já existente. Forneça o ID único obtido de uma requisição de emissão ou de listagem de lotes e a Nuvem Fiscal irá retornar as informações do lote correspondente.
    /// </remarks>
    function ConsultarLoteCte(Id: string): TDfeLote;
    /// <summary>
    /// Consulta do Status do Serviço na SEFAZ Autorizadora
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <remarks>
    /// Consulta do status do serviço prestado pelo Portal da Secretaria de Fazenda Estadual.
    /// 
    /// A Nuvem Fiscal mantém a última consulta em cache por 5 minutos, evitando sobrecarregar desnecessariamente os servidores da SEFAZ (conforme orientação do MOC - versão 3.0.0a, item 4.6.3). Dessa forma, você poderá chamar esse endpoint quantas vezes quiser, sem preocupar-se em ter o seu CNPJ bloqueado por consumo indevido (Rejeição 656).
    /// </remarks>
    function ConsultarStatusSefazCte(CpfCnpj: string): TDfeSefazStatus;
    /// <summary>
    /// Consultar CT-e
    /// </summary>
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Consulta os detalhes de um CT-e já existente. Forneça o ID único obtido de uma requisição de emissão ou de listagem de CT-e e a Nuvem Fiscal irá retornar as informações do CT-e correspondente.
    /// </remarks>
    function ConsultarCte(Id: string): TDfe;
    /// <summary>
    /// Consultar o cancelamento do CT-e
    /// </summary>
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCancelamentoCte(Id: string): TDfeCancelamento;
    /// <summary>
    /// Cancelar um CT-e autorizado
    /// </summary>
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function CancelarCte(Body: TCtePedidoCancelamento; Id: string): TDfeCancelamento;
    /// <summary>
    /// Baixar XML do cancelamento
    /// </summary>
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoCte(Id: string): TBytes;
    /// <summary>
    /// Consultar a solicitação de correção do CT-e
    /// </summary>
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCartaCorrecaoCte(Id: string): TCteCartaCorrecao;
    /// <summary>
    /// Solicitar correção do CT-e
    /// </summary>
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// É possível enviar até 20 correções diferentes, sendo que será válido sempre a última correção enviada.
    /// </remarks>
    function CriarCartaCorrecaoCte(Body: TCtePedidoCartaCorrecao; Id: string): TCteCartaCorrecao;
    /// <summary>
    /// Baixar XML da carta de correção
    /// </summary>
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCartaCorrecaoCte(Id: string): TBytes;
    /// <summary>
    /// Baixar XML do CT-e processado
    /// </summary>
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCte(Id: string): TBytes;
  end;
  
  TCteService = class(TRestService, ICteService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarCte(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeListagem;
    function EmitirCte(Body: TCtePedidoEmissao): TDfe;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarEventoCte(Id: string): TDfeEvento;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlEventoCte(Id: string): TBytes;
    function InutilizarCte(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarInutilizacaoCte(Id: string): TDfeInutilizacao;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlInutilizacaoCte(Id: string): TBytes;
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarLotesCte(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
    function EmitirLoteCte(Body: TCtePedidoEmissaoLote): TDfeLote;
    /// <param name="Id">
    /// ID único do lote gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarLoteCte(Id: string): TDfeLote;
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarStatusSefazCte(CpfCnpj: string): TDfeSefazStatus;
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCte(Id: string): TDfe;
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCancelamentoCte(Id: string): TDfeCancelamento;
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function CancelarCte(Body: TCtePedidoCancelamento; Id: string): TDfeCancelamento;
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoCte(Id: string): TBytes;
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCartaCorrecaoCte(Id: string): TCteCartaCorrecao;
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function CriarCartaCorrecaoCte(Body: TCtePedidoCartaCorrecao; Id: string): TCteCartaCorrecao;
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCartaCorrecaoCte(Id: string): TBytes;
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCte(Id: string): TBytes;
  end;
  
  /// <summary>
  /// Cadastre e administre todas as empresas vinculadas à sua conta.
  /// </summary>
  IEmpresaService = interface(IInvokable)
    ['{F9F29CFD-FEC1-4997-804F-2BD718558EEE}']
    /// <summary>
    /// Consultar empresas
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <remarks>
    /// Retorna a lista das empresas associadas à sua conta. As empresas são retornadas ordenadas pela data da criação, com as mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarEmpresas(Top: Integer; Skip: Integer; CpfCnpj: string): TEmpresaListagem;
    /// <summary>
    /// Cadastrar empresa
    /// </summary>
    /// <remarks>
    /// Cadastre uma nova empresa (emitente ou prestador) à sua conta.
    /// </remarks>
    function CriarEmpresa(Body: TEmpresa): TEmpresa;
    /// <summary>
    /// Consultar empresa
    /// </summary>
    function ConsultarEmpresa(CpfCnpj: string): TEmpresa;
    /// <summary>
    /// Alterar empresa
    /// </summary>
    /// <remarks>
    /// Altera o cadastro de uma empresa (emitente/prestador) que esteja associada a sua conta.
    /// Nesse método, por tratar-se de um PUT, caso algum campo não seja informado, o valor dele será apagado.
    /// </remarks>
    function AtualizarEmpresa(Body: TEmpresa; CpfCnpj: string): TEmpresa;
    /// <summary>
    /// Deletar empresa
    /// </summary>
    procedure ExcluirEmpresa(CpfCnpj: string);
    /// <summary>
    /// Consultar certificado
    /// </summary>
    function ConsultarCertificadoEmpresa(CpfCnpj: string): TEmpresaCertificado;
    /// <summary>
    /// Cadastrar certificado
    /// </summary>
    /// <remarks>
    /// Cadastre ou atualize um certificado digital e vincule a sua empresa, para que possa iniciar a emissão de notas.
    /// * No parâmetro `certificado`, envie o binário do certificado digital (.pfx ou .p12) codificado em **base64**.
    /// </remarks>
    function CadastrarCertificadoEmpresa(Body: TEmpresaPedidoCadastroCertificado; CpfCnpj: string): TEmpresaCertificado;
    /// <summary>
    /// Deletar certificado
    /// </summary>
    procedure ExcluirCertificadoEmpresa(CpfCnpj: string);
    /// <summary>
    /// Consultar configuração de CT-e
    /// </summary>
    function ConsultarConfigCte(CpfCnpj: string): TEmpresaConfigCte;
    /// <summary>
    /// Alterar configuração de CT-e
    /// </summary>
    function AlterarConfigCte(Body: TEmpresaConfigCte; CpfCnpj: string): TEmpresaConfigCte;
    /// <summary>
    /// Consultar configuração de MDF-e
    /// </summary>
    function ConsultarConfigMdfe(CpfCnpj: string): TEmpresaConfigMdfe;
    /// <summary>
    /// Alterar configuração de MDF-e
    /// </summary>
    function AlterarConfigMdfe(Body: TEmpresaConfigMdfe; CpfCnpj: string): TEmpresaConfigMdfe;
    /// <summary>
    /// Consultar configuração de NFC-e
    /// </summary>
    function ConsultarConfigNfce(CpfCnpj: string): TEmpresaConfigNfce;
    /// <summary>
    /// Alterar configuração de NFC-e
    /// </summary>
    function AlterarConfigNfce(Body: TEmpresaConfigNfce; CpfCnpj: string): TEmpresaConfigNfce;
    /// <summary>
    /// Consultar configuração de NF-e
    /// </summary>
    function ConsultarConfigNfe(CpfCnpj: string): TEmpresaConfigNfe;
    /// <summary>
    /// Alterar configuração de NF-e
    /// </summary>
    function AlterarConfigNfe(Body: TEmpresaConfigNfe; CpfCnpj: string): TEmpresaConfigNfe;
    /// <summary>
    /// Consultar configuração de NFS-e
    /// </summary>
    function ConsultarConfigNfse(CpfCnpj: string): TEmpresaConfigNfse;
    /// <summary>
    /// Alterar configuração de NFS-e
    /// </summary>
    function AlterarConfigNfse(Body: TEmpresaConfigNfse; CpfCnpj: string): TEmpresaConfigNfse;
  end;
  
  TEmpresaService = class(TRestService, IEmpresaService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ListarEmpresas(Top: Integer; Skip: Integer; CpfCnpj: string): TEmpresaListagem;
    function CriarEmpresa(Body: TEmpresa): TEmpresa;
    function ConsultarEmpresa(CpfCnpj: string): TEmpresa;
    function AtualizarEmpresa(Body: TEmpresa; CpfCnpj: string): TEmpresa;
    procedure ExcluirEmpresa(CpfCnpj: string);
    function ConsultarCertificadoEmpresa(CpfCnpj: string): TEmpresaCertificado;
    function CadastrarCertificadoEmpresa(Body: TEmpresaPedidoCadastroCertificado; CpfCnpj: string): TEmpresaCertificado;
    procedure ExcluirCertificadoEmpresa(CpfCnpj: string);
    function ConsultarConfigCte(CpfCnpj: string): TEmpresaConfigCte;
    function AlterarConfigCte(Body: TEmpresaConfigCte; CpfCnpj: string): TEmpresaConfigCte;
    function ConsultarConfigMdfe(CpfCnpj: string): TEmpresaConfigMdfe;
    function AlterarConfigMdfe(Body: TEmpresaConfigMdfe; CpfCnpj: string): TEmpresaConfigMdfe;
    function ConsultarConfigNfce(CpfCnpj: string): TEmpresaConfigNfce;
    function AlterarConfigNfce(Body: TEmpresaConfigNfce; CpfCnpj: string): TEmpresaConfigNfce;
    function ConsultarConfigNfe(CpfCnpj: string): TEmpresaConfigNfe;
    function AlterarConfigNfe(Body: TEmpresaConfigNfe; CpfCnpj: string): TEmpresaConfigNfe;
    function ConsultarConfigNfse(CpfCnpj: string): TEmpresaConfigNfse;
    function AlterarConfigNfse(Body: TEmpresaConfigNfse; CpfCnpj: string): TEmpresaConfigNfse;
  end;
  
  /// <summary>
  /// Manifesto Eletrônico de Documentos Fiscais.
  /// </summary>
  IMdfeService = interface(IInvokable)
    ['{5E1D08DB-F0BC-4503-AAD9-D4B153FEBAF9}']
    /// <summary>
    /// Listar MDF-e
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista de manifestos de acordo com os critérios de busca utilizados. Os manifestos são retornados ordenados pela data da criação, com os mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarMdfe(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeListagem;
    /// <summary>
    /// Emitir MDF-e
    /// </summary>
    function EmitirMdfe(Body: TMdfePedidoEmissao): TDfe;
    /// <summary>
    /// Consultar evento do MDF-e
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarEventoMdfe(Id: string): TDfeEvento;
    /// <summary>
    /// Baixar XML do evento
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlEventoMdfe(Id: string): TBytes;
    /// <summary>
    /// Listar lotes de MDF-e
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista dos lotes de acordo com os critérios de busca utilizados. Os lotes são retornados ordenados pela data da criação, com os mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarLotesMdfe(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
    /// <summary>
    /// Emitir lote de MDF-e
    /// </summary>
    function EmitirLoteMdfe(Body: TMdfePedidoEmissaoLote): TDfeLote;
    /// <summary>
    /// Consultar lote de MDF-e
    /// </summary>
    /// <param name="Id">
    /// ID único do lote gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Consulta os detalhes de um lote já existente. Forneça o ID único obtido de uma requisição de emissão ou de listagem de lotes e a Nuvem Fiscal irá retornar as informações do lote correspondente.
    /// </remarks>
    function ConsultarLoteMdfe(Id: string): TDfeLote;
    /// <summary>
    /// Consulta do Status do Serviço na SEFAZ Autorizadora
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <remarks>
    /// Consulta do status do serviço prestado pelo Portal da Secretaria de Fazenda Estadual.
    /// 
    /// A Nuvem Fiscal mantém a última consulta em cache por 5 minutos, evitando sobrecarregar desnecessariamente os servidores da SEFAZ (conforme orientação do MOC - versão 3.0.0a, item 4.6.3). Dessa forma, você poderá chamar esse endpoint quantas vezes quiser, sem preocupar-se em ter o seu CNPJ bloqueado por consumo indevido (Rejeição 656).
    /// </remarks>
    function ConsultarStatusSefazMdfe(CpfCnpj: string): TDfeSefazStatus;
    /// <summary>
    /// Consultar manifesto
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Consulta os detalhes de um manifesto já existente. Forneça o ID único obtido de uma requisição de emissão ou de listagem de manifestos e a Nuvem Fiscal irá retornar as informações do manifesto correspondente.
    /// </remarks>
    function ConsultarMdfe(Id: string): TDfe;
    /// <summary>
    /// Consultar o cancelamento do MDF-e
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCancelamentoMdfe(Id: string): TDfeCancelamento;
    /// <summary>
    /// Cancelar um MDF-e autorizado
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function CancelarMdfe(Body: TMdfePedidoCancelamento; Id: string): TDfeCancelamento;
    /// <summary>
    /// Baixar XML do cancelamento
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoMdfe(Id: string): TBytes;
    /// <summary>
    /// Consultar encerramento do MDF-e
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarEncerramentoMdfe(Id: string): TMdfeEncerramento;
    /// <summary>
    /// Encerrar um MDF-e autorizado
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function EncerrarMdfe(Body: TMdfePedidoEncerramento; Id: string): TMdfeEncerramento;
    /// <summary>
    /// Baixar XML do encerramento
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlEncerramentoMdfe(Id: string): TBytes;
    /// <summary>
    /// Incluir um condutor em um MDF-e autorizado
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function IncluirCondutorMdfe(Body: TMdfePedidoInclusaoCondutor; Id: string): TMdfeInclusaoCondutor;
    /// <summary>
    /// Incluir um DF-e em um MDF-e autorizado
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function IncluirDfeMdfe(Body: TMdfePedidoInclusaoDfe; Id: string): TMdfeInclusaoDfe;
    /// <summary>
    /// Baixar XML do MDF-e processado
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlMdfe(Id: string): TBytes;
  end;
  
  TMdfeService = class(TRestService, IMdfeService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarMdfe(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeListagem;
    function EmitirMdfe(Body: TMdfePedidoEmissao): TDfe;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarEventoMdfe(Id: string): TDfeEvento;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlEventoMdfe(Id: string): TBytes;
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarLotesMdfe(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
    function EmitirLoteMdfe(Body: TMdfePedidoEmissaoLote): TDfeLote;
    /// <param name="Id">
    /// ID único do lote gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarLoteMdfe(Id: string): TDfeLote;
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarStatusSefazMdfe(CpfCnpj: string): TDfeSefazStatus;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarMdfe(Id: string): TDfe;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCancelamentoMdfe(Id: string): TDfeCancelamento;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function CancelarMdfe(Body: TMdfePedidoCancelamento; Id: string): TDfeCancelamento;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoMdfe(Id: string): TBytes;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarEncerramentoMdfe(Id: string): TMdfeEncerramento;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function EncerrarMdfe(Body: TMdfePedidoEncerramento; Id: string): TMdfeEncerramento;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlEncerramentoMdfe(Id: string): TBytes;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function IncluirCondutorMdfe(Body: TMdfePedidoInclusaoCondutor; Id: string): TMdfeInclusaoCondutor;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function IncluirDfeMdfe(Body: TMdfePedidoInclusaoDfe; Id: string): TMdfeInclusaoDfe;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlMdfe(Id: string): TBytes;
  end;
  
  /// <summary>
  /// Nota Fiscal de Consumidor Eletrônica.
  /// </summary>
  INfceService = interface(IInvokable)
    ['{FA91917B-DF86-4161-B005-93D0BD5C4A89}']
    /// <summary>
    /// Listar NFC-e
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista de notas de acordo com os critérios de busca utilizados. As notas são retornadas ordenadas pela data da criação, com as mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarNfce(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeListagem;
    /// <summary>
    /// Emitir NFC-e
    /// </summary>
    function EmitirNfce(Body: TNfePedidoEmissao): TDfe;
    /// <summary>
    /// Inutilizar uma sequência de numeração de NFC-e
    /// </summary>
    function InutilizarNfce(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
    /// <summary>
    /// Consultar a inutilização de sequência de numeração
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarInutilizacaoNfce(Id: string): TDfeInutilizacao;
    /// <summary>
    /// Baixar XML da inutilização
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlInutilizacaoNfce(Id: string): TBytes;
    /// <summary>
    /// Listar lotes de NFC-e
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista dos lotes de acordo com os critérios de busca utilizados. Os lotes são retornados ordenados pela data da criação, com os mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarLotesNfce(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
    /// <summary>
    /// Emitir lote de NFC-e
    /// </summary>
    function EmitirLoteNfce(Body: TNfePedidoEmissaoLote): TDfeLote;
    /// <summary>
    /// Consultar lote de NFC-e
    /// </summary>
    /// <param name="Id">
    /// ID único do lote gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Consulta os detalhes de um lote já existente. Forneça o ID único obtido de uma requisição de emissão ou de listagem de lotes e a Nuvem Fiscal irá retornar as informações do lote correspondente.
    /// </remarks>
    function ConsultarLoteNfce(Id: string): TDfeLote;
    /// <summary>
    /// Consulta do Status do Serviço na SEFAZ Autorizadora
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <remarks>
    /// Consulta do status do serviço prestado pelo Portal da Secretaria de Fazenda Estadual.
    /// 
    /// A Nuvem Fiscal mantém a última consulta em cache por 5 minutos, evitando sobrecarregar desnecessariamente os servidores da SEFAZ (conforme orientação do MOC - versão 7.0, item 5.5.3). Dessa forma, você poderá chamar esse endpoint quantas vezes quiser, sem preocupar-se em ter o seu CNPJ bloqueado por consumo indevido (Rejeição 656).
    /// </remarks>
    function ConsultarStatusSefazNfce(CpfCnpj: string): TDfeSefazStatus;
    /// <summary>
    /// Consultar NFC-e
    /// </summary>
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Consulta os detalhes de uma NFC-e já existente. Forneça o ID único obtido de uma requisição de emissão ou de listagem de notas e a Nuvem Fiscal irá retornar as informações da nota correspondente.
    /// </remarks>
    function ConsultarNfce(Id: string): TDfe;
    /// <summary>
    /// Consultar o cancelamento da NFC-e
    /// </summary>
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCancelamentoNfce(Id: string): TDfeCancelamento;
    /// <summary>
    /// Cancelar uma NFC-e autorizada
    /// </summary>
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function CancelarNfce(Body: TNfePedidoCancelamento; Id: string): TDfeCancelamento;
    /// <summary>
    /// Baixar XML do cancelamento
    /// </summary>
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoNfce(Id: string): TBytes;
    /// <summary>
    /// Baixar PDF do DANFCE
    /// </summary>
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfNfce(Id: string): TBytes;
    /// <summary>
    /// Baixar XML da NFC-e processada
    /// </summary>
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfce(Id: string): TBytes;
  end;
  
  TNfceService = class(TRestService, INfceService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarNfce(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeListagem;
    function EmitirNfce(Body: TNfePedidoEmissao): TDfe;
    function InutilizarNfce(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarInutilizacaoNfce(Id: string): TDfeInutilizacao;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlInutilizacaoNfce(Id: string): TBytes;
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarLotesNfce(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
    function EmitirLoteNfce(Body: TNfePedidoEmissaoLote): TDfeLote;
    /// <param name="Id">
    /// ID único do lote gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarLoteNfce(Id: string): TDfeLote;
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarStatusSefazNfce(CpfCnpj: string): TDfeSefazStatus;
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarNfce(Id: string): TDfe;
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCancelamentoNfce(Id: string): TDfeCancelamento;
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function CancelarNfce(Body: TNfePedidoCancelamento; Id: string): TDfeCancelamento;
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoNfce(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfNfce(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfce(Id: string): TBytes;
  end;
  
  /// <summary>
  /// Nota Fiscal Eletrônica.
  /// </summary>
  INfeService = interface(IInvokable)
    ['{D906B9B9-704D-44DF-856B-3E84AF1B3CD0}']
    /// <summary>
    /// Listar NF-e
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista de notas de acordo com os critérios de busca utilizados. As notas são retornadas ordenadas pela data da criação, com as mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarNfe(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeListagem;
    /// <summary>
    /// Emitir NF-e
    /// </summary>
    function EmitirNfe(Body: TNfePedidoEmissao): TDfe;
    /// <summary>
    /// Consultar evento
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarEventoNfe(Id: string): TDfeEvento;
    /// <summary>
    /// Baixar XML do evento
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlEventoNfe(Id: string): TBytes;
    /// <summary>
    /// Inutilizar uma sequência de numeração de NF-e
    /// </summary>
    function InutilizarNfe(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
    /// <summary>
    /// Consultar a inutilização de sequência de numeração
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarInutilizacaoNfe(Id: string): TDfeInutilizacao;
    /// <summary>
    /// Baixar XML da inutilização
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlInutilizacaoNfe(Id: string): TBytes;
    /// <summary>
    /// Listar lotes de NF-e
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista dos lotes de acordo com os critérios de busca utilizados. Os lotes são retornados ordenados pela data da criação, com os mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarLotesNfe(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
    /// <summary>
    /// Emitir lote de NF-e
    /// </summary>
    function EmitirLoteNfe(Body: TNfePedidoEmissaoLote): TDfeLote;
    /// <summary>
    /// Consultar lote de NF-e
    /// </summary>
    /// <param name="Id">
    /// ID único do lote gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Consulta os detalhes de um lote já existente. Forneça o ID único obtido de uma requisição de emissão ou de listagem de lotes e a Nuvem Fiscal irá retornar as informações do lote correspondente.
    /// </remarks>
    function ConsultarLoteNfe(Id: string): TDfeLote;
    /// <summary>
    /// Consulta do Status do Serviço na SEFAZ Autorizadora
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <remarks>
    /// Consulta do status do serviço prestado pelo Portal da Secretaria de Fazenda Estadual.
    /// 
    /// A Nuvem Fiscal mantém a última consulta em cache por 5 minutos, evitando sobrecarregar desnecessariamente os servidores da SEFAZ (conforme orientação do MOC - versão 7.0, item 5.5.3). Dessa forma, você poderá chamar esse endpoint quantas vezes quiser, sem preocupar-se em ter o seu CNPJ bloqueado por consumo indevido (Rejeição 656).
    /// </remarks>
    function ConsultarStatusSefazNfe(CpfCnpj: string): TDfeSefazStatus;
    /// <summary>
    /// Consultar NF-e
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Consulta os detalhes de uma NF-e já existente. Forneça o ID único obtido de uma requisição de emissão ou de listagem de notas e a Nuvem Fiscal irá retornar as informações da nota correspondente.
    /// </remarks>
    function ConsultarNfe(Id: string): TDfe;
    /// <summary>
    /// Consultar o cancelamento da NF-e
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCancelamentoNfe(Id: string): TDfeCancelamento;
    /// <summary>
    /// Cancelar uma NF-e autorizada
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function CancelarNfe(Body: TNfePedidoCancelamento; Id: string): TDfeCancelamento;
    /// <summary>
    /// Baixar XML do cancelamento
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoNfe(Id: string): TBytes;
    /// <summary>
    /// Consultar a solicitação de correção da NF-e
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCartaCorrecaoNfe(Id: string): TDfeCartaCorrecao;
    /// <summary>
    /// Solicitar correção da NF-e
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// É possível enviar até 20 correções diferentes, sendo que será válido sempre a última correção enviada.
    /// </remarks>
    function CriarCartaCorrecaoNfe(Body: TNfePedidoCartaCorrecao; Id: string): TDfeCartaCorrecao;
    /// <summary>
    /// Baixar XML da carta de correção
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCartaCorrecaoNfe(Id: string): TBytes;
    /// <summary>
    /// Baixar PDF do DANFE
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfNfe(Id: string): TBytes;
    /// <summary>
    /// Baixar XML da NF-e processada
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfe(Id: string): TBytes;
  end;
  
  TNfeService = class(TRestService, INfeService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarNfe(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeListagem;
    function EmitirNfe(Body: TNfePedidoEmissao): TDfe;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarEventoNfe(Id: string): TDfeEvento;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlEventoNfe(Id: string): TBytes;
    function InutilizarNfe(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarInutilizacaoNfe(Id: string): TDfeInutilizacao;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlInutilizacaoNfe(Id: string): TBytes;
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarLotesNfe(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
    function EmitirLoteNfe(Body: TNfePedidoEmissaoLote): TDfeLote;
    /// <param name="Id">
    /// ID único do lote gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarLoteNfe(Id: string): TDfeLote;
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarStatusSefazNfe(CpfCnpj: string): TDfeSefazStatus;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarNfe(Id: string): TDfe;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCancelamentoNfe(Id: string): TDfeCancelamento;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function CancelarNfe(Body: TNfePedidoCancelamento; Id: string): TDfeCancelamento;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoNfe(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCartaCorrecaoNfe(Id: string): TDfeCartaCorrecao;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function CriarCartaCorrecaoNfe(Body: TNfePedidoCartaCorrecao; Id: string): TDfeCartaCorrecao;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCartaCorrecaoNfe(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfNfe(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfe(Id: string): TBytes;
  end;
  
  /// <summary>
  /// Nota Fiscal de Serviço Eletrônica.
  /// </summary>
  INfseService = interface(IInvokable)
    ['{00351D96-6B77-4D0B-88A2-7519492A12B6}']
    /// <summary>
    /// Listar NFS-e
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista de notas de acordo com os critérios de busca utilizados. As notas são retornadas ordenadas pela data da criação, com as mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarNfse(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TNfseListagem;
    /// <summary>
    /// Emitir NFS-e
    /// </summary>
    function EmitirNfse(Body: TNfsePedidoEmissao): TNfse;
    /// <summary>
    /// Listar lotes de NFS-e
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista dos lotes de acordo com os critérios de busca utilizados. Os lotes são retornados ordenados pela data da criação, com os mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarLotesNfse(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TRpsLoteListagem;
    /// <summary>
    /// Emitir lote de NFS-e
    /// </summary>
    function EmitirLoteNfse(Body: TRpsPedidoEmissaoLote): TRpsLote;
    /// <summary>
    /// Consultar lote de NFS-e
    /// </summary>
    /// <param name="Id">
    /// ID único do lote gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Consulta os detalhes de um lote já existente. Forneça o ID único obtido de uma requisição de emissão ou de listagem de lotes e a Nuvem Fiscal irá retornar as informações do lote correspondente.
    /// </remarks>
    function ConsultarLoteNfse(Id: string): TRpsLote;
    /// <summary>
    /// Consultar NFS-e
    /// </summary>
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Consulta os detalhes de uma NFS-e já existente. Forneça o ID único obtido de uma requisição de criação ou de listagem de notas e a Nuvem Fiscal irá retornar as informações da nota correspondente.
    /// </remarks>
    function ConsultarNfse(Id: string): TNfse;
    /// <summary>
    /// Consultar o cancelamento da NFS-e
    /// </summary>
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCancelamentoNfse(Id: string): TNfseCancelamento;
    /// <summary>
    /// Cancelar uma NFS-e autorizada
    /// </summary>
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    function CancelarNfse(Id: string): TNfseCancelamento;
    /// <summary>
    /// Baixar XML da NFS-e processada
    /// </summary>
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfse(Id: string): TBytes;
  end;
  
  TNfseService = class(TRestService, INfseService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarNfse(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TNfseListagem;
    function EmitirNfse(Body: TNfsePedidoEmissao): TNfse;
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// Valor padrão: `10`.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarLotesNfse(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TRpsLoteListagem;
    function EmitirLoteNfse(Body: TRpsPedidoEmissaoLote): TRpsLote;
    /// <param name="Id">
    /// ID único do lote gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarLoteNfse(Id: string): TRpsLote;
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarNfse(Id: string): TNfse;
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCancelamentoNfse(Id: string): TNfseCancelamento;
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    function CancelarNfse(Id: string): TNfseCancelamento;
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfse(Id: string): TBytes;
  end;
  
  TNuvemFiscalConfig = class(TCustomRestConfig)
  public
    constructor Create;
  end;
  
  INuvemFiscalClient = interface(IRestClient)
    function Cep: ICepService;
    function Cnpj: ICnpjService;
    /// <summary>
    /// Conhecimento de Transporte Eletrônico.
    /// </summary>
    function Cte: ICteService;
    /// <summary>
    /// Cadastre e administre todas as empresas vinculadas à sua conta.
    /// </summary>
    function Empresa: IEmpresaService;
    /// <summary>
    /// Manifesto Eletrônico de Documentos Fiscais.
    /// </summary>
    function Mdfe: IMdfeService;
    /// <summary>
    /// Nota Fiscal de Consumidor Eletrônica.
    /// </summary>
    function Nfce: INfceService;
    /// <summary>
    /// Nota Fiscal Eletrônica.
    /// </summary>
    function Nfe: INfeService;
    /// <summary>
    /// Nota Fiscal de Serviço Eletrônica.
    /// </summary>
    function Nfse: INfseService;
  end;
  
  TNuvemFiscalClient = class(TCustomRestClient, INuvemFiscalClient)
  public
    function Cep: ICepService;
    function Cnpj: ICnpjService;
    function Cte: ICteService;
    function Empresa: IEmpresaService;
    function Mdfe: IMdfeService;
    function Nfce: INfceService;
    function Nfe: INfeService;
    function Nfse: INfseService;
    constructor Create;
  end;
  
implementation

{ TRestService }

function TRestService.CreateConverter: TJsonConverter;
begin
  Result := TJsonConverter.Create;
end;

function TRestService.Converter: TJsonConverter;
begin
  Result := TJsonConverter(inherited Converter);
end;

{ TCepService }

function TCepService.ConsultarCep(Cep: string): TCepEndereco;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cep/{Cep}', 'GET');
  Request.AddUrlParam('Cep', Cep);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TCepEnderecoFromJson(Response.ContentAsString);
end;

{ TCnpjService }

function TCnpjService.ListarCnpj(Top: Integer; Skip: Integer; CnaePrincipal: string; Municipio: string; NaturezaJuridica: string): TCnpjListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cnpj', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('cnae_principal', CnaePrincipal);
  Request.AddQueryParam('municipio', Municipio);
  Request.AddQueryParam('natureza_juridica', NaturezaJuridica);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TCnpjListagemFromJson(Response.ContentAsString);
end;

function TCnpjService.ConsultarCnpj(Cnpj: string): TCnpjEmpresa;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cnpj/{Cnpj}', 'GET');
  Request.AddUrlParam('Cnpj', Cnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TCnpjEmpresaFromJson(Response.ContentAsString);
end;

{ TCteService }

function TCteService.ListarCte(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeListagemFromJson(Response.ContentAsString);
end;

function TCteService.EmitirCte(Body: TCtePedidoEmissao): TDfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte', 'POST');
  Request.AddBody(Converter.TCtePedidoEmissaoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeFromJson(Response.ContentAsString);
end;

function TCteService.ConsultarEventoCte(Id: string): TDfeEvento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/eventos/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeEventoFromJson(Response.ContentAsString);
end;

function TCteService.BaixarXmlEventoCte(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/eventos/{id}/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TCteService.InutilizarCte(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/inutilizacoes', 'POST');
  Request.AddBody(Converter.TDfePedidoInutilizacaoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeInutilizacaoFromJson(Response.ContentAsString);
end;

function TCteService.ConsultarInutilizacaoCte(Id: string): TDfeInutilizacao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/inutilizacoes/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeInutilizacaoFromJson(Response.ContentAsString);
end;

function TCteService.BaixarXmlInutilizacaoCte(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/inutilizacoes/{id}/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TCteService.ListarLotesCte(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/lotes', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeLoteListagemFromJson(Response.ContentAsString);
end;

function TCteService.EmitirLoteCte(Body: TCtePedidoEmissaoLote): TDfeLote;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/lotes', 'POST');
  Request.AddBody(Converter.TCtePedidoEmissaoLoteToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeLoteFromJson(Response.ContentAsString);
end;

function TCteService.ConsultarLoteCte(Id: string): TDfeLote;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/lotes/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeLoteFromJson(Response.ContentAsString);
end;

function TCteService.ConsultarStatusSefazCte(CpfCnpj: string): TDfeSefazStatus;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/sefaz/status', 'GET');
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeSefazStatusFromJson(Response.ContentAsString);
end;

function TCteService.ConsultarCte(Id: string): TDfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeFromJson(Response.ContentAsString);
end;

function TCteService.ConsultarCancelamentoCte(Id: string): TDfeCancelamento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/{id}/cancelamento', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeCancelamentoFromJson(Response.ContentAsString);
end;

function TCteService.CancelarCte(Body: TCtePedidoCancelamento; Id: string): TDfeCancelamento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/{id}/cancelamento', 'POST');
  Request.AddBody(Converter.TCtePedidoCancelamentoToJson(Body));
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeCancelamentoFromJson(Response.ContentAsString);
end;

function TCteService.BaixarXmlCancelamentoCte(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/{id}/cancelamento/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TCteService.ConsultarCartaCorrecaoCte(Id: string): TCteCartaCorrecao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/{id}/carta-correcao', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TCteCartaCorrecaoFromJson(Response.ContentAsString);
end;

function TCteService.CriarCartaCorrecaoCte(Body: TCtePedidoCartaCorrecao; Id: string): TCteCartaCorrecao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/{id}/carta-correcao', 'POST');
  Request.AddBody(Converter.TCtePedidoCartaCorrecaoToJson(Body));
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TCteCartaCorrecaoFromJson(Response.ContentAsString);
end;

function TCteService.BaixarXmlCartaCorrecaoCte(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/{id}/carta-correcao/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TCteService.BaixarXmlCte(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/{id}/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

{ TEmpresaService }

function TEmpresaService.ListarEmpresas(Top: Integer; Skip: Integer; CpfCnpj: string): TEmpresaListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaListagemFromJson(Response.ContentAsString);
end;

function TEmpresaService.CriarEmpresa(Body: TEmpresa): TEmpresa;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas', 'POST');
  Request.AddBody(Converter.TEmpresaToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaFromJson(Response.ContentAsString);
end;

function TEmpresaService.ConsultarEmpresa(CpfCnpj: string): TEmpresa;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}', 'GET');
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaFromJson(Response.ContentAsString);
end;

function TEmpresaService.AtualizarEmpresa(Body: TEmpresa; CpfCnpj: string): TEmpresa;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}', 'PUT');
  Request.AddBody(Converter.TEmpresaToJson(Body));
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaFromJson(Response.ContentAsString);
end;

procedure TEmpresaService.ExcluirEmpresa(CpfCnpj: string);
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}', 'DELETE');
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Response := Request.Execute;
  CheckError(Response);
end;

function TEmpresaService.ConsultarCertificadoEmpresa(CpfCnpj: string): TEmpresaCertificado;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/certificado', 'GET');
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaCertificadoFromJson(Response.ContentAsString);
end;

function TEmpresaService.CadastrarCertificadoEmpresa(Body: TEmpresaPedidoCadastroCertificado; CpfCnpj: string): TEmpresaCertificado;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/certificado', 'PUT');
  Request.AddBody(Converter.TEmpresaPedidoCadastroCertificadoToJson(Body));
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaCertificadoFromJson(Response.ContentAsString);
end;

procedure TEmpresaService.ExcluirCertificadoEmpresa(CpfCnpj: string);
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/certificado', 'DELETE');
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Response := Request.Execute;
  CheckError(Response);
end;

function TEmpresaService.ConsultarConfigCte(CpfCnpj: string): TEmpresaConfigCte;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/cte', 'GET');
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaConfigCteFromJson(Response.ContentAsString);
end;

function TEmpresaService.AlterarConfigCte(Body: TEmpresaConfigCte; CpfCnpj: string): TEmpresaConfigCte;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/cte', 'PUT');
  Request.AddBody(Converter.TEmpresaConfigCteToJson(Body));
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaConfigCteFromJson(Response.ContentAsString);
end;

function TEmpresaService.ConsultarConfigMdfe(CpfCnpj: string): TEmpresaConfigMdfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/mdfe', 'GET');
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaConfigMdfeFromJson(Response.ContentAsString);
end;

function TEmpresaService.AlterarConfigMdfe(Body: TEmpresaConfigMdfe; CpfCnpj: string): TEmpresaConfigMdfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/mdfe', 'PUT');
  Request.AddBody(Converter.TEmpresaConfigMdfeToJson(Body));
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaConfigMdfeFromJson(Response.ContentAsString);
end;

function TEmpresaService.ConsultarConfigNfce(CpfCnpj: string): TEmpresaConfigNfce;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/nfce', 'GET');
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaConfigNfceFromJson(Response.ContentAsString);
end;

function TEmpresaService.AlterarConfigNfce(Body: TEmpresaConfigNfce; CpfCnpj: string): TEmpresaConfigNfce;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/nfce', 'PUT');
  Request.AddBody(Converter.TEmpresaConfigNfceToJson(Body));
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaConfigNfceFromJson(Response.ContentAsString);
end;

function TEmpresaService.ConsultarConfigNfe(CpfCnpj: string): TEmpresaConfigNfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/nfe', 'GET');
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaConfigNfeFromJson(Response.ContentAsString);
end;

function TEmpresaService.AlterarConfigNfe(Body: TEmpresaConfigNfe; CpfCnpj: string): TEmpresaConfigNfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/nfe', 'PUT');
  Request.AddBody(Converter.TEmpresaConfigNfeToJson(Body));
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaConfigNfeFromJson(Response.ContentAsString);
end;

function TEmpresaService.ConsultarConfigNfse(CpfCnpj: string): TEmpresaConfigNfse;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/nfse', 'GET');
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaConfigNfseFromJson(Response.ContentAsString);
end;

function TEmpresaService.AlterarConfigNfse(Body: TEmpresaConfigNfse; CpfCnpj: string): TEmpresaConfigNfse;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/nfse', 'PUT');
  Request.AddBody(Converter.TEmpresaConfigNfseToJson(Body));
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaConfigNfseFromJson(Response.ContentAsString);
end;

{ TMdfeService }

function TMdfeService.ListarMdfe(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeListagemFromJson(Response.ContentAsString);
end;

function TMdfeService.EmitirMdfe(Body: TMdfePedidoEmissao): TDfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe', 'POST');
  Request.AddBody(Converter.TMdfePedidoEmissaoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeFromJson(Response.ContentAsString);
end;

function TMdfeService.ConsultarEventoMdfe(Id: string): TDfeEvento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/eventos/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeEventoFromJson(Response.ContentAsString);
end;

function TMdfeService.BaixarXmlEventoMdfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/eventos/{id}/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TMdfeService.ListarLotesMdfe(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/lotes', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeLoteListagemFromJson(Response.ContentAsString);
end;

function TMdfeService.EmitirLoteMdfe(Body: TMdfePedidoEmissaoLote): TDfeLote;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/lotes', 'POST');
  Request.AddBody(Converter.TMdfePedidoEmissaoLoteToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeLoteFromJson(Response.ContentAsString);
end;

function TMdfeService.ConsultarLoteMdfe(Id: string): TDfeLote;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/lotes/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeLoteFromJson(Response.ContentAsString);
end;

function TMdfeService.ConsultarStatusSefazMdfe(CpfCnpj: string): TDfeSefazStatus;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/sefaz/status', 'GET');
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeSefazStatusFromJson(Response.ContentAsString);
end;

function TMdfeService.ConsultarMdfe(Id: string): TDfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeFromJson(Response.ContentAsString);
end;

function TMdfeService.ConsultarCancelamentoMdfe(Id: string): TDfeCancelamento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/cancelamento', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeCancelamentoFromJson(Response.ContentAsString);
end;

function TMdfeService.CancelarMdfe(Body: TMdfePedidoCancelamento; Id: string): TDfeCancelamento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/cancelamento', 'POST');
  Request.AddBody(Converter.TMdfePedidoCancelamentoToJson(Body));
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeCancelamentoFromJson(Response.ContentAsString);
end;

function TMdfeService.BaixarXmlCancelamentoMdfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/cancelamento/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TMdfeService.ConsultarEncerramentoMdfe(Id: string): TMdfeEncerramento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/encerramento', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TMdfeEncerramentoFromJson(Response.ContentAsString);
end;

function TMdfeService.EncerrarMdfe(Body: TMdfePedidoEncerramento; Id: string): TMdfeEncerramento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/encerramento', 'POST');
  Request.AddBody(Converter.TMdfePedidoEncerramentoToJson(Body));
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TMdfeEncerramentoFromJson(Response.ContentAsString);
end;

function TMdfeService.BaixarXmlEncerramentoMdfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/encerramento/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TMdfeService.IncluirCondutorMdfe(Body: TMdfePedidoInclusaoCondutor; Id: string): TMdfeInclusaoCondutor;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/inclusao-condutor', 'POST');
  Request.AddBody(Converter.TMdfePedidoInclusaoCondutorToJson(Body));
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TMdfeInclusaoCondutorFromJson(Response.ContentAsString);
end;

function TMdfeService.IncluirDfeMdfe(Body: TMdfePedidoInclusaoDfe; Id: string): TMdfeInclusaoDfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/inclusao-dfe', 'POST');
  Request.AddBody(Converter.TMdfePedidoInclusaoDfeToJson(Body));
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TMdfeInclusaoDfeFromJson(Response.ContentAsString);
end;

function TMdfeService.BaixarXmlMdfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

{ TNfceService }

function TNfceService.ListarNfce(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeListagemFromJson(Response.ContentAsString);
end;

function TNfceService.EmitirNfce(Body: TNfePedidoEmissao): TDfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce', 'POST');
  Request.AddBody(Converter.TNfePedidoEmissaoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeFromJson(Response.ContentAsString);
end;

function TNfceService.InutilizarNfce(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/inutilizacoes', 'POST');
  Request.AddBody(Converter.TDfePedidoInutilizacaoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeInutilizacaoFromJson(Response.ContentAsString);
end;

function TNfceService.ConsultarInutilizacaoNfce(Id: string): TDfeInutilizacao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/inutilizacoes/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeInutilizacaoFromJson(Response.ContentAsString);
end;

function TNfceService.BaixarXmlInutilizacaoNfce(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/inutilizacoes/{id}/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfceService.ListarLotesNfce(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/lotes', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeLoteListagemFromJson(Response.ContentAsString);
end;

function TNfceService.EmitirLoteNfce(Body: TNfePedidoEmissaoLote): TDfeLote;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/lotes', 'POST');
  Request.AddBody(Converter.TNfePedidoEmissaoLoteToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeLoteFromJson(Response.ContentAsString);
end;

function TNfceService.ConsultarLoteNfce(Id: string): TDfeLote;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/lotes/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeLoteFromJson(Response.ContentAsString);
end;

function TNfceService.ConsultarStatusSefazNfce(CpfCnpj: string): TDfeSefazStatus;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/sefaz/status', 'GET');
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeSefazStatusFromJson(Response.ContentAsString);
end;

function TNfceService.ConsultarNfce(Id: string): TDfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeFromJson(Response.ContentAsString);
end;

function TNfceService.ConsultarCancelamentoNfce(Id: string): TDfeCancelamento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/{id}/cancelamento', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeCancelamentoFromJson(Response.ContentAsString);
end;

function TNfceService.CancelarNfce(Body: TNfePedidoCancelamento; Id: string): TDfeCancelamento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/{id}/cancelamento', 'POST');
  Request.AddBody(Converter.TNfePedidoCancelamentoToJson(Body));
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeCancelamentoFromJson(Response.ContentAsString);
end;

function TNfceService.BaixarXmlCancelamentoNfce(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/{id}/cancelamento/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfceService.BaixarPdfNfce(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/{id}/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfceService.BaixarXmlNfce(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/{id}/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

{ TNfeService }

function TNfeService.ListarNfe(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeListagemFromJson(Response.ContentAsString);
end;

function TNfeService.EmitirNfe(Body: TNfePedidoEmissao): TDfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe', 'POST');
  Request.AddBody(Converter.TNfePedidoEmissaoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeFromJson(Response.ContentAsString);
end;

function TNfeService.ConsultarEventoNfe(Id: string): TDfeEvento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/eventos/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeEventoFromJson(Response.ContentAsString);
end;

function TNfeService.BaixarXmlEventoNfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/eventos/{id}/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfeService.InutilizarNfe(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/inutilizacoes', 'POST');
  Request.AddBody(Converter.TDfePedidoInutilizacaoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeInutilizacaoFromJson(Response.ContentAsString);
end;

function TNfeService.ConsultarInutilizacaoNfe(Id: string): TDfeInutilizacao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/inutilizacoes/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeInutilizacaoFromJson(Response.ContentAsString);
end;

function TNfeService.BaixarXmlInutilizacaoNfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/inutilizacoes/{id}/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfeService.ListarLotesNfe(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/lotes', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeLoteListagemFromJson(Response.ContentAsString);
end;

function TNfeService.EmitirLoteNfe(Body: TNfePedidoEmissaoLote): TDfeLote;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/lotes', 'POST');
  Request.AddBody(Converter.TNfePedidoEmissaoLoteToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeLoteFromJson(Response.ContentAsString);
end;

function TNfeService.ConsultarLoteNfe(Id: string): TDfeLote;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/lotes/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeLoteFromJson(Response.ContentAsString);
end;

function TNfeService.ConsultarStatusSefazNfe(CpfCnpj: string): TDfeSefazStatus;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/sefaz/status', 'GET');
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeSefazStatusFromJson(Response.ContentAsString);
end;

function TNfeService.ConsultarNfe(Id: string): TDfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeFromJson(Response.ContentAsString);
end;

function TNfeService.ConsultarCancelamentoNfe(Id: string): TDfeCancelamento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}/cancelamento', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeCancelamentoFromJson(Response.ContentAsString);
end;

function TNfeService.CancelarNfe(Body: TNfePedidoCancelamento; Id: string): TDfeCancelamento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}/cancelamento', 'POST');
  Request.AddBody(Converter.TNfePedidoCancelamentoToJson(Body));
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeCancelamentoFromJson(Response.ContentAsString);
end;

function TNfeService.BaixarXmlCancelamentoNfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}/cancelamento/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfeService.ConsultarCartaCorrecaoNfe(Id: string): TDfeCartaCorrecao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}/carta-correcao', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeCartaCorrecaoFromJson(Response.ContentAsString);
end;

function TNfeService.CriarCartaCorrecaoNfe(Body: TNfePedidoCartaCorrecao; Id: string): TDfeCartaCorrecao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}/carta-correcao', 'POST');
  Request.AddBody(Converter.TNfePedidoCartaCorrecaoToJson(Body));
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeCartaCorrecaoFromJson(Response.ContentAsString);
end;

function TNfeService.BaixarXmlCartaCorrecaoNfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}/carta-correcao/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfeService.BaixarPdfNfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfeService.BaixarXmlNfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

{ TNfseService }

function TNfseService.ListarNfse(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TNfseListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TNfseListagemFromJson(Response.ContentAsString);
end;

function TNfseService.EmitirNfse(Body: TNfsePedidoEmissao): TNfse;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse', 'POST');
  Request.AddBody(Converter.TNfsePedidoEmissaoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TNfseFromJson(Response.ContentAsString);
end;

function TNfseService.ListarLotesNfse(Top: Integer; Skip: Integer; CpfCnpj: string; Referencia: string; Ambiente: string): TRpsLoteListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/lotes', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TRpsLoteListagemFromJson(Response.ContentAsString);
end;

function TNfseService.EmitirLoteNfse(Body: TRpsPedidoEmissaoLote): TRpsLote;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/lotes', 'POST');
  Request.AddBody(Converter.TRpsPedidoEmissaoLoteToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TRpsLoteFromJson(Response.ContentAsString);
end;

function TNfseService.ConsultarLoteNfse(Id: string): TRpsLote;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/lotes/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TRpsLoteFromJson(Response.ContentAsString);
end;

function TNfseService.ConsultarNfse(Id: string): TNfse;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TNfseFromJson(Response.ContentAsString);
end;

function TNfseService.ConsultarCancelamentoNfse(Id: string): TNfseCancelamento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/{id}/cancelamento', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TNfseCancelamentoFromJson(Response.ContentAsString);
end;

function TNfseService.CancelarNfse(Id: string): TNfseCancelamento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/{id}/cancelamento', 'POST');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TNfseCancelamentoFromJson(Response.ContentAsString);
end;

function TNfseService.BaixarXmlNfse(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/{id}/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

{ TNuvemFiscalConfig }

constructor TNuvemFiscalConfig.Create;
begin
  inherited Create;
  BaseUrl := 'https://api.nuvemfiscal.com.br/';
end;

{ TNuvemFiscalClient }

function TNuvemFiscalClient.Cep: ICepService;
begin
  Result := TCepService.Create(Config);
end;

function TNuvemFiscalClient.Cnpj: ICnpjService;
begin
  Result := TCnpjService.Create(Config);
end;

function TNuvemFiscalClient.Cte: ICteService;
begin
  Result := TCteService.Create(Config);
end;

function TNuvemFiscalClient.Empresa: IEmpresaService;
begin
  Result := TEmpresaService.Create(Config);
end;

function TNuvemFiscalClient.Mdfe: IMdfeService;
begin
  Result := TMdfeService.Create(Config);
end;

function TNuvemFiscalClient.Nfce: INfceService;
begin
  Result := TNfceService.Create(Config);
end;

function TNuvemFiscalClient.Nfe: INfeService;
begin
  Result := TNfeService.Create(Config);
end;

function TNuvemFiscalClient.Nfse: INfseService;
begin
  Result := TNfseService.Create(Config);
end;

constructor TNuvemFiscalClient.Create;
begin
  inherited Create(TNuvemFiscalConfig.Create);
end;

end.
