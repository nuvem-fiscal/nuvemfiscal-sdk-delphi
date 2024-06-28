unit NuvemFiscalClient;

interface

uses
  SysUtils, 
  OpenApiRest, 
  OpenApiUtils, 
  NuvemFiscalJson, 
  NuvemFiscalDtos;

type
  TRestService = class;
  TCepService = class;
  TCnpjService = class;
  TContaService = class;
  TCteService = class;
  TDistribuiçãoNFEService = class;
  TEmpresaService = class;
  TMdfeService = class;
  TNfceService = class;
  TNfcomService = class;
  TNfeService = class;
  TNfseService = class;
  TNuvemFiscalConfig = class;
  TNuvemFiscalClient = class;
  
  TRestService = class(TCustomRestService)
  protected
    function CreateConverter: TCustomJsonConverter; override;
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
    /// Listar estabelecimentos ativos a partir da base de CNPJ
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
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
    /// Somente serão retornados estabelecimentos com situação cadastral "Ativa".
    /// </remarks>
    function ListarCnpj(Top: Integer; Skip: Integer; Inlinecount: Boolean; CnaePrincipal: string; Municipio: string; NaturezaJuridica: string): TCnpjListagem;
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
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
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
    function ListarCnpj(Top: Integer; Skip: Integer; Inlinecount: Boolean; CnaePrincipal: string; Municipio: string; NaturezaJuridica: string): TCnpjListagem;
    /// <param name="Cnpj">
    /// CNPJ sem máscara.
    /// </param>
    function ConsultarCnpj(Cnpj: string): TCnpjEmpresa;
  end;
  
  IContaService = interface(IInvokable)
    ['{E92E7424-BA3B-46A5-89A5-BD5569788EE2}']
    /// <summary>
    /// Consultar os limites de uso e consumo de todas as cotas existentes.
    /// </summary>
    function ListarCotasConta: TContaCotaListagem;
    /// <summary>
    /// Consultar o limite de uso e o consumo de uma cota específica.
    /// </summary>
    /// <param name="Nome">
    /// Nome da cota a ser consultada.
    /// </param>
    function ConsultarCotaConta(Nome: string): TContaCota;
  end;
  
  TContaService = class(TRestService, IContaService)
  public
    function ListarCotasConta: TContaCotaListagem;
    /// <param name="Nome">
    /// Nome da cota a ser consultada.
    /// </param>
    function ConsultarCotaConta(Nome: string): TContaCota;
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
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Referencia">
    /// Seu identificador único para o documento.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <param name="Chave">
    /// Chave de acesso do DF-e.
    /// </param>
    /// <param name="Serie">
    /// Série do DF-e.
    /// </param>
    /// <remarks>
    /// Retorna a lista de CT-e de acordo com os critérios de busca utilizados. Os CT-e são retornados ordenados pela data da criação, com os mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarCte(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
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
    /// Baixar PDF do evento
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfEventoCte(Id: string): TBytes;
    /// <summary>
    /// Baixar XML do evento
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlEventoCte(Id: string): TBytes;
    /// <summary>
    /// Consulta do Status do Serviço na SEFAZ Autorizadora
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Autorizador">
    /// Ambiente Autorizador.
    /// 
    /// Autorizadores disponíveis: `MT`, `MS`, `MG`, `PR`, `RS`, `SP`, `SVRS`, `SVSP`, `AN`.
    /// 
    /// *Caso não seja informado, será utilizado o ambiente autorizador da UF do emitente.*
    /// </param>
    /// <remarks>
    /// Consulta do status do serviço prestado pelo Portal da Secretaria de Fazenda Estadual.
    /// 
    /// A Nuvem Fiscal mantém a última consulta em cache por 5 minutos, evitando sobrecarregar desnecessariamente os servidores da SEFAZ (conforme orientação do MOC - versão 3.0.0a, item 4.6.3). Dessa forma, você poderá chamar esse endpoint quantas vezes quiser, sem preocupar-se em ter o seu CNPJ bloqueado por consumo indevido (Rejeição 656).
    /// </remarks>
    function ConsultarStatusSefazCte(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
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
    /// Baixar PDF do cancelamento
    /// </summary>
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfCancelamentoCte(Id: string): TBytes;
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
    /// Baixar PDF da carta de correção
    /// </summary>
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfCartaCorrecaoCte(Id: string): TBytes;
    /// <summary>
    /// Baixar XML da carta de correção
    /// </summary>
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCartaCorrecaoCte(Id: string): TBytes;
    /// <summary>
    /// Baixar PDF do DACTE
    /// </summary>
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <param name="Logotipo">
    /// Imprime o documento com logotipo, desde que esteja cadastrado na empresa.
    /// </param>
    function BaixarPdfCte(Id: string; Logotipo: Boolean): TBytes;
    /// <summary>
    /// Sincroniza dados no CT-e a partir da SEFAZ
    /// </summary>
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Realiza a sincronização dos dados a partir da consulta da situação atual da CT-e na Base de Dados do Portal da Secretaria de Fazenda Estadual.
    /// 
    /// **Cenários de uso**:
    /// * Sincronizar um CT-e que se encontra com o status `erro` na Nuvem Fiscal, mas está autorizado na SEFAZ (útil em casos de erros de transmissão com a SEFAZ, como instabilidades e timeouts).
    /// * Sincronizar um CT-e que se encontra com o status `autorizado`na Nuvem Fiscal, mas está cancelado na SEFAZ.
    /// * Sincronizar todos os eventos de Cancelamento e Carta de Correção de um CT-e que porventura não tenham sido feitos a partir da Nuvem Fiscal.
    /// </remarks>
    function SincronizarCte(Id: string): TDfeSincronizacao;
    /// <summary>
    /// Baixar XML do CT-e processado
    /// </summary>
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Utilize esse endpoint para obter o XML do conhecimento enviado para a SEFAZ, complementado com a informação do protocolo de autorização de uso (TAG raiz `cteProc`).
    /// 
    /// O XML só estará disponível nesse endpoint caso o conhecimento tenha sido autorizado pela SEFAZ. Para obter o XML nos demais casos, utilize o endpoint `GET /cte/{id}/xml/conhecimento`.
    /// </remarks>
    function BaixarXmlCte(Id: string): TBytes;
    /// <summary>
    /// Baixar XML do CT-e
    /// </summary>
    /// <param name="Id">
    /// ID único da CT-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Utilize esse endpoint para obter o XML do conhecimento enviado para a SEFAZ.
    /// 
    /// O XML estará disponível nesse endpoint mesmo em casos que o conhecimento tenha sido rejeitado.
    /// </remarks>
    function BaixarXmlCteConhecimento(Id: string): TBytes;
    /// <summary>
    /// Baixar XML do Protocolo da SEFAZ
    /// </summary>
    /// <param name="Id">
    /// ID único da CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCteProtocolo(Id: string): TBytes;
  end;
  
  TCteService = class(TRestService, ICteService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Referencia">
    /// Seu identificador único para o documento.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <param name="Chave">
    /// Chave de acesso do DF-e.
    /// </param>
    /// <param name="Serie">
    /// Série do DF-e.
    /// </param>
    function ListarCte(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
    function EmitirCte(Body: TCtePedidoEmissao): TDfe;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarEventoCte(Id: string): TDfeEvento;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfEventoCte(Id: string): TBytes;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlEventoCte(Id: string): TBytes;
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Autorizador">
    /// Ambiente Autorizador.
    /// 
    /// Autorizadores disponíveis: `MT`, `MS`, `MG`, `PR`, `RS`, `SP`, `SVRS`, `SVSP`, `AN`.
    /// 
    /// *Caso não seja informado, será utilizado o ambiente autorizador da UF do emitente.*
    /// </param>
    function ConsultarStatusSefazCte(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
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
    function BaixarPdfCancelamentoCte(Id: string): TBytes;
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
    function BaixarPdfCartaCorrecaoCte(Id: string): TBytes;
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCartaCorrecaoCte(Id: string): TBytes;
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <param name="Logotipo">
    /// Imprime o documento com logotipo, desde que esteja cadastrado na empresa.
    /// </param>
    function BaixarPdfCte(Id: string; Logotipo: Boolean): TBytes;
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function SincronizarCte(Id: string): TDfeSincronizacao;
    /// <param name="Id">
    /// ID único do CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCte(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCteConhecimento(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da CT-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCteProtocolo(Id: string): TBytes;
  end;
  
  /// <summary>
  /// O processo de distribuição de DFe envolve a disponibilização dos
  /// documentos fiscais eletrônicos para os envolvidos na transação (emitentes,
  /// destinatários e terceiros autorizados). Ele permite que os destinatários
  /// recebam as NF-e emitidas contra o seu CNPJ diretamente do Ambiente
  /// Nacional, facilitando o controle e a gestão dos documentos recebidos.
  /// </summary>
  IDistribuiçãoNFEService = interface(IInvokable)
    ['{6A2EEB90-3DBF-4B82-989C-DC6B8496C940}']
    /// <summary>
    /// Listar distribuições
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ da pessoa ou empresa interessada.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista de distribuições de NF-e de acordo com os critérios de busca utilizados. As distribuições são retornadas ordenadas pela data da criação, com as mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarDistribuicaoNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Ambiente: string): TDistribuicaoNfeListagem;
    /// <summary>
    /// Distribuir documentos
    /// </summary>
    /// <remarks>
    /// Gera um pedido de distribuição de Documentos Fiscais Eletrônicos (DF-e)
    /// para um determinado CNPJ. Este endpoint permite que o destinatário
    /// obtenha os documentos fiscais emitidos contra o seu CNPJ utilizando
    /// três formas de consulta: *dist-nsu*, *cons-nsu* e *cons-chave*.
    /// 
    /// **Comportamento Assíncrono**
    /// 
    /// No retorno, existe a propriedade `status` no JSON que poderá assumir um
    /// dos seguintes valores: *processando*, *concluido* ou *erro*. Caso o status
    /// seja retornado com o valor *processando*, significa que a solicitação está
    /// sendo realizada de forma assíncrona pela API. Nesse caso, o usuário deverá
    /// adotar um fluxo que consiste em requisitar periodicamente o endpoint de
    /// consulta de pedido de distribuição até que a API retorne o pedido com um
    /// status indicando o fim do processamento (concluido ou erro).
    /// </remarks>
    function GerarDistribuicaoNfe(Body: TDistribuicaoNfePedido): TDistribuicaoNfe;
    /// <summary>
    /// Listar documentos
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ da pessoa ou empresa interessada.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <param name="TipoDocumento">
    /// Filtrar pelo tipo do documento de interesse da pessoa ou empresa.
    /// 
    /// Valores aceitos: `nota`, `evento`
    /// </param>
    /// <param name="FormaDistribuicao">
    /// Filtrar por documentos que foram distribuídos em sua forma resumida ou completa.
    /// 
    /// Valores aceitos: `resumida`, `completa`
    /// </param>
    /// <param name="ChaveAcesso">
    /// Filtrar pela chave de acesso da NF-e.
    /// </param>
    /// <remarks>
    /// Retorna a lista de documentos fiscais eletrônicos de interesse da pessoa ou empresa de acordo com os critérios de busca utilizados. Os documentos são retornadas ordenados pela data da criação, com os mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarDocumentoDistribuicaoNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Ambiente: string; TipoDocumento: string; FormaDistribuicao: string; ChaveAcesso: string): TDistribuicaoNfeDocumentoListagem;
    /// <summary>
    /// Consultar documento
    /// </summary>
    /// <param name="Id">
    /// ID único do documento gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Utilize esse endpoint para obter as informações resumidas ou documento fiscal de interesse da pessoa ou empresa interessada.
    /// </remarks>
    function ConsultarDocumentoDistribuicaoNfe(Id: string): TDistribuicaoNfeDocumento;
    /// <summary>
    /// Baixar XML do documento
    /// </summary>
    /// <param name="Id">
    /// ID único do documento gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Utilize esse endpoint para obter o XML das informações resumidas ou documento fiscal de interesse da pessoa ou empresa interessada.
    /// </remarks>
    function BaixarXmlDocumentoDistribuicaoNfe(Id: string): TBytes;
    /// <summary>
    /// Listar Manifestações
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do autor do evento.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista de manifestações de NF-e de acordo com os critérios de busca utilizados. As manifestações são retornadas ordenadas pela data da criação, com as mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarManifestacaoNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Ambiente: string): TManifestacaoNfeListagem;
    /// <summary>
    /// Manifestar nota
    /// </summary>
    /// <param name="Body">
    /// Contém os dados do pedido para manifestação do destinatário.
    /// </param>
    /// <remarks>
    /// O processo de manifestação do destinatário permite que os destinatários
    /// de Notas Fiscais Eletrônicas (NF-e) registrem formalmente sua posição em
    /// relação às operações descritas nesses documentos fiscais. Ele envolve
    /// eventos que indicam se a operação foi confirmada, desconhecida ou
    /// não realizada.
    /// 
    /// Os seguintes tipos de manifestação são suportados pela NF-e:
    /// * **Confirmação da Operação (210200)**: Manifestação do destinatário confirmando que a operação descrita na NF-e ocorreu exatamente como informado na NF-e. Esse evento libera a possibilidade de download da NF-e pelo destinatário e impede que a empresa emitente cancele a NF-e após a confirmação.
    /// * **Ciência da Operação (210210)**: Declara que o destinatário tem ciência da existência da NF-e, mas ainda não possui elementos suficientes para manifestar-se conclusivamente. Este é um evento opcional que pode ser usado pelo destinatário para indicar que está ciente da NF-e enquanto coleta mais informações. Esse evento libera a possibilidade de download da NF-e pelo destinatário.
    /// * **Desconhecimento da Operação (210220)**: Manifestação do destinatário declarando que a operação descrita da NF-e não foi por ele solicitada.
    /// * **Operação não Realizada (210240)**: Manifestação do destinatário reconhecendo sua participação na operação descrita na NF-e, mas declarando que a operação não ocorreu ou não se efetivou como informado nesta NF-e.
    /// </remarks>
    function ManifestarNfe(Body: TDistribuicaoNfePedidoManifestacao): TDistribuicaoNfeEvento;
    /// <summary>
    /// Consultar manifestação
    /// </summary>
    /// <param name="Id">
    /// ID único da manifestação gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Consulta os detalhes de uma manifestação de NF-e já existente. Forneça o ID único obtido de uma requisição de manifestação ou de listagem de manifestações e a Nuvem Fiscal irá retornar as informações da manifestação correspondente.
    /// </remarks>
    function ConsultarManifestacaoNfe(Id: string): TDistribuicaoNfeEvento;
    /// <summary>
    /// Consultar distribuição
    /// </summary>
    /// <param name="Id">
    /// ID único da distribuição de NF-e gerada pela Nuvem Fiscal.
    /// </param>
    function ConsultarDistribuicaoNfe(Id: string): TDistribuicaoNfe;
  end;
  
  TDistribuiçãoNFEService = class(TRestService, IDistribuiçãoNFEService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ da pessoa ou empresa interessada.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarDistribuicaoNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Ambiente: string): TDistribuicaoNfeListagem;
    function GerarDistribuicaoNfe(Body: TDistribuicaoNfePedido): TDistribuicaoNfe;
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ da pessoa ou empresa interessada.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <param name="TipoDocumento">
    /// Filtrar pelo tipo do documento de interesse da pessoa ou empresa.
    /// 
    /// Valores aceitos: `nota`, `evento`
    /// </param>
    /// <param name="FormaDistribuicao">
    /// Filtrar por documentos que foram distribuídos em sua forma resumida ou completa.
    /// 
    /// Valores aceitos: `resumida`, `completa`
    /// </param>
    /// <param name="ChaveAcesso">
    /// Filtrar pela chave de acesso da NF-e.
    /// </param>
    function ListarDocumentoDistribuicaoNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Ambiente: string; TipoDocumento: string; FormaDistribuicao: string; ChaveAcesso: string): TDistribuicaoNfeDocumentoListagem;
    /// <param name="Id">
    /// ID único do documento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarDocumentoDistribuicaoNfe(Id: string): TDistribuicaoNfeDocumento;
    /// <param name="Id">
    /// ID único do documento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlDocumentoDistribuicaoNfe(Id: string): TBytes;
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do autor do evento.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarManifestacaoNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Ambiente: string): TManifestacaoNfeListagem;
    /// <param name="Body">
    /// Contém os dados do pedido para manifestação do destinatário.
    /// </param>
    function ManifestarNfe(Body: TDistribuicaoNfePedidoManifestacao): TDistribuicaoNfeEvento;
    /// <param name="Id">
    /// ID único da manifestação gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarManifestacaoNfe(Id: string): TDistribuicaoNfeEvento;
    /// <param name="Id">
    /// ID único da distribuição de NF-e gerada pela Nuvem Fiscal.
    /// </param>
    function ConsultarDistribuicaoNfe(Id: string): TDistribuicaoNfe;
  end;
  
  /// <summary>
  /// Cadastre e administre todas as empresas vinculadas à sua conta.
  /// </summary>
  IEmpresaService = interface(IInvokable)
    ['{F9F29CFD-FEC1-4997-804F-2BD718558EEE}']
    /// <summary>
    /// Listar empresas
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ da empresa.
    /// 
    /// *Utilize o valor sem máscara*.
    /// </param>
    /// <remarks>
    /// Retorna a lista das empresas associadas à sua conta. As empresas são retornadas ordenadas pela data da criação, com as mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarEmpresas(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string): TEmpresaListagem;
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
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarEmpresa(CpfCnpj: string): TEmpresa;
    /// <summary>
    /// Alterar empresa
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <remarks>
    /// Altera o cadastro de uma empresa (emitente/prestador) que esteja associada a sua conta.
    /// Nesse método, por tratar-se de um PUT, caso algum campo não seja informado, o valor dele será apagado.
    /// </remarks>
    function AtualizarEmpresa(Body: TEmpresa; CpfCnpj: string): TEmpresa;
    /// <summary>
    /// Deletar empresa
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    procedure ExcluirEmpresa(CpfCnpj: string);
    /// <summary>
    /// Consultar certificado
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarCertificadoEmpresa(CpfCnpj: string): TEmpresaCertificado;
    /// <summary>
    /// Cadastrar certificado
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <remarks>
    /// Cadastre ou atualize um certificado digital e vincule a sua empresa, para que possa iniciar a emissão de notas.
    /// * No parâmetro `certificado`, envie o binário do certificado digital (.pfx ou .p12) codificado em **base64**.
    /// </remarks>
    function CadastrarCertificadoEmpresa(Body: TEmpresaPedidoCadastroCertificado; CpfCnpj: string): TEmpresaCertificado;
    /// <summary>
    /// Deletar certificado
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    procedure ExcluirCertificadoEmpresa(CpfCnpj: string);
    /// <summary>
    /// Consultar configuração de CT-e
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarConfigCte(CpfCnpj: string): TEmpresaConfigCte;
    /// <summary>
    /// Alterar configuração de CT-e
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function AlterarConfigCte(Body: TEmpresaConfigCte; CpfCnpj: string): TEmpresaConfigCte;
    /// <summary>
    /// Consultar configuração de Distribuição de NF-e
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarConfigDistribuicaoNfe(CpfCnpj: string): TEmpresaConfigDistribuicaoNfe;
    /// <summary>
    /// Alterar configuração de Distribuição de NF-e
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function AlterarConfigDistribuicaoNfe(Body: TEmpresaConfigDistribuicaoNfe; CpfCnpj: string): TEmpresaConfigDistribuicaoNfe;
    /// <summary>
    /// Baixar logotipo
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function BaixarLogotipoEmpresa(CpfCnpj: string): TBytes;
    /// <summary>
    /// Enviar logotipo
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <remarks>
    /// Cadastre ou atualize um logotipo e vincule a sua empresa.
    /// 
    /// **Restrições:**
    /// * Tipos de mídia (MIME) suportados: `image/png` e `image/jpeg`
    /// * Tamanho máximo do arquivo: 200 KB
    /// 
    /// **Cenários de uso:**
    /// * Quero que minhas notas sejam impressas com esse logotipo.
    /// * Quero trocar o logotipo utilizado em minhas impressões.
    /// </remarks>
    procedure EnviarLogotipoEmpresa(Input: TBytes; CpfCnpj: string);
    /// <summary>
    /// Deletar logotipo
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    procedure ExcluirLogotipoEmpresa(CpfCnpj: string);
    /// <summary>
    /// Consultar configuração de MDF-e
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarConfigMdfe(CpfCnpj: string): TEmpresaConfigMdfe;
    /// <summary>
    /// Alterar configuração de MDF-e
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function AlterarConfigMdfe(Body: TEmpresaConfigMdfe; CpfCnpj: string): TEmpresaConfigMdfe;
    /// <summary>
    /// Consultar configuração de NFC-e
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarConfigNfce(CpfCnpj: string): TEmpresaConfigNfce;
    /// <summary>
    /// Alterar configuração de NFC-e
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function AlterarConfigNfce(Body: TEmpresaConfigNfce; CpfCnpj: string): TEmpresaConfigNfce;
    /// <summary>
    /// Consultar configuração de NFCom
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarConfigNfcom(CpfCnpj: string): TEmpresaConfigNfcom;
    /// <summary>
    /// Alterar configuração de NFCom
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function AlterarConfigNfcom(Body: TEmpresaConfigNfcom; CpfCnpj: string): TEmpresaConfigNfcom;
    /// <summary>
    /// Consultar configuração de NF-e
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarConfigNfe(CpfCnpj: string): TEmpresaConfigNfe;
    /// <summary>
    /// Alterar configuração de NF-e
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function AlterarConfigNfe(Body: TEmpresaConfigNfe; CpfCnpj: string): TEmpresaConfigNfe;
    /// <summary>
    /// Consultar configuração de NFS-e
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarConfigNfse(CpfCnpj: string): TEmpresaConfigNfse;
    /// <summary>
    /// Alterar configuração de NFS-e
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function AlterarConfigNfse(Body: TEmpresaConfigNfse; CpfCnpj: string): TEmpresaConfigNfse;
  end;
  
  TEmpresaService = class(TRestService, IEmpresaService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ da empresa.
    /// 
    /// *Utilize o valor sem máscara*.
    /// </param>
    function ListarEmpresas(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string): TEmpresaListagem;
    function CriarEmpresa(Body: TEmpresa): TEmpresa;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarEmpresa(CpfCnpj: string): TEmpresa;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function AtualizarEmpresa(Body: TEmpresa; CpfCnpj: string): TEmpresa;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    procedure ExcluirEmpresa(CpfCnpj: string);
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarCertificadoEmpresa(CpfCnpj: string): TEmpresaCertificado;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function CadastrarCertificadoEmpresa(Body: TEmpresaPedidoCadastroCertificado; CpfCnpj: string): TEmpresaCertificado;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    procedure ExcluirCertificadoEmpresa(CpfCnpj: string);
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarConfigCte(CpfCnpj: string): TEmpresaConfigCte;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function AlterarConfigCte(Body: TEmpresaConfigCte; CpfCnpj: string): TEmpresaConfigCte;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarConfigDistribuicaoNfe(CpfCnpj: string): TEmpresaConfigDistribuicaoNfe;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function AlterarConfigDistribuicaoNfe(Body: TEmpresaConfigDistribuicaoNfe; CpfCnpj: string): TEmpresaConfigDistribuicaoNfe;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function BaixarLogotipoEmpresa(CpfCnpj: string): TBytes;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    procedure EnviarLogotipoEmpresa(Input: TBytes; CpfCnpj: string);
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    procedure ExcluirLogotipoEmpresa(CpfCnpj: string);
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarConfigMdfe(CpfCnpj: string): TEmpresaConfigMdfe;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function AlterarConfigMdfe(Body: TEmpresaConfigMdfe; CpfCnpj: string): TEmpresaConfigMdfe;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarConfigNfce(CpfCnpj: string): TEmpresaConfigNfce;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function AlterarConfigNfce(Body: TEmpresaConfigNfce; CpfCnpj: string): TEmpresaConfigNfce;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarConfigNfcom(CpfCnpj: string): TEmpresaConfigNfcom;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function AlterarConfigNfcom(Body: TEmpresaConfigNfcom; CpfCnpj: string): TEmpresaConfigNfcom;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarConfigNfe(CpfCnpj: string): TEmpresaConfigNfe;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function AlterarConfigNfe(Body: TEmpresaConfigNfe; CpfCnpj: string): TEmpresaConfigNfe;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarConfigNfse(CpfCnpj: string): TEmpresaConfigNfse;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// Utilize o valor sem máscara.
    /// </param>
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
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Referencia">
    /// Seu identificador único para o documento.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <param name="Chave">
    /// Chave de acesso do DF-e.
    /// </param>
    /// <param name="Serie">
    /// Série do DF-e.
    /// </param>
    /// <remarks>
    /// Retorna a lista de manifestos de acordo com os critérios de busca utilizados. Os manifestos são retornados ordenados pela data da criação, com os mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarMdfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
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
    /// Baixar PDF do evento
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfEventoMdfe(Id: string): TBytes;
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
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista dos lotes de acordo com os critérios de busca utilizados. Os lotes são retornados ordenados pela data da criação, com os mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarLotesMdfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
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
    /// Consulta MDF-e não encerrados
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarMdfeNaoEncerrados(CpfCnpj: string): TMdfeNaoEncerrados;
    /// <summary>
    /// Consulta do Status do Serviço na SEFAZ Autorizadora
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Autorizador">
    /// Ambiente Autorizador.
    /// 
    /// Autorizadores disponíveis: `SVRS`.
    /// 
    /// *Caso não seja informado, será utilizado o ambiente autorizador da UF do emitente.*
    /// </param>
    /// <remarks>
    /// Consulta do status do serviço prestado pelo Portal da Secretaria de Fazenda Estadual.
    /// 
    /// A Nuvem Fiscal mantém a última consulta em cache por 5 minutos, evitando sobrecarregar desnecessariamente os servidores da SEFAZ (conforme orientação do MOC - versão 3.0.0a, item 4.6.3). Dessa forma, você poderá chamar esse endpoint quantas vezes quiser, sem preocupar-se em ter o seu CNPJ bloqueado por consumo indevido (Rejeição 656).
    /// </remarks>
    function ConsultarStatusSefazMdfe(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
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
    /// <param name="Body">
    /// Dados do cancelamento.
    /// </param>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function CancelarMdfe(Body: TMdfePedidoCancelamento; Id: string): TDfeCancelamento;
    /// <summary>
    /// Baixar PDF do cancelamento
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfCancelamentoMdfe(Id: string): TBytes;
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
    /// Baixar PDF do encerramento
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfEncerramentoMdfe(Id: string): TBytes;
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
    /// Baixar PDF do DAMDFE
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <param name="Logotipo">
    /// Imprime o documento com logotipo, desde que esteja cadastrado na empresa.
    /// </param>
    function BaixarPdfMdfe(Id: string; Logotipo: Boolean): TBytes;
    /// <summary>
    /// Sincroniza dados no MDF-e a partir da SEFAZ
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Realiza a sincronização dos dados a partir da consulta da situação atual da MDF-e na Base de Dados do Portal da Secretaria de Fazenda Estadual.
    /// 
    /// **Cenários de uso**:
    /// * Sincronizar um manifesto que se encontra com o status `erro` na Nuvem Fiscal, mas está autorizado na SEFAZ (útil em casos de erros de transmissão com a SEFAZ, como instabilidades e timeouts).
    /// * Sincronizar um manifesto que se encontra com o status `autorizado`na Nuvem Fiscal, mas está cancelado ou encerrado na SEFAZ.
    /// * Sincronizar todos os eventos de Cancelamento, Encerramento, Inclusão de condutor e Inclusão de DF-e de um manifesto que porventura não tenham sido feitos a partir da Nuvem Fiscal.
    /// </remarks>
    function SincronizarMdfe(Id: string): TDfeSincronizacao;
    /// <summary>
    /// Baixar XML do MDF-e processado
    /// </summary>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Utilize esse endpoint para obter o XML do manifesto enviado para a SEFAZ, complementado com a informação do protocolo de autorização ou denegação de uso (TAG raiz `mdfeProc`).
    /// 
    /// O XML só estará disponível nesse endpoint caso o manifesto tenha sido autorizado ou denegado pela SEFAZ. Para obter o XML nos demais casos, utilize o endpoint `GET /mdfe/{id}/xml/manifesto`.
    /// </remarks>
    function BaixarXmlMdfe(Id: string): TBytes;
    /// <summary>
    /// Baixar XML do MDF-e
    /// </summary>
    /// <param name="Id">
    /// ID único da MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Utilize esse endpoint para obter o XML do manifesto enviado para a SEFAZ.
    /// 
    /// O XML estará disponível nesse endpoint mesmo em casos que o manifesto tenha sido rejeitado.
    /// </remarks>
    function BaixarXmlMdfeManifesto(Id: string): TBytes;
    /// <summary>
    /// Baixar XML do Protocolo da SEFAZ
    /// </summary>
    /// <param name="Id">
    /// ID único da MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlMdfeProtocolo(Id: string): TBytes;
  end;
  
  TMdfeService = class(TRestService, IMdfeService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Referencia">
    /// Seu identificador único para o documento.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <param name="Chave">
    /// Chave de acesso do DF-e.
    /// </param>
    /// <param name="Serie">
    /// Série do DF-e.
    /// </param>
    function ListarMdfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
    function EmitirMdfe(Body: TMdfePedidoEmissao): TDfe;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarEventoMdfe(Id: string): TDfeEvento;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfEventoMdfe(Id: string): TBytes;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlEventoMdfe(Id: string): TBytes;
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarLotesMdfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
    function EmitirLoteMdfe(Body: TMdfePedidoEmissaoLote): TDfeLote;
    /// <param name="Id">
    /// ID único do lote gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarLoteMdfe(Id: string): TDfeLote;
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    function ConsultarMdfeNaoEncerrados(CpfCnpj: string): TMdfeNaoEncerrados;
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Autorizador">
    /// Ambiente Autorizador.
    /// 
    /// Autorizadores disponíveis: `SVRS`.
    /// 
    /// *Caso não seja informado, será utilizado o ambiente autorizador da UF do emitente.*
    /// </param>
    function ConsultarStatusSefazMdfe(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarMdfe(Id: string): TDfe;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCancelamentoMdfe(Id: string): TDfeCancelamento;
    /// <param name="Body">
    /// Dados do cancelamento.
    /// </param>
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function CancelarMdfe(Body: TMdfePedidoCancelamento; Id: string): TDfeCancelamento;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfCancelamentoMdfe(Id: string): TBytes;
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
    function BaixarPdfEncerramentoMdfe(Id: string): TBytes;
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
    /// <param name="Logotipo">
    /// Imprime o documento com logotipo, desde que esteja cadastrado na empresa.
    /// </param>
    function BaixarPdfMdfe(Id: string; Logotipo: Boolean): TBytes;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function SincronizarMdfe(Id: string): TDfeSincronizacao;
    /// <param name="Id">
    /// ID único do MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlMdfe(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlMdfeManifesto(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da MDF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlMdfeProtocolo(Id: string): TBytes;
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
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Referencia">
    /// Seu identificador único para o documento.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <param name="Chave">
    /// Chave de acesso do DF-e.
    /// </param>
    /// <param name="Serie">
    /// Série do DF-e.
    /// </param>
    /// <remarks>
    /// Retorna a lista de notas de acordo com os critérios de busca utilizados. As notas são retornadas ordenadas pela data da criação, com as mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarNfce(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
    /// <summary>
    /// Emitir NFC-e
    /// </summary>
    function EmitirNfce(Body: TNfePedidoEmissao): TDfe;
    /// <summary>
    /// Listar eventos
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="DfeId">
    /// ID único gerado pela Nuvem Fiscal para o documento fiscal.
    /// </param>
    /// <remarks>
    /// Retorna a lista de eventos vinculados a um documento fiscal de acordo com os critérios de busca utilizados. Os eventos são retornados ordenados pela data da criação, com as mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarEventosNfce(Top: Integer; Skip: Integer; Inlinecount: Boolean; DfeId: string): TDfeEventoListagem;
    /// <summary>
    /// Consultar evento
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarEventoNfce(Id: string): TDfeEvento;
    /// <summary>
    /// Baixar PDF do evento
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfEventoNfce(Id: string): TBytes;
    /// <summary>
    /// Baixar XML do evento
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlEventoNfce(Id: string): TBytes;
    /// <summary>
    /// Inutilizar uma sequência de numeração de NFC-e
    /// </summary>
    function InutilizarNumeracaoNfce(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
    /// <summary>
    /// Consultar a inutilização de sequência de numeração
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarInutilizacaoNfce(Id: string): TDfeInutilizacao;
    /// <summary>
    /// Baixar PDF da inutilização
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfInutilizacaoNfce(Id: string): TBytes;
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
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista dos lotes de acordo com os critérios de busca utilizados. Os lotes são retornados ordenados pela data da criação, com os mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarLotesNfce(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
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
    /// Prévia do PDF do DANFCE
    /// </summary>
    /// <param name="Logotipo">
    /// Imprime o documento com logotipo, desde que esteja cadastrado na empresa.
    /// </param>
    /// <param name="NomeFantasia">
    /// Exibe o nome fantasia do emitente, desde que esteja presente no XML da nota.
    /// </param>
    /// <param name="MensagemRodape">
    /// Imprime mensagem no rodapé do documento.
    /// 
    /// O caractere `|` (pipe) poderá ser utilizado para definir a quantidade e o alinhamento das mensagens.
    /// 
    /// **Exemplos de Uso:**
    /// * `"esquerda"`
    /// * `"esquerda|centro"`
    /// * `"esquerda|centro|direita"`
    /// * `"|centro"`, `"|centro|"`
    /// * `"|centro|direita"`
    /// * `"||direita"`
    /// * `"esquerda||direita"`
    /// </param>
    /// <param name="Resumido">
    /// Poderá ser impresso apenas o DANFE NFC-e resumido ou ecológico, sem o detalhamento dos itens da venda, desde que a Unidade Federada permita esta opção em sua legislação e o consumidor assim o solicite.
    /// </param>
    /// <param name="QrcodeLateral">
    /// Imprime o QRCode na lateral do DANFE NFC-e.
    /// 
    /// *Disponível apenas para DANFE com 80 milímetros de largura*.
    /// </param>
    /// <param name="Largura">
    /// Largura do DANFE NFC-e (em milímetros).
    /// </param>
    /// <param name="Margem">
    /// Define as margens do DANFE NFC-e (em milímetros).
    /// 
    /// Essa propriedade pode ser especificada usando um, dois, três ou quatro valores (separados por vírgulas). Cada valor deve ser um número entre `0` e `9`.
    /// * Quando **um** valor é especificado, a mesma margem é aplicada para **todos os quatro lados**.
    /// * Quando **dois** valores são especificados, a primeira margem é aplicada aos **lados esquerdo e direito**, e a segunda aos **lados superior e inferior**.
    /// * Quando **três** valores são especificados, a primeira margem é aplicada ao **lado esquerdo**, a segunda aos **lados superior e inferior**, e a terceira ao **lado direito**.
    /// * Quando **quatro** valores são especificados, as margens são aplicadas aos lados **esquerdo**, **superior**, **direito** e **inferior**, nesta ordem (sentido horário).
    /// 
    /// **Exemplos de uso**:
    /// * `margem=1`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 1mm
    ///   - Margem direita: 1mm
    ///   - Margem inferior: 1mm
    /// * `margem=1,2`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 2mm
    ///   - Margem direita: 1mm
    ///   - Margem inferior: 2mm
    /// * `margem=1,2,3`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 2mm
    ///   - Margem direita: 3mm
    ///   - Margem inferior: 2mm
    /// * `margem=1,2,3,4`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 2mm
    ///   - Margem direita: 3mm
    ///   - Margem inferior: 4mm
    /// </param>
    /// <remarks>
    /// Através desse endpoint, é possível enviar os dados de uma NFC-e e gerar uma prévia do DANFCE.
    /// 
    /// Os dados de entrada são os mesmos do endpoint de emissão de NFC-e (`POST /nfce`).
    /// 
    /// **Atenção**: O DANFE gerado por este endpoint é apenas para fins de visualização e não possui valor fiscal. Para a emissão de uma NF-e com valor fiscal, utilize o processo de emissão padrão descrito na documentação.
    /// </remarks>
    function BaixarPreviaPdfNfce(Body: TNfePedidoEmissao; Logotipo: Boolean; NomeFantasia: Boolean; MensagemRodape: string; Resumido: Boolean; QrcodeLateral: Boolean; Largura: Integer; Margem: string): TBytes;
    /// <summary>
    /// Prévia do XML da NFC-e
    /// </summary>
    /// <remarks>
    /// Através desse endpoint, é possível enviar os dados de uma NFC-e e gerar uma prévia do XML, sem a assinatura digital.
    /// 
    /// Os dados de entrada são os mesmos do endpoint de emissão de NFC-e (`POST /nfce`).
    /// 
    /// **Atenção**: O XML gerado por este endpoint é apenas para fins de visualização e não possui valor fiscal. Para a emissão de uma NF-e com valor fiscal, utilize o processo de emissão padrão descrito na documentação.
    /// </remarks>
    function BaixarPreviaXmlNfce(Body: TNfePedidoEmissao): TBytes;
    /// <summary>
    /// Consulta do Status do Serviço na SEFAZ Autorizadora
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Autorizador">
    /// Ambiente Autorizador.
    /// 
    /// Autorizadores disponíveis: `AM`, `BA`, `CE`, `GO`, `MG`, `MS`, `MT`, `PE`, `PR`, `RS`, `SP`, `SVRS`.
    /// 
    /// *Caso não seja informado, será utilizado o ambiente autorizador da UF do emitente.*
    /// </param>
    /// <remarks>
    /// Consulta do status do serviço prestado pelo Portal da Secretaria de Fazenda Estadual.
    /// 
    /// A Nuvem Fiscal mantém a última consulta em cache por 5 minutos, evitando sobrecarregar desnecessariamente os servidores da SEFAZ (conforme orientação do MOC - versão 7.0, item 5.5.3). Dessa forma, você poderá chamar esse endpoint quantas vezes quiser, sem preocupar-se em ter o seu CNPJ bloqueado por consumo indevido (Rejeição 656).
    /// </remarks>
    function ConsultarStatusSefazNfce(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
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
    /// Baixar PDF do cancelamento
    /// </summary>
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfCancelamentoNfce(Id: string): TBytes;
    /// <summary>
    /// Baixar XML do cancelamento
    /// </summary>
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoNfce(Id: string): TBytes;
    /// <summary>
    /// Comandos ESC/POS para impressão do DANFCE
    /// </summary>
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <param name="Modelo">
    /// Modelo da impressora:
    /// * `0` - Texto
    /// * `1` - Epson
    /// * `2` - Bematech
    /// * `3` - Daruma
    /// * `4` - Vox
    /// * `5` - Diebold
    /// * `6` - Epson P2
    /// * `7` - CustomPos
    /// * `8` - Star
    /// * `9` - Zjiang
    /// * `10` - GPrinter
    /// * `11` - Datecs
    /// * `12` - Sunmi
    /// * `13` - Externo
    /// </param>
    /// <param name="Colunas">
    /// Define o máximo de caracteres, em uma linha, usando a fonte normal.
    /// 
    /// Ex: 40, 42, 48, 58, 80.
    /// </param>
    /// <param name="QrcodeLateral">
    /// Imprime o QRCode na lateral do DANFCe.
    /// 
    /// OBS: não suportado por alguns modelos de impressora.
    /// </param>
    /// <remarks>
    /// ESC/POS é um sistema de comando criado pela Epson usado em diversos sistemas de impressoras POS.
    /// 
    /// Com o formato ESC/POS, você poderá imprimir nativamente em uma vasta quantidade de modelos de impressora térmicas utilizadas no Brasil e no mundo. Com ela, você consegue fazer o envio de comandos em ESC/POS direto para a porta da impressora.
    /// </remarks>
    function BaixarEscPosNfce(Id: string; Modelo: Integer; Colunas: Integer; QrcodeLateral: Boolean): TBytes;
    /// <summary>
    /// Baixar PDF do DANFCE
    /// </summary>
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <param name="Logotipo">
    /// Imprime o documento com logotipo, desde que esteja cadastrado na empresa.
    /// </param>
    /// <param name="NomeFantasia">
    /// Exibe o nome fantasia do emitente, desde que esteja presente no XML da nota.
    /// </param>
    /// <param name="MensagemRodape">
    /// Imprime mensagem no rodapé do documento.
    /// 
    /// O caractere `|` (pipe) poderá ser utilizado para definir a quantidade e o alinhamento das mensagens.
    /// 
    /// **Exemplos de Uso:**
    /// * `"esquerda"`
    /// * `"esquerda|centro"`
    /// * `"esquerda|centro|direita"`
    /// * `"|centro"`, `"|centro|"`
    /// * `"|centro|direita"`
    /// * `"||direita"`
    /// * `"esquerda||direita"`
    /// </param>
    /// <param name="Resumido">
    /// Poderá ser impresso apenas o DANFE NFC-e resumido ou ecológico, sem o detalhamento dos itens da venda, desde que a Unidade Federada permita esta opção em sua legislação e o consumidor assim o solicite.
    /// </param>
    /// <param name="QrcodeLateral">
    /// Imprime o QRCode na lateral do DANFE NFC-e.
    /// 
    /// *Disponível apenas para DANFE com 80 milímetros de largura*.
    /// </param>
    /// <param name="Largura">
    /// Largura do DANFE NFC-e (em milímetros).
    /// </param>
    /// <param name="Margem">
    /// Define as margens do DANFE NFC-e (em milímetros).
    /// 
    /// Essa propriedade pode ser especificada usando um, dois, três ou quatro valores (separados por vírgulas). Cada valor deve ser um número entre `0` e `9`.
    /// * Quando **um** valor é especificado, a mesma margem é aplicada para **todos os quatro lados**.
    /// * Quando **dois** valores são especificados, a primeira margem é aplicada aos **lados esquerdo e direito**, e a segunda aos **lados superior e inferior**.
    /// * Quando **três** valores são especificados, a primeira margem é aplicada ao **lado esquerdo**, a segunda aos **lados superior e inferior**, e a terceira ao **lado direito**.
    /// * Quando **quatro** valores são especificados, as margens são aplicadas aos lados **esquerdo**, **superior**, **direito** e **inferior**, nesta ordem (sentido horário).
    /// 
    /// **Exemplos de uso**:
    /// * `margem=1`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 1mm
    ///   - Margem direita: 1mm
    ///   - Margem inferior: 1mm
    /// * `margem=1,2`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 2mm
    ///   - Margem direita: 1mm
    ///   - Margem inferior: 2mm
    /// * `margem=1,2,3`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 2mm
    ///   - Margem direita: 3mm
    ///   - Margem inferior: 2mm
    /// * `margem=1,2,3,4`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 2mm
    ///   - Margem direita: 3mm
    ///   - Margem inferior: 4mm
    /// </param>
    function BaixarPdfNfce(Id: string; Logotipo: Boolean; NomeFantasia: Boolean; MensagemRodape: string; Resumido: Boolean; QrcodeLateral: Boolean; Largura: Integer; Margem: string): TBytes;
    /// <summary>
    /// Sincroniza dados na NFC-e a partir da SEFAZ
    /// </summary>
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Realiza a sincronização dos dados a partir da consulta da situação atual da NFC-e na Base de Dados do Portal da Secretaria de Fazenda Estadual.
    /// 
    /// **Cenários de uso**:
    /// * Sincronizar uma nota que se encontra com o status `erro` na Nuvem Fiscal, mas está autorizada na SEFAZ (útil em casos de erros de transmissão com a SEFAZ, como instabilidades e timeouts).
    /// * Sincronizar uma nota que se encontra com o status `autorizado`na Nuvem Fiscal, mas está cancelada na SEFAZ.
    /// * Sincronizar todos os eventos de Cancelamento, Carta de Correção e EPEC de uma nota que porventura não tenham sido feitos a partir da Nuvem Fiscal.
    /// </remarks>
    function SincronizarNfce(Id: string): TDfeSincronizacao;
    /// <summary>
    /// Baixar XML da NFC-e processada
    /// </summary>
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Utilize esse endpoint para obter o XML da nota enviado para a SEFAZ, complementado com a informação do protocolo de autorização ou denegação de uso (TAG raiz `nfeProc`).
    /// 
    /// O XML só estará disponível nesse endpoint caso a nota tenha sido autorizada ou denegada pela SEFAZ. Para obter o XML nos demais casos, utilize o endpoint `GET /nfce/{id}/xml/nota`.
    /// </remarks>
    function BaixarXmlNfce(Id: string): TBytes;
    /// <summary>
    /// Baixar XML da NFC-e
    /// </summary>
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Utilize esse endpoint para obter o XML da nota enviado para a SEFAZ.
    /// 
    /// O XML estará disponível nesse endpoint mesmo em casos que a nota tenha sido rejeitada.
    /// </remarks>
    function BaixarXmlNfceNota(Id: string): TBytes;
    /// <summary>
    /// Baixar XML do Protocolo da SEFAZ
    /// </summary>
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfceProtocolo(Id: string): TBytes;
  end;
  
  TNfceService = class(TRestService, INfceService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Referencia">
    /// Seu identificador único para o documento.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <param name="Chave">
    /// Chave de acesso do DF-e.
    /// </param>
    /// <param name="Serie">
    /// Série do DF-e.
    /// </param>
    function ListarNfce(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
    function EmitirNfce(Body: TNfePedidoEmissao): TDfe;
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="DfeId">
    /// ID único gerado pela Nuvem Fiscal para o documento fiscal.
    /// </param>
    function ListarEventosNfce(Top: Integer; Skip: Integer; Inlinecount: Boolean; DfeId: string): TDfeEventoListagem;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarEventoNfce(Id: string): TDfeEvento;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfEventoNfce(Id: string): TBytes;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlEventoNfce(Id: string): TBytes;
    function InutilizarNumeracaoNfce(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarInutilizacaoNfce(Id: string): TDfeInutilizacao;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfInutilizacaoNfce(Id: string): TBytes;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlInutilizacaoNfce(Id: string): TBytes;
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarLotesNfce(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
    function EmitirLoteNfce(Body: TNfePedidoEmissaoLote): TDfeLote;
    /// <param name="Id">
    /// ID único do lote gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarLoteNfce(Id: string): TDfeLote;
    /// <param name="Logotipo">
    /// Imprime o documento com logotipo, desde que esteja cadastrado na empresa.
    /// </param>
    /// <param name="NomeFantasia">
    /// Exibe o nome fantasia do emitente, desde que esteja presente no XML da nota.
    /// </param>
    /// <param name="MensagemRodape">
    /// Imprime mensagem no rodapé do documento.
    /// 
    /// O caractere `|` (pipe) poderá ser utilizado para definir a quantidade e o alinhamento das mensagens.
    /// 
    /// **Exemplos de Uso:**
    /// * `"esquerda"`
    /// * `"esquerda|centro"`
    /// * `"esquerda|centro|direita"`
    /// * `"|centro"`, `"|centro|"`
    /// * `"|centro|direita"`
    /// * `"||direita"`
    /// * `"esquerda||direita"`
    /// </param>
    /// <param name="Resumido">
    /// Poderá ser impresso apenas o DANFE NFC-e resumido ou ecológico, sem o detalhamento dos itens da venda, desde que a Unidade Federada permita esta opção em sua legislação e o consumidor assim o solicite.
    /// </param>
    /// <param name="QrcodeLateral">
    /// Imprime o QRCode na lateral do DANFE NFC-e.
    /// 
    /// *Disponível apenas para DANFE com 80 milímetros de largura*.
    /// </param>
    /// <param name="Largura">
    /// Largura do DANFE NFC-e (em milímetros).
    /// </param>
    /// <param name="Margem">
    /// Define as margens do DANFE NFC-e (em milímetros).
    /// 
    /// Essa propriedade pode ser especificada usando um, dois, três ou quatro valores (separados por vírgulas). Cada valor deve ser um número entre `0` e `9`.
    /// * Quando **um** valor é especificado, a mesma margem é aplicada para **todos os quatro lados**.
    /// * Quando **dois** valores são especificados, a primeira margem é aplicada aos **lados esquerdo e direito**, e a segunda aos **lados superior e inferior**.
    /// * Quando **três** valores são especificados, a primeira margem é aplicada ao **lado esquerdo**, a segunda aos **lados superior e inferior**, e a terceira ao **lado direito**.
    /// * Quando **quatro** valores são especificados, as margens são aplicadas aos lados **esquerdo**, **superior**, **direito** e **inferior**, nesta ordem (sentido horário).
    /// 
    /// **Exemplos de uso**:
    /// * `margem=1`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 1mm
    ///   - Margem direita: 1mm
    ///   - Margem inferior: 1mm
    /// * `margem=1,2`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 2mm
    ///   - Margem direita: 1mm
    ///   - Margem inferior: 2mm
    /// * `margem=1,2,3`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 2mm
    ///   - Margem direita: 3mm
    ///   - Margem inferior: 2mm
    /// * `margem=1,2,3,4`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 2mm
    ///   - Margem direita: 3mm
    ///   - Margem inferior: 4mm
    /// </param>
    function BaixarPreviaPdfNfce(Body: TNfePedidoEmissao; Logotipo: Boolean; NomeFantasia: Boolean; MensagemRodape: string; Resumido: Boolean; QrcodeLateral: Boolean; Largura: Integer; Margem: string): TBytes;
    function BaixarPreviaXmlNfce(Body: TNfePedidoEmissao): TBytes;
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Autorizador">
    /// Ambiente Autorizador.
    /// 
    /// Autorizadores disponíveis: `AM`, `BA`, `CE`, `GO`, `MG`, `MS`, `MT`, `PE`, `PR`, `RS`, `SP`, `SVRS`.
    /// 
    /// *Caso não seja informado, será utilizado o ambiente autorizador da UF do emitente.*
    /// </param>
    function ConsultarStatusSefazNfce(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
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
    function BaixarPdfCancelamentoNfce(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoNfce(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <param name="Modelo">
    /// Modelo da impressora:
    /// * `0` - Texto
    /// * `1` - Epson
    /// * `2` - Bematech
    /// * `3` - Daruma
    /// * `4` - Vox
    /// * `5` - Diebold
    /// * `6` - Epson P2
    /// * `7` - CustomPos
    /// * `8` - Star
    /// * `9` - Zjiang
    /// * `10` - GPrinter
    /// * `11` - Datecs
    /// * `12` - Sunmi
    /// * `13` - Externo
    /// </param>
    /// <param name="Colunas">
    /// Define o máximo de caracteres, em uma linha, usando a fonte normal.
    /// 
    /// Ex: 40, 42, 48, 58, 80.
    /// </param>
    /// <param name="QrcodeLateral">
    /// Imprime o QRCode na lateral do DANFCe.
    /// 
    /// OBS: não suportado por alguns modelos de impressora.
    /// </param>
    function BaixarEscPosNfce(Id: string; Modelo: Integer; Colunas: Integer; QrcodeLateral: Boolean): TBytes;
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <param name="Logotipo">
    /// Imprime o documento com logotipo, desde que esteja cadastrado na empresa.
    /// </param>
    /// <param name="NomeFantasia">
    /// Exibe o nome fantasia do emitente, desde que esteja presente no XML da nota.
    /// </param>
    /// <param name="MensagemRodape">
    /// Imprime mensagem no rodapé do documento.
    /// 
    /// O caractere `|` (pipe) poderá ser utilizado para definir a quantidade e o alinhamento das mensagens.
    /// 
    /// **Exemplos de Uso:**
    /// * `"esquerda"`
    /// * `"esquerda|centro"`
    /// * `"esquerda|centro|direita"`
    /// * `"|centro"`, `"|centro|"`
    /// * `"|centro|direita"`
    /// * `"||direita"`
    /// * `"esquerda||direita"`
    /// </param>
    /// <param name="Resumido">
    /// Poderá ser impresso apenas o DANFE NFC-e resumido ou ecológico, sem o detalhamento dos itens da venda, desde que a Unidade Federada permita esta opção em sua legislação e o consumidor assim o solicite.
    /// </param>
    /// <param name="QrcodeLateral">
    /// Imprime o QRCode na lateral do DANFE NFC-e.
    /// 
    /// *Disponível apenas para DANFE com 80 milímetros de largura*.
    /// </param>
    /// <param name="Largura">
    /// Largura do DANFE NFC-e (em milímetros).
    /// </param>
    /// <param name="Margem">
    /// Define as margens do DANFE NFC-e (em milímetros).
    /// 
    /// Essa propriedade pode ser especificada usando um, dois, três ou quatro valores (separados por vírgulas). Cada valor deve ser um número entre `0` e `9`.
    /// * Quando **um** valor é especificado, a mesma margem é aplicada para **todos os quatro lados**.
    /// * Quando **dois** valores são especificados, a primeira margem é aplicada aos **lados esquerdo e direito**, e a segunda aos **lados superior e inferior**.
    /// * Quando **três** valores são especificados, a primeira margem é aplicada ao **lado esquerdo**, a segunda aos **lados superior e inferior**, e a terceira ao **lado direito**.
    /// * Quando **quatro** valores são especificados, as margens são aplicadas aos lados **esquerdo**, **superior**, **direito** e **inferior**, nesta ordem (sentido horário).
    /// 
    /// **Exemplos de uso**:
    /// * `margem=1`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 1mm
    ///   - Margem direita: 1mm
    ///   - Margem inferior: 1mm
    /// * `margem=1,2`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 2mm
    ///   - Margem direita: 1mm
    ///   - Margem inferior: 2mm
    /// * `margem=1,2,3`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 2mm
    ///   - Margem direita: 3mm
    ///   - Margem inferior: 2mm
    /// * `margem=1,2,3,4`
    ///   - Margem esquerda: 1mm
    ///   - Margem superior: 2mm
    ///   - Margem direita: 3mm
    ///   - Margem inferior: 4mm
    /// </param>
    function BaixarPdfNfce(Id: string; Logotipo: Boolean; NomeFantasia: Boolean; MensagemRodape: string; Resumido: Boolean; QrcodeLateral: Boolean; Largura: Integer; Margem: string): TBytes;
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function SincronizarNfce(Id: string): TDfeSincronizacao;
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfce(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfceNota(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NFC-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfceProtocolo(Id: string): TBytes;
  end;
  
  /// <summary>
  /// Nota Fiscal Fatura de Serviço de Comunicação Eletrônica.
  /// </summary>
  INfcomService = interface(IInvokable)
    ['{FD6CD587-3899-4D78-A077-1A56C1505AD8}']
    /// <summary>
    /// Listar NFCom
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Referencia">
    /// Seu identificador único para o documento.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <param name="Chave">
    /// Chave de acesso do DF-e.
    /// </param>
    /// <param name="Serie">
    /// Série do DF-e.
    /// </param>
    /// <remarks>
    /// Retorna a lista de NFCom de acordo com os critérios de busca utilizados. As NFCom são retornadas ordenadas pela data da criação, com as mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarNfcom(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
    /// <summary>
    /// Emitir NFCom
    /// </summary>
    function EmitirNfcom(Body: TNfcomPedidoEmissao): TDfe;
    /// <summary>
    /// Consulta do Status do Serviço na SEFAZ Autorizadora
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Autorizador">
    /// Ambiente Autorizador.
    /// 
    /// Autorizadores disponíveis: `SVRS`.
    /// 
    /// *Caso não seja informado, será utilizado o ambiente autorizador da UF do emitente.*
    /// </param>
    /// <remarks>
    /// Consulta do status do serviço prestado pelo Portal da Secretaria de Fazenda Estadual.
    /// 
    /// A Nuvem Fiscal mantém a última consulta em cache por 5 minutos, evitando sobrecarregar desnecessariamente os servidores da SEFAZ.
    /// </remarks>
    function ConsultarStatusSefazNfcom(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
    /// <summary>
    /// Consultar NFCom
    /// </summary>
    /// <param name="Id">
    /// ID único da NFCom gerada pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Consulta os detalhes de uma NFCom já existente. Forneça o ID único obtido de uma requisição de emissão ou de listagem de NFCom e a Nuvem Fiscal irá retornar as informações da NFCom correspondente.
    /// </remarks>
    function ConsultarNfcom(Id: string): TDfe;
    /// <summary>
    /// Consultar o cancelamento da NFCom
    /// </summary>
    /// <param name="Id">
    /// ID único da NFCom gerada pela Nuvem Fiscal.
    /// </param>
    function ConsultarCancelamentoNfcom(Id: string): TDfeCancelamento;
    /// <summary>
    /// Cancelar uma NFCom autorizada
    /// </summary>
    /// <param name="Id">
    /// ID único da NFCom gerada pela Nuvem Fiscal.
    /// </param>
    function CancelarNfcom(Body: TNfcomPedidoCancelamento; Id: string): TDfeCancelamento;
    /// <summary>
    /// Baixar XML do cancelamento
    /// </summary>
    /// <param name="Id">
    /// ID único da NFCom gerada pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoNfcom(Id: string): TBytes;
    /// <summary>
    /// Baixar XML da NFCom processada
    /// </summary>
    /// <param name="Id">
    /// ID único da NFCom gerada pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Utilize esse endpoint para obter o XML da nota enviada para a SEFAZ, complementado com a informação do protocolo de autorização de uso (TAG raiz `nfcomProc`).
    /// 
    /// O XML só estará disponível nesse endpoint caso a nota tenha sido autorizada pela SEFAZ. Para obter o XML nos demais casos, utilize o endpoint `GET /nfcom/{id}/xml/nota`.
    /// </remarks>
    function BaixarXmlNfcom(Id: string): TBytes;
    /// <summary>
    /// Baixar XML da NFCom
    /// </summary>
    /// <param name="Id">
    /// ID único da NFCom gerada pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Utilize esse endpoint para obter o XML da nota enviada para a SEFAZ.
    /// 
    /// O XML estará disponível nesse endpoint mesmo em casos que a nota tenha sido rejeitada.
    /// </remarks>
    function BaixarXmlNfcomNota(Id: string): TBytes;
    /// <summary>
    /// Baixar XML do Protocolo da SEFAZ
    /// </summary>
    /// <param name="Id">
    /// ID único da NFCom gerada pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfcomProtocolo(Id: string): TBytes;
  end;
  
  TNfcomService = class(TRestService, INfcomService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Referencia">
    /// Seu identificador único para o documento.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <param name="Chave">
    /// Chave de acesso do DF-e.
    /// </param>
    /// <param name="Serie">
    /// Série do DF-e.
    /// </param>
    function ListarNfcom(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
    function EmitirNfcom(Body: TNfcomPedidoEmissao): TDfe;
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Autorizador">
    /// Ambiente Autorizador.
    /// 
    /// Autorizadores disponíveis: `SVRS`.
    /// 
    /// *Caso não seja informado, será utilizado o ambiente autorizador da UF do emitente.*
    /// </param>
    function ConsultarStatusSefazNfcom(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
    /// <param name="Id">
    /// ID único da NFCom gerada pela Nuvem Fiscal.
    /// </param>
    function ConsultarNfcom(Id: string): TDfe;
    /// <param name="Id">
    /// ID único da NFCom gerada pela Nuvem Fiscal.
    /// </param>
    function ConsultarCancelamentoNfcom(Id: string): TDfeCancelamento;
    /// <param name="Id">
    /// ID único da NFCom gerada pela Nuvem Fiscal.
    /// </param>
    function CancelarNfcom(Body: TNfcomPedidoCancelamento; Id: string): TDfeCancelamento;
    /// <param name="Id">
    /// ID único da NFCom gerada pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoNfcom(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NFCom gerada pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfcom(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NFCom gerada pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfcomNota(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NFCom gerada pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfcomProtocolo(Id: string): TBytes;
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
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Referencia">
    /// Seu identificador único para o documento.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <param name="Chave">
    /// Chave de acesso do DF-e.
    /// </param>
    /// <param name="Serie">
    /// Série do DF-e.
    /// </param>
    /// <remarks>
    /// Retorna a lista de notas de acordo com os critérios de busca utilizados. As notas são retornadas ordenadas pela data da criação, com as mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
    /// <summary>
    /// Emitir NF-e
    /// </summary>
    function EmitirNfe(Body: TNfePedidoEmissao): TDfe;
    /// <summary>
    /// Consultar contribuinte
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// 
    /// *Utilize o valor sem máscara*.
    /// </param>
    /// <param name="Uf">
    /// Sigla da UF consultada.
    /// 
    ///  Utilize `SU` para SUFRAMA.
    /// 
    /// *Caso não seja informada, será utilizada a UF da empresa.*
    /// </param>
    /// <param name="Argumento">
    /// Argumento de pesquisa.
    /// 
    /// Valores válidos:
    /// * `CNPJ`
    /// * `CPF`
    /// * `IE`
    /// </param>
    /// <param name="Documento">
    /// Documento a ser consultado (CNPJ, CPF ou Inscrição Estadual).
    /// </param>
    /// <remarks>
    /// Consulta o Cadastro Centralizado de Contribuintes (CCC) do ICMS da unidade federada.
    /// </remarks>
    function ConsultarContribuinteNfe(CpfCnpj: string; Uf: string; Argumento: string; Documento: string): TDfeContribuinteInfCons;
    /// <summary>
    /// Listar eventos
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="DfeId">
    /// ID único gerado pela Nuvem Fiscal para o documento fiscal.
    /// </param>
    /// <remarks>
    /// Retorna a lista de eventos vinculados a um documento fiscal de acordo com os critérios de busca utilizados. Os eventos são retornados ordenados pela data da criação, com as mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarEventosNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; DfeId: string): TDfeEventoListagem;
    /// <summary>
    /// Consultar evento
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarEventoNfe(Id: string): TDfeEvento;
    /// <summary>
    /// Baixar PDF do evento
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfEventoNfe(Id: string): TBytes;
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
    function InutilizarNumeracaoNfe(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
    /// <summary>
    /// Consultar a inutilização de sequência de numeração
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarInutilizacaoNfe(Id: string): TDfeInutilizacao;
    /// <summary>
    /// Baixar PDF da inutilização
    /// </summary>
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfInutilizacaoNfe(Id: string): TBytes;
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
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista dos lotes de acordo com os critérios de busca utilizados. Os lotes são retornados ordenados pela data da criação, com os mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarLotesNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
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
    /// Prévia do PDF do DANFE
    /// </summary>
    /// <param name="Logotipo">
    /// Imprime o documento com logotipo, desde que esteja cadastrado na empresa.
    /// </param>
    /// <param name="NomeFantasia">
    /// Exibe o nome fantasia do emitente, desde que esteja presente no XML da nota.
    /// </param>
    /// <param name="Formato">
    /// Formato de impressão do DANFE.
    /// 
    /// Valores disponíveis:
    /// - `padrao`: será utilizado o formato definido no XML da NF-e (tag "tpImp");
    /// - `retrato`: tamanho A4 em modo retrato;
    /// - `paisagem`: tamanho A4 em modo paisagem;
    /// - `simplificado`: formato simplificado utilizado nas operações realizadas fora do estabelecimento (Anexo II do MOC, item 3.11);
    /// - `etiqueta`: formato simplificado utilizado nas operações em comércio eletrônico (Anexo II do MOC, item 3.12 e NT 2020.004).
    /// </param>
    /// <param name="MensagemRodape">
    /// Imprime mensagem no rodapé do documento.
    /// 
    /// O caractere `|` (pipe) poderá ser utilizado para definir a quantidade e o alinhamento das mensagens.
    /// 
    /// **Exemplos de Uso:**
    /// * `"esquerda"`
    /// * `"esquerda|centro"`
    /// * `"esquerda|centro|direita"`
    /// * `"|centro"`, `"|centro|"`
    /// * `"|centro|direita"`
    /// * `"||direita"`
    /// * `"esquerda||direita"`
    /// </param>
    /// <param name="Canhoto">
    /// Imprime o documento com o bloco de canhoto.
    /// </param>
    /// <remarks>
    /// Através desse endpoint, é possível enviar os dados de uma NF-e e gerar uma prévia do DANFE.
    /// 
    /// Os dados de entrada são os mesmos do endpoint de emissão de NF-e (`POST /nfe`).
    /// 
    /// **Atenção**: O DANFE gerado por este endpoint é apenas para fins de visualização e não possui valor fiscal. Para a emissão de uma NF-e com valor fiscal, utilize o processo de emissão padrão descrito na documentação.
    /// </remarks>
    function BaixarPreviaPdfNfe(Body: TNfePedidoEmissao; Logotipo: Boolean; NomeFantasia: Boolean; Formato: string; MensagemRodape: string; Canhoto: Boolean): TBytes;
    /// <summary>
    /// Prévia do XML da NF-e
    /// </summary>
    /// <remarks>
    /// Através desse endpoint, é possível enviar os dados de uma NF-e e gerar uma prévia do XML, sem a assinatura digital.
    /// 
    /// Os dados de entrada são os mesmos do endpoint de emissão de NF-e (`POST /nfe`).
    /// 
    /// **Atenção**: O XML gerado por este endpoint é apenas para fins de visualização e não possui valor fiscal. Para a emissão de uma NF-e com valor fiscal, utilize o processo de emissão padrão descrito na documentação.
    /// </remarks>
    function BaixarPreviaXmlNfe(Body: TNfePedidoEmissao): TBytes;
    /// <summary>
    /// Consulta do Status do Serviço na SEFAZ Autorizadora
    /// </summary>
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Autorizador">
    /// Ambiente Autorizador.
    /// 
    /// Autorizadores disponíveis: `AM`, `BA`, `GO`, `MG`, `MS`, `MT`, `PE`, `PR`, `RS`, `SP`, `SVAN`, `SVRS`, `SVCAN`, `SVCRS`, `AN`.
    /// 
    /// *Caso não seja informado, será utilizado o ambiente autorizador da UF do emitente.*
    /// </param>
    /// <remarks>
    /// Consulta do status do serviço prestado pelo Portal da Secretaria de Fazenda Estadual.
    /// 
    /// A Nuvem Fiscal mantém a última consulta em cache por 5 minutos, evitando sobrecarregar desnecessariamente os servidores da SEFAZ (conforme orientação do MOC - versão 7.0, item 5.5.3). Dessa forma, você poderá chamar esse endpoint quantas vezes quiser, sem preocupar-se em ter o seu CNPJ bloqueado por consumo indevido (Rejeição 656).
    /// </remarks>
    function ConsultarStatusSefazNfe(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
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
    /// Baixar PDF do cancelamento
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfCancelamentoNfe(Id: string): TBytes;
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
    /// <param name="Body">
    /// Contém os dados do pedido para carta de correção.
    /// </param>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// É possível enviar até 20 correções diferentes, sendo que será válido sempre a última correção enviada.
    /// </remarks>
    function CriarCartaCorrecaoNfe(Body: TNfePedidoCartaCorrecao; Id: string): TDfeCartaCorrecao;
    /// <summary>
    /// Baixar PDF da carta de correção
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfCartaCorrecaoNfe(Id: string): TBytes;
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
    /// <param name="Logotipo">
    /// Imprime o documento com logotipo, desde que esteja cadastrado na empresa.
    /// </param>
    /// <param name="NomeFantasia">
    /// Exibe o nome fantasia do emitente, desde que esteja presente no XML da nota.
    /// </param>
    /// <param name="Formato">
    /// Formato de impressão do DANFE.
    /// 
    /// Valores disponíveis:
    /// - `padrao`: será utilizado o formato definido no XML da NF-e (tag "tpImp");
    /// - `retrato`: tamanho A4 em modo retrato;
    /// - `paisagem`: tamanho A4 em modo paisagem;
    /// - `simplificado`: formato simplificado utilizado nas operações realizadas fora do estabelecimento (Anexo II do MOC, item 3.11);
    /// - `etiqueta`: formato simplificado utilizado nas operações em comércio eletrônico (Anexo II do MOC, item 3.12 e NT 2020.004).
    /// </param>
    /// <param name="MensagemRodape">
    /// Imprime mensagem no rodapé do documento.
    /// 
    /// O caractere `|` (pipe) poderá ser utilizado para definir a quantidade e o alinhamento das mensagens.
    /// 
    /// **Exemplos de Uso:**
    /// * `"esquerda"`
    /// * `"esquerda|centro"`
    /// * `"esquerda|centro|direita"`
    /// * `"|centro"`, `"|centro|"`
    /// * `"|centro|direita"`
    /// * `"||direita"`
    /// * `"esquerda||direita"`
    /// </param>
    /// <param name="Canhoto">
    /// Imprime o documento com o bloco de canhoto.
    /// </param>
    function BaixarPdfNfe(Id: string; Logotipo: Boolean; NomeFantasia: Boolean; Formato: string; MensagemRodape: string; Canhoto: Boolean): TBytes;
    /// <summary>
    /// Sincroniza dados na NF-e a partir da SEFAZ
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Realiza a sincronização dos dados a partir da consulta da situação atual da NF-e na Base de Dados do Portal da Secretaria de Fazenda Estadual.
    /// 
    /// **Cenários de uso**:
    /// * Sincronizar uma nota que se encontra com o status `erro` na Nuvem Fiscal, mas está autorizada na SEFAZ (útil em casos de erros de transmissão com a SEFAZ, como instabilidades e timeouts).
    /// * Sincronizar uma nota que se encontra com o status `autorizado`na Nuvem Fiscal, mas está cancelada na SEFAZ.
    /// * Sincronizar todos os eventos de Cancelamento, Carta de Correção e EPEC de uma nota que porventura não tenham sido feitos a partir da Nuvem Fiscal.
    /// </remarks>
    function SincronizarNfe(Id: string): TDfeSincronizacao;
    /// <summary>
    /// Baixar XML da NF-e processada
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Utilize esse endpoint para obter o XML da nota enviado para a SEFAZ, complementado com a informação do protocolo de autorização ou denegação de uso (TAG raiz `nfeProc`).
    /// 
    /// O XML só estará disponível nesse endpoint caso a nota tenha sido autorizada ou denegada pela SEFAZ. Para obter o XML nos demais casos, utilize o endpoint `GET /nfe/{id}/xml/nota`.
    /// </remarks>
    function BaixarXmlNfe(Id: string): TBytes;
    /// <summary>
    /// Baixar XML da NF-e
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Utilize esse endpoint para obter o XML da nota enviado para a SEFAZ.
    /// 
    /// O XML estará disponível nesse endpoint mesmo em casos que a nota tenha sido rejeitada.
    /// </remarks>
    function BaixarXmlNfeNota(Id: string): TBytes;
    /// <summary>
    /// Baixar XML do Protocolo da SEFAZ
    /// </summary>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfeProtocolo(Id: string): TBytes;
  end;
  
  TNfeService = class(TRestService, INfeService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Referencia">
    /// Seu identificador único para o documento.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <param name="Chave">
    /// Chave de acesso do DF-e.
    /// </param>
    /// <param name="Serie">
    /// Série do DF-e.
    /// </param>
    function ListarNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
    function EmitirNfe(Body: TNfePedidoEmissao): TDfe;
    /// <param name="CpfCnpj">
    /// CPF ou CNPJ da empresa.
    /// 
    /// *Utilize o valor sem máscara*.
    /// </param>
    /// <param name="Uf">
    /// Sigla da UF consultada.
    /// 
    ///  Utilize `SU` para SUFRAMA.
    /// 
    /// *Caso não seja informada, será utilizada a UF da empresa.*
    /// </param>
    /// <param name="Argumento">
    /// Argumento de pesquisa.
    /// 
    /// Valores válidos:
    /// * `CNPJ`
    /// * `CPF`
    /// * `IE`
    /// </param>
    /// <param name="Documento">
    /// Documento a ser consultado (CNPJ, CPF ou Inscrição Estadual).
    /// </param>
    function ConsultarContribuinteNfe(CpfCnpj: string; Uf: string; Argumento: string; Documento: string): TDfeContribuinteInfCons;
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="DfeId">
    /// ID único gerado pela Nuvem Fiscal para o documento fiscal.
    /// </param>
    function ListarEventosNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; DfeId: string): TDfeEventoListagem;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarEventoNfe(Id: string): TDfeEvento;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfEventoNfe(Id: string): TBytes;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlEventoNfe(Id: string): TBytes;
    function InutilizarNumeracaoNfe(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarInutilizacaoNfe(Id: string): TDfeInutilizacao;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfInutilizacaoNfe(Id: string): TBytes;
    /// <param name="Id">
    /// ID único do evento gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlInutilizacaoNfe(Id: string): TBytes;
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarLotesNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
    function EmitirLoteNfe(Body: TNfePedidoEmissaoLote): TDfeLote;
    /// <param name="Id">
    /// ID único do lote gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarLoteNfe(Id: string): TDfeLote;
    /// <param name="Logotipo">
    /// Imprime o documento com logotipo, desde que esteja cadastrado na empresa.
    /// </param>
    /// <param name="NomeFantasia">
    /// Exibe o nome fantasia do emitente, desde que esteja presente no XML da nota.
    /// </param>
    /// <param name="Formato">
    /// Formato de impressão do DANFE.
    /// 
    /// Valores disponíveis:
    /// - `padrao`: será utilizado o formato definido no XML da NF-e (tag "tpImp");
    /// - `retrato`: tamanho A4 em modo retrato;
    /// - `paisagem`: tamanho A4 em modo paisagem;
    /// - `simplificado`: formato simplificado utilizado nas operações realizadas fora do estabelecimento (Anexo II do MOC, item 3.11);
    /// - `etiqueta`: formato simplificado utilizado nas operações em comércio eletrônico (Anexo II do MOC, item 3.12 e NT 2020.004).
    /// </param>
    /// <param name="MensagemRodape">
    /// Imprime mensagem no rodapé do documento.
    /// 
    /// O caractere `|` (pipe) poderá ser utilizado para definir a quantidade e o alinhamento das mensagens.
    /// 
    /// **Exemplos de Uso:**
    /// * `"esquerda"`
    /// * `"esquerda|centro"`
    /// * `"esquerda|centro|direita"`
    /// * `"|centro"`, `"|centro|"`
    /// * `"|centro|direita"`
    /// * `"||direita"`
    /// * `"esquerda||direita"`
    /// </param>
    /// <param name="Canhoto">
    /// Imprime o documento com o bloco de canhoto.
    /// </param>
    function BaixarPreviaPdfNfe(Body: TNfePedidoEmissao; Logotipo: Boolean; NomeFantasia: Boolean; Formato: string; MensagemRodape: string; Canhoto: Boolean): TBytes;
    function BaixarPreviaXmlNfe(Body: TNfePedidoEmissao): TBytes;
    /// <param name="CpfCnpj">
    /// CPF/CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Autorizador">
    /// Ambiente Autorizador.
    /// 
    /// Autorizadores disponíveis: `AM`, `BA`, `GO`, `MG`, `MS`, `MT`, `PE`, `PR`, `RS`, `SP`, `SVAN`, `SVRS`, `SVCAN`, `SVCRS`, `AN`.
    /// 
    /// *Caso não seja informado, será utilizado o ambiente autorizador da UF do emitente.*
    /// </param>
    function ConsultarStatusSefazNfe(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
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
    function BaixarPdfCancelamentoNfe(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoNfe(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarCartaCorrecaoNfe(Id: string): TDfeCartaCorrecao;
    /// <param name="Body">
    /// Contém os dados do pedido para carta de correção.
    /// </param>
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function CriarCartaCorrecaoNfe(Body: TNfePedidoCartaCorrecao; Id: string): TDfeCartaCorrecao;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarPdfCartaCorrecaoNfe(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCartaCorrecaoNfe(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <param name="Logotipo">
    /// Imprime o documento com logotipo, desde que esteja cadastrado na empresa.
    /// </param>
    /// <param name="NomeFantasia">
    /// Exibe o nome fantasia do emitente, desde que esteja presente no XML da nota.
    /// </param>
    /// <param name="Formato">
    /// Formato de impressão do DANFE.
    /// 
    /// Valores disponíveis:
    /// - `padrao`: será utilizado o formato definido no XML da NF-e (tag "tpImp");
    /// - `retrato`: tamanho A4 em modo retrato;
    /// - `paisagem`: tamanho A4 em modo paisagem;
    /// - `simplificado`: formato simplificado utilizado nas operações realizadas fora do estabelecimento (Anexo II do MOC, item 3.11);
    /// - `etiqueta`: formato simplificado utilizado nas operações em comércio eletrônico (Anexo II do MOC, item 3.12 e NT 2020.004).
    /// </param>
    /// <param name="MensagemRodape">
    /// Imprime mensagem no rodapé do documento.
    /// 
    /// O caractere `|` (pipe) poderá ser utilizado para definir a quantidade e o alinhamento das mensagens.
    /// 
    /// **Exemplos de Uso:**
    /// * `"esquerda"`
    /// * `"esquerda|centro"`
    /// * `"esquerda|centro|direita"`
    /// * `"|centro"`, `"|centro|"`
    /// * `"|centro|direita"`
    /// * `"||direita"`
    /// * `"esquerda||direita"`
    /// </param>
    /// <param name="Canhoto">
    /// Imprime o documento com o bloco de canhoto.
    /// </param>
    function BaixarPdfNfe(Id: string; Logotipo: Boolean; NomeFantasia: Boolean; Formato: string; MensagemRodape: string; Canhoto: Boolean): TBytes;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function SincronizarNfe(Id: string): TDfeSincronizacao;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfe(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfeNota(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NF-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfeProtocolo(Id: string): TBytes;
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
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Referencia">
    /// Seu identificador único para o documento.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <param name="Chave">
    /// Chave de acesso do DF-e.
    /// </param>
    /// <param name="Serie">
    /// Série do DF-e.
    /// </param>
    /// <remarks>
    /// Retorna a lista de notas de acordo com os critérios de busca utilizados. As notas são retornadas ordenadas pela data da criação, com as mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarNfse(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TNfseListagem;
    /// <summary>
    /// Emitir NFS-e
    /// </summary>
    function EmitirNfse(Body: TNfsePedidoEmissao): TNfse;
    /// <summary>
    /// Cidades atendidas
    /// </summary>
    /// <remarks>
    /// Fornece uma relação completa de todos os municípios atendidos pela Nuvem Fiscal.
    /// </remarks>
    function CidadesAtendidas: TNfseCidadesAtendidas;
    /// <summary>
    /// Consultar metadados
    /// </summary>
    /// <param name="CodigoIbge">
    /// Código IBGE do município.
    /// </param>
    /// <remarks>
    /// Consulta a disponibilidade de emissão e alguns metadados de um município.
    /// </remarks>
    function ConsultarMetadados(CodigoIbge: string): TNfseCidadeMetadados;
    /// <summary>
    /// Emitir NFS-e
    /// </summary>
    function EmitirNfseDps(Body: TNfseDpsPedidoEmissao): TNfse;
    /// <summary>
    /// Emitir lote de NFS-e
    /// </summary>
    function EmitirLoteNfseDps(Body: TNfseLoteDpsPedidoEmissao): TRpsLote;
    /// <summary>
    /// Listar lotes de NFS-e
    /// </summary>
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <remarks>
    /// Retorna a lista dos lotes de acordo com os critérios de busca utilizados. Os lotes são retornados ordenados pela data da criação, com os mais recentes aparecendo primeiro.
    /// </remarks>
    function ListarLotesNfse(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string): TRpsLoteListagem;
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
    /// Baixar XML do evento de cancelamento
    /// </summary>
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoNfse(Id: string): TBytes;
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
    function CancelarNfse(Body: TNfsePedidoCancelamento; Id: string): TNfseCancelamento;
    /// <summary>
    /// Baixar PDF do DANFSE
    /// </summary>
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <param name="Logotipo">
    /// Imprime o documento com logotipo, desde que esteja cadastrado na empresa.
    /// </param>
    /// <param name="MensagemRodape">
    /// Imprime mensagem no rodapé do documento.
    /// 
    /// O caractere `|` (pipe) poderá ser utilizado para definir a quantidade e o alinhamento das mensagens.
    /// 
    /// **Exemplos de Uso:**
    /// * `"esquerda"`
    /// * `"esquerda|centro"`
    /// * `"esquerda|centro|direita"`
    /// * `"|centro"`, `"|centro|"`
    /// * `"|centro|direita"`
    /// * `"||direita"`
    /// * `"esquerda||direita"`
    /// 
    /// Default: `""`
    /// </param>
    function BaixarPdfNfse(Id: string; Logotipo: Boolean; MensagemRodape: string): TBytes;
    /// <summary>
    /// Sincroniza dados na NFS-e a partir da Prefeitura
    /// </summary>
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <remarks>
    /// Realiza a sincronização dos dados a partir da consulta da situação atual da NFS-e na prefeitura.
    /// 
    /// **Cenários de uso**:
    /// * Sincronizar uma nota que se encontra com o status `processando` na Nuvem Fiscal, mas está autorizada na prefeitura;
    /// * Sincronizar uma nota que se encontra com o status `erro` na Nuvem Fiscal, mas está autorizada na prefeitura (útil em casos de erros de transmissão, como instabilidades e timeouts);
    /// * Sincronizar uma nota que se encontra com o status `autorizada`na Nuvem Fiscal, mas está cancelada na prefeitura.
    /// </remarks>
    function SincronizarNfse(Body: TNfsePedidoSincronizacao; Id: string): TNfseSincronizacao;
    /// <summary>
    /// Baixar XML da NFS-e processada
    /// </summary>
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfse(Id: string): TBytes;
    /// <summary>
    /// Baixar XML da DPS
    /// </summary>
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlDps(Id: string): TBytes;
  end;
  
  TNfseService = class(TRestService, INfseService)
  public
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// 
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Referencia">
    /// Seu identificador único para o documento.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    /// <param name="Chave">
    /// Chave de acesso do DF-e.
    /// </param>
    /// <param name="Serie">
    /// Série do DF-e.
    /// </param>
    function ListarNfse(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TNfseListagem;
    function EmitirNfse(Body: TNfsePedidoEmissao): TNfse;
    function CidadesAtendidas: TNfseCidadesAtendidas;
    /// <param name="CodigoIbge">
    /// Código IBGE do município.
    /// </param>
    function ConsultarMetadados(CodigoIbge: string): TNfseCidadeMetadados;
    function EmitirNfseDps(Body: TNfseDpsPedidoEmissao): TNfse;
    function EmitirLoteNfseDps(Body: TNfseLoteDpsPedidoEmissao): TRpsLote;
    /// <param name="Top">
    /// Limite no número de objetos a serem retornados pela API, entre 1 e 100.
    /// </param>
    /// <param name="Skip">
    /// Quantidade de objetos que serão ignorados antes da lista começar a ser retornada.
    /// </param>
    /// <param name="Inlinecount">
    /// Inclui no JSON de resposta, na propriedade `@count`, o número total de registros que o filtro retornaria, independente dos filtros de paginação.
    /// </param>
    /// <param name="CpfCnpj">
    /// Filtrar pelo CPF ou CNPJ do emitente.
    /// Utilize o valor sem máscara.
    /// </param>
    /// <param name="Ambiente">
    /// Identificação do Ambiente.
    /// 
    /// Valores aceitos: homologacao, producao
    /// </param>
    function ListarLotesNfse(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string): TRpsLoteListagem;
    function EmitirLoteNfse(Body: TRpsPedidoEmissaoLote): TRpsLote;
    /// <param name="Id">
    /// ID único do lote gerado pela Nuvem Fiscal.
    /// </param>
    function ConsultarLoteNfse(Id: string): TRpsLote;
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlCancelamentoNfse(Id: string): TBytes;
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
    function CancelarNfse(Body: TNfsePedidoCancelamento; Id: string): TNfseCancelamento;
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    /// <param name="Logotipo">
    /// Imprime o documento com logotipo, desde que esteja cadastrado na empresa.
    /// </param>
    /// <param name="MensagemRodape">
    /// Imprime mensagem no rodapé do documento.
    /// 
    /// O caractere `|` (pipe) poderá ser utilizado para definir a quantidade e o alinhamento das mensagens.
    /// 
    /// **Exemplos de Uso:**
    /// * `"esquerda"`
    /// * `"esquerda|centro"`
    /// * `"esquerda|centro|direita"`
    /// * `"|centro"`, `"|centro|"`
    /// * `"|centro|direita"`
    /// * `"||direita"`
    /// * `"esquerda||direita"`
    /// 
    /// Default: `""`
    /// </param>
    function BaixarPdfNfse(Id: string; Logotipo: Boolean; MensagemRodape: string): TBytes;
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    function SincronizarNfse(Body: TNfsePedidoSincronizacao; Id: string): TNfseSincronizacao;
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlNfse(Id: string): TBytes;
    /// <param name="Id">
    /// ID único da NFS-e gerado pela Nuvem Fiscal.
    /// </param>
    function BaixarXmlDps(Id: string): TBytes;
  end;
  
  TNuvemFiscalConfig = class(TCustomRestConfig)
  public
    constructor Create;
  end;
  
  INuvemFiscalClient = interface(IRestClient)
    function Cep: ICepService;
    function Cnpj: ICnpjService;
    function Conta: IContaService;
    /// <summary>
    /// Conhecimento de Transporte Eletrônico.
    /// </summary>
    function Cte: ICteService;
    /// <summary>
    /// O processo de distribuição de DFe envolve a disponibilização dos
    /// documentos fiscais eletrônicos para os envolvidos na transação (emitentes,
    /// destinatários e terceiros autorizados). Ele permite que os destinatários
    /// recebam as NF-e emitidas contra o seu CNPJ diretamente do Ambiente
    /// Nacional, facilitando o controle e a gestão dos documentos recebidos.
    /// </summary>
    function DistribuiçãoNFE: IDistribuiçãoNFEService;
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
    /// Nota Fiscal Fatura de Serviço de Comunicação Eletrônica.
    /// </summary>
    function Nfcom: INfcomService;
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
    function Conta: IContaService;
    function Cte: ICteService;
    function DistribuiçãoNFE: IDistribuiçãoNFEService;
    function Empresa: IEmpresaService;
    function Mdfe: IMdfeService;
    function Nfce: INfceService;
    function Nfcom: INfcomService;
    function Nfe: INfeService;
    function Nfse: INfseService;
    constructor Create;
  end;
  
implementation

{ TRestService }

function TRestService.CreateConverter: TCustomJsonConverter;
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

function TCnpjService.ListarCnpj(Top: Integer; Skip: Integer; Inlinecount: Boolean; CnaePrincipal: string; Municipio: string; NaturezaJuridica: string): TCnpjListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cnpj', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
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

{ TContaService }

function TContaService.ListarCotasConta: TContaCotaListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/conta/cotas', 'GET');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TContaCotaListagemFromJson(Response.ContentAsString);
end;

function TContaService.ConsultarCotaConta(Nome: string): TContaCota;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/conta/cotas/{nome}', 'GET');
  Request.AddUrlParam('nome', Nome);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TContaCotaFromJson(Response.ContentAsString);
end;

{ TCteService }

function TCteService.ListarCte(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddQueryParam('chave', Chave);
  Request.AddQueryParam('serie', Serie);
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

function TCteService.BaixarPdfEventoCte(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/eventos/{id}/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
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

function TCteService.ConsultarStatusSefazCte(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/sefaz/status', 'GET');
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('autorizador', Autorizador);
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

function TCteService.BaixarPdfCancelamentoCte(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/{id}/cancelamento/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
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

function TCteService.BaixarPdfCartaCorrecaoCte(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/{id}/carta-correcao/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
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

function TCteService.BaixarPdfCte(Id: string; Logotipo: Boolean): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/{id}/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddQueryParam('logotipo', BoolToParam(Logotipo));
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TCteService.SincronizarCte(Id: string): TDfeSincronizacao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/{id}/sincronizar', 'POST');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeSincronizacaoFromJson(Response.ContentAsString);
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

function TCteService.BaixarXmlCteConhecimento(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/{id}/xml/conhecimento', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TCteService.BaixarXmlCteProtocolo(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/cte/{id}/xml/protocolo', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

{ TDistribuiçãoNFEService }

function TDistribuiçãoNFEService.ListarDistribuicaoNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Ambiente: string): TDistribuicaoNfeListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/distribuicao/nfe', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDistribuicaoNfeListagemFromJson(Response.ContentAsString);
end;

function TDistribuiçãoNFEService.GerarDistribuicaoNfe(Body: TDistribuicaoNfePedido): TDistribuicaoNfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/distribuicao/nfe', 'POST');
  Request.AddBody(Converter.TDistribuicaoNfePedidoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDistribuicaoNfeFromJson(Response.ContentAsString);
end;

function TDistribuiçãoNFEService.ListarDocumentoDistribuicaoNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Ambiente: string; TipoDocumento: string; FormaDistribuicao: string; ChaveAcesso: string): TDistribuicaoNfeDocumentoListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/distribuicao/nfe/documentos', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddQueryParam('tipo_documento', TipoDocumento);
  Request.AddQueryParam('forma_distribuicao', FormaDistribuicao);
  Request.AddQueryParam('chave_acesso', ChaveAcesso);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDistribuicaoNfeDocumentoListagemFromJson(Response.ContentAsString);
end;

function TDistribuiçãoNFEService.ConsultarDocumentoDistribuicaoNfe(Id: string): TDistribuicaoNfeDocumento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/distribuicao/nfe/documentos/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDistribuicaoNfeDocumentoFromJson(Response.ContentAsString);
end;

function TDistribuiçãoNFEService.BaixarXmlDocumentoDistribuicaoNfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/distribuicao/nfe/documentos/{id}/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TDistribuiçãoNFEService.ListarManifestacaoNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Ambiente: string): TManifestacaoNfeListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/distribuicao/nfe/manifestacoes', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TManifestacaoNfeListagemFromJson(Response.ContentAsString);
end;

function TDistribuiçãoNFEService.ManifestarNfe(Body: TDistribuicaoNfePedidoManifestacao): TDistribuicaoNfeEvento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/distribuicao/nfe/manifestacoes', 'POST');
  Request.AddBody(Converter.TDistribuicaoNfePedidoManifestacaoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDistribuicaoNfeEventoFromJson(Response.ContentAsString);
end;

function TDistribuiçãoNFEService.ConsultarManifestacaoNfe(Id: string): TDistribuicaoNfeEvento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/distribuicao/nfe/manifestacoes/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDistribuicaoNfeEventoFromJson(Response.ContentAsString);
end;

function TDistribuiçãoNFEService.ConsultarDistribuicaoNfe(Id: string): TDistribuicaoNfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/distribuicao/nfe/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDistribuicaoNfeFromJson(Response.ContentAsString);
end;

{ TEmpresaService }

function TEmpresaService.ListarEmpresas(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string): TEmpresaListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
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

function TEmpresaService.ConsultarConfigDistribuicaoNfe(CpfCnpj: string): TEmpresaConfigDistribuicaoNfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/distnfe', 'GET');
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaConfigDistribuicaoNfeFromJson(Response.ContentAsString);
end;

function TEmpresaService.AlterarConfigDistribuicaoNfe(Body: TEmpresaConfigDistribuicaoNfe; CpfCnpj: string): TEmpresaConfigDistribuicaoNfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/distnfe', 'PUT');
  Request.AddBody(Converter.TEmpresaConfigDistribuicaoNfeToJson(Body));
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaConfigDistribuicaoNfeFromJson(Response.ContentAsString);
end;

function TEmpresaService.BaixarLogotipoEmpresa(CpfCnpj: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/logotipo', 'GET');
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

procedure TEmpresaService.EnviarLogotipoEmpresa(Input: TBytes; CpfCnpj: string);
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/logotipo', 'PUT');
  raise Exception.Create('Form param ''Input'' not supported');
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Response := Request.Execute;
  CheckError(Response);
end;

procedure TEmpresaService.ExcluirLogotipoEmpresa(CpfCnpj: string);
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/logotipo', 'DELETE');
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Response := Request.Execute;
  CheckError(Response);
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

function TEmpresaService.ConsultarConfigNfcom(CpfCnpj: string): TEmpresaConfigNfcom;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/nfcom', 'GET');
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaConfigNfcomFromJson(Response.ContentAsString);
end;

function TEmpresaService.AlterarConfigNfcom(Body: TEmpresaConfigNfcom; CpfCnpj: string): TEmpresaConfigNfcom;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/empresas/{cpf_cnpj}/nfcom', 'PUT');
  Request.AddBody(Converter.TEmpresaConfigNfcomToJson(Body));
  Request.AddUrlParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TEmpresaConfigNfcomFromJson(Response.ContentAsString);
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

function TMdfeService.ListarMdfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddQueryParam('chave', Chave);
  Request.AddQueryParam('serie', Serie);
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

function TMdfeService.BaixarPdfEventoMdfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/eventos/{id}/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
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

function TMdfeService.ListarLotesMdfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/lotes', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
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

function TMdfeService.ConsultarMdfeNaoEncerrados(CpfCnpj: string): TMdfeNaoEncerrados;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/nao-encerrados', 'GET');
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TMdfeNaoEncerradosFromJson(Response.ContentAsString);
end;

function TMdfeService.ConsultarStatusSefazMdfe(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/sefaz/status', 'GET');
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('autorizador', Autorizador);
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

function TMdfeService.BaixarPdfCancelamentoMdfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/cancelamento/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
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

function TMdfeService.BaixarPdfEncerramentoMdfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/encerramento/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
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

function TMdfeService.BaixarPdfMdfe(Id: string; Logotipo: Boolean): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddQueryParam('logotipo', BoolToParam(Logotipo));
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TMdfeService.SincronizarMdfe(Id: string): TDfeSincronizacao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/sincronizar', 'POST');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeSincronizacaoFromJson(Response.ContentAsString);
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

function TMdfeService.BaixarXmlMdfeManifesto(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/xml/manifesto', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TMdfeService.BaixarXmlMdfeProtocolo(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/mdfe/{id}/xml/protocolo', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

{ TNfceService }

function TNfceService.ListarNfce(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddQueryParam('chave', Chave);
  Request.AddQueryParam('serie', Serie);
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

function TNfceService.ListarEventosNfce(Top: Integer; Skip: Integer; Inlinecount: Boolean; DfeId: string): TDfeEventoListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/eventos', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
  Request.AddQueryParam('dfe_id', DfeId);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeEventoListagemFromJson(Response.ContentAsString);
end;

function TNfceService.ConsultarEventoNfce(Id: string): TDfeEvento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/eventos/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeEventoFromJson(Response.ContentAsString);
end;

function TNfceService.BaixarPdfEventoNfce(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/eventos/{id}/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfceService.BaixarXmlEventoNfce(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/eventos/{id}/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfceService.InutilizarNumeracaoNfce(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
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

function TNfceService.BaixarPdfInutilizacaoNfce(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/inutilizacoes/{id}/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
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

function TNfceService.ListarLotesNfce(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/lotes', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
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

function TNfceService.BaixarPreviaPdfNfce(Body: TNfePedidoEmissao; Logotipo: Boolean; NomeFantasia: Boolean; MensagemRodape: string; Resumido: Boolean; QrcodeLateral: Boolean; Largura: Integer; Margem: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/previa/pdf', 'POST');
  Request.AddBody(Converter.TNfePedidoEmissaoToJson(Body));
  Request.AddQueryParam('logotipo', BoolToParam(Logotipo));
  Request.AddQueryParam('nome_fantasia', BoolToParam(NomeFantasia));
  Request.AddQueryParam('mensagem_rodape', MensagemRodape);
  Request.AddQueryParam('resumido', BoolToParam(Resumido));
  Request.AddQueryParam('qrcode_lateral', BoolToParam(QrcodeLateral));
  Request.AddQueryParam('largura', IntToStr(Largura));
  Request.AddQueryParam('margem', Margem);
  Request.AddHeader('Content-Type', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfceService.BaixarPreviaXmlNfce(Body: TNfePedidoEmissao): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/previa/xml', 'POST');
  Request.AddBody(Converter.TNfePedidoEmissaoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfceService.ConsultarStatusSefazNfce(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/sefaz/status', 'GET');
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('autorizador', Autorizador);
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

function TNfceService.BaixarPdfCancelamentoNfce(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/{id}/cancelamento/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
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

function TNfceService.BaixarEscPosNfce(Id: string; Modelo: Integer; Colunas: Integer; QrcodeLateral: Boolean): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/{id}/escpos', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddQueryParam('modelo', IntToStr(Modelo));
  Request.AddQueryParam('colunas', IntToStr(Colunas));
  Request.AddQueryParam('qrcode_lateral', BoolToParam(QrcodeLateral));
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfceService.BaixarPdfNfce(Id: string; Logotipo: Boolean; NomeFantasia: Boolean; MensagemRodape: string; Resumido: Boolean; QrcodeLateral: Boolean; Largura: Integer; Margem: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/{id}/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddQueryParam('logotipo', BoolToParam(Logotipo));
  Request.AddQueryParam('nome_fantasia', BoolToParam(NomeFantasia));
  Request.AddQueryParam('mensagem_rodape', MensagemRodape);
  Request.AddQueryParam('resumido', BoolToParam(Resumido));
  Request.AddQueryParam('qrcode_lateral', BoolToParam(QrcodeLateral));
  Request.AddQueryParam('largura', IntToStr(Largura));
  Request.AddQueryParam('margem', Margem);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfceService.SincronizarNfce(Id: string): TDfeSincronizacao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/{id}/sincronizar', 'POST');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeSincronizacaoFromJson(Response.ContentAsString);
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

function TNfceService.BaixarXmlNfceNota(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/{id}/xml/nota', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfceService.BaixarXmlNfceProtocolo(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfce/{id}/xml/protocolo', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

{ TNfcomService }

function TNfcomService.ListarNfcom(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfcom', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddQueryParam('chave', Chave);
  Request.AddQueryParam('serie', Serie);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeListagemFromJson(Response.ContentAsString);
end;

function TNfcomService.EmitirNfcom(Body: TNfcomPedidoEmissao): TDfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfcom', 'POST');
  Request.AddBody(Converter.TNfcomPedidoEmissaoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeFromJson(Response.ContentAsString);
end;

function TNfcomService.ConsultarStatusSefazNfcom(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfcom/sefaz/status', 'GET');
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('autorizador', Autorizador);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeSefazStatusFromJson(Response.ContentAsString);
end;

function TNfcomService.ConsultarNfcom(Id: string): TDfe;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfcom/{id}', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeFromJson(Response.ContentAsString);
end;

function TNfcomService.ConsultarCancelamentoNfcom(Id: string): TDfeCancelamento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfcom/{id}/cancelamento', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeCancelamentoFromJson(Response.ContentAsString);
end;

function TNfcomService.CancelarNfcom(Body: TNfcomPedidoCancelamento; Id: string): TDfeCancelamento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfcom/{id}/cancelamento', 'POST');
  Request.AddBody(Converter.TNfcomPedidoCancelamentoToJson(Body));
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeCancelamentoFromJson(Response.ContentAsString);
end;

function TNfcomService.BaixarXmlCancelamentoNfcom(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfcom/{id}/cancelamento/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfcomService.BaixarXmlNfcom(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfcom/{id}/xml', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfcomService.BaixarXmlNfcomNota(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfcom/{id}/xml/nota', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfcomService.BaixarXmlNfcomProtocolo(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfcom/{id}/xml/protocolo', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

{ TNfeService }

function TNfeService.ListarNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TDfeListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddQueryParam('chave', Chave);
  Request.AddQueryParam('serie', Serie);
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

function TNfeService.ConsultarContribuinteNfe(CpfCnpj: string; Uf: string; Argumento: string; Documento: string): TDfeContribuinteInfCons;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/cadastro-contribuinte', 'GET');
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('uf', Uf);
  Request.AddQueryParam('argumento', Argumento);
  Request.AddQueryParam('documento', Documento);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeContribuinteInfConsFromJson(Response.ContentAsString);
end;

function TNfeService.ListarEventosNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; DfeId: string): TDfeEventoListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/eventos', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
  Request.AddQueryParam('dfe_id', DfeId);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeEventoListagemFromJson(Response.ContentAsString);
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

function TNfeService.BaixarPdfEventoNfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/eventos/{id}/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
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

function TNfeService.InutilizarNumeracaoNfe(Body: TDfePedidoInutilizacao): TDfeInutilizacao;
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

function TNfeService.BaixarPdfInutilizacaoNfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/inutilizacoes/{id}/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
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

function TNfeService.ListarLotesNfe(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string): TDfeLoteListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/lotes', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
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

function TNfeService.BaixarPreviaPdfNfe(Body: TNfePedidoEmissao; Logotipo: Boolean; NomeFantasia: Boolean; Formato: string; MensagemRodape: string; Canhoto: Boolean): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/previa/pdf', 'POST');
  Request.AddBody(Converter.TNfePedidoEmissaoToJson(Body));
  Request.AddQueryParam('logotipo', BoolToParam(Logotipo));
  Request.AddQueryParam('nome_fantasia', BoolToParam(NomeFantasia));
  Request.AddQueryParam('formato', Formato);
  Request.AddQueryParam('mensagem_rodape', MensagemRodape);
  Request.AddQueryParam('canhoto', BoolToParam(Canhoto));
  Request.AddHeader('Content-Type', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfeService.BaixarPreviaXmlNfe(Body: TNfePedidoEmissao): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/previa/xml', 'POST');
  Request.AddBody(Converter.TNfePedidoEmissaoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfeService.ConsultarStatusSefazNfe(CpfCnpj: string; Autorizador: string): TDfeSefazStatus;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/sefaz/status', 'GET');
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('autorizador', Autorizador);
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

function TNfeService.BaixarPdfCancelamentoNfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}/cancelamento/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
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

function TNfeService.BaixarPdfCartaCorrecaoNfe(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}/carta-correcao/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
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

function TNfeService.BaixarPdfNfe(Id: string; Logotipo: Boolean; NomeFantasia: Boolean; Formato: string; MensagemRodape: string; Canhoto: Boolean): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddQueryParam('logotipo', BoolToParam(Logotipo));
  Request.AddQueryParam('nome_fantasia', BoolToParam(NomeFantasia));
  Request.AddQueryParam('formato', Formato);
  Request.AddQueryParam('mensagem_rodape', MensagemRodape);
  Request.AddQueryParam('canhoto', BoolToParam(Canhoto));
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfeService.SincronizarNfe(Id: string): TDfeSincronizacao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}/sincronizar', 'POST');
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TDfeSincronizacaoFromJson(Response.ContentAsString);
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

function TNfeService.BaixarXmlNfeNota(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}/xml/nota', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfeService.BaixarXmlNfeProtocolo(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfe/{id}/xml/protocolo', 'GET');
  Request.AddUrlParam('id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

{ TNfseService }

function TNfseService.ListarNfse(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string; Chave: string; Serie: string): TNfseListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
  Request.AddQueryParam('cpf_cnpj', CpfCnpj);
  Request.AddQueryParam('referencia', Referencia);
  Request.AddQueryParam('ambiente', Ambiente);
  Request.AddQueryParam('chave', Chave);
  Request.AddQueryParam('serie', Serie);
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

function TNfseService.CidadesAtendidas: TNfseCidadesAtendidas;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/cidades', 'GET');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TNfseCidadesAtendidasFromJson(Response.ContentAsString);
end;

function TNfseService.ConsultarMetadados(CodigoIbge: string): TNfseCidadeMetadados;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/cidades/{codigo_ibge}', 'GET');
  Request.AddUrlParam('codigo_ibge', CodigoIbge);
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TNfseCidadeMetadadosFromJson(Response.ContentAsString);
end;

function TNfseService.EmitirNfseDps(Body: TNfseDpsPedidoEmissao): TNfse;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/dps', 'POST');
  Request.AddBody(Converter.TNfseDpsPedidoEmissaoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TNfseFromJson(Response.ContentAsString);
end;

function TNfseService.EmitirLoteNfseDps(Body: TNfseLoteDpsPedidoEmissao): TRpsLote;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/dps/lotes', 'POST');
  Request.AddBody(Converter.TNfseLoteDpsPedidoEmissaoToJson(Body));
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TRpsLoteFromJson(Response.ContentAsString);
end;

function TNfseService.ListarLotesNfse(Top: Integer; Skip: Integer; Inlinecount: Boolean; CpfCnpj: string; Referencia: string; Ambiente: string): TRpsLoteListagem;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/lotes', 'GET');
  Request.AddQueryParam('$top', IntToStr(Top));
  Request.AddQueryParam('$skip', IntToStr(Skip));
  Request.AddQueryParam('$inlinecount', BoolToParam(Inlinecount));
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

function TNfseService.BaixarXmlCancelamentoNfse(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/{Id}/cancelamento/xml', 'GET');
  Request.AddUrlParam('Id', Id);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
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

function TNfseService.CancelarNfse(Body: TNfsePedidoCancelamento; Id: string): TNfseCancelamento;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/{id}/cancelamento', 'POST');
  Request.AddBody(Converter.TNfsePedidoCancelamentoToJson(Body));
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TNfseCancelamentoFromJson(Response.ContentAsString);
end;

function TNfseService.BaixarPdfNfse(Id: string; Logotipo: Boolean; MensagemRodape: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/{id}/pdf', 'GET');
  Request.AddUrlParam('id', Id);
  Request.AddQueryParam('logotipo', BoolToParam(Logotipo));
  Request.AddQueryParam('mensagem_rodape', MensagemRodape);
  Response := Request.Execute;
  CheckError(Response);
  Result := Response.ContentAsBytes;
end;

function TNfseService.SincronizarNfse(Body: TNfsePedidoSincronizacao; Id: string): TNfseSincronizacao;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/{id}/sincronizar', 'POST');
  Request.AddBody(Converter.TNfsePedidoSincronizacaoToJson(Body));
  Request.AddUrlParam('id', Id);
  Request.AddHeader('Content-Type', 'application/json');
  Request.AddHeader('Accept', 'application/json');
  Response := Request.Execute;
  CheckError(Response);
  Result := Converter.TNfseSincronizacaoFromJson(Response.ContentAsString);
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

function TNfseService.BaixarXmlDps(Id: string): TBytes;
var
  Request: IRestRequest;
  Response: IRestResponse;
begin
  Request := CreateRequest('/nfse/{id}/xml/dps', 'GET');
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

function TNuvemFiscalClient.Conta: IContaService;
begin
  Result := TContaService.Create(Config);
end;

function TNuvemFiscalClient.Cte: ICteService;
begin
  Result := TCteService.Create(Config);
end;

function TNuvemFiscalClient.DistribuiçãoNFE: IDistribuiçãoNFEService;
begin
  Result := TDistribuiçãoNFEService.Create(Config);
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

function TNuvemFiscalClient.Nfcom: INfcomService;
begin
  Result := TNfcomService.Create(Config);
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
