# nuvemfiscal-sdk-delphi
Biblioteca Delphi para uso da API da [Nuvem Fiscal](https://www.nuvemfiscal.com.br). É importante também consultar a [documentação da Nuvem Fiscal](https://dev.nuvemfiscal.com.br/docs).

## Instalação

Para utilizar a biblioteca, basta adicionar o caminho completo da pasta [Source](/Source) ao `Library Path` da IDE do Delphi (ou ao `Search Path` do seu projeto).

## Utilização

Para uso do client, você precisa adicionar as units `NuvemFiscalClient` e `NuvemFiscalDTOs` à clausula `uses` da sua unit. Caso queira usar a interface de geração de token, você também precisa adicionar a unit `OpenApiRest`:

```delphi
uses 
  NuvemFiscalClient, NuvemFiscalDTOs, OpenApiRest;
```

### Obtendo o token de acesso

O [processo de autenticação da Nuvem Fiscal](https://dev.nuvemfiscal.com.br/docs/autenticacao) envolve dois passos:

* [Obtenção das credenciais](https://dev.nuvemfiscal.com.br/docs/autenticacao#credenciais) (*Client ID* e *Client Secret*)
* [Geração do token de acesso](https://dev.nuvemfiscal.com.br/docs/autenticacao#token) usando as credenciais obtidas.

O primeiro passo deve ser feito no [console da Nuvem Fiscal](https://console.nuvemfiscal.com.br), enquanto o segundo você deve fazer manualmente. O SDK do Delphi oferece uma forma fácil de obter esse token a partir das credenciais, da seguinte forma:

```delphi
var
  TokenProvider: IClientCredencialsTokenProvider;
  TokenData: ITokenData;
  AccessToken: string;
  DataExpiracao: TDateTime;
begin
  TokenProvider := TClientCredentialsTokenProvider.Create;
  TokenProvider.TokenEndpoint := 'https://auth.nuvemfiscal.com.br/oauth/token';
  TokenProvider.ClientId := '<seu client id>';
  TokenProvider.ClientSecret := '<seu client secret>';
  TokenProvider.Scope := 'empresa cep cnpj nfe nfse nfce cte mdfe';
  TokenData := TokenProvider.RetrieveToken;
  AccessToken := TokenData.AccessToken;
  DataExpiracao := TokenData.ExpirationTime;
...
```

### Criando o client

Com um token de acesso em mãos, você pode instanciar e configurar o client:

```delphi
var
  Client: INuvemFiscalClient;
{...}
  Client := TNuvemFiscalClient.Create;
  Client.Config.AccessToken := '<seu access token>';
```

### Executando os métodos

Todos os [endpoints da API da Nuvem Fiscal](https://dev.nuvemfiscal.com.br/docs/api) estão disponíveis no client, agrupadas por interfaces de acordo com o serviço. Por exemplo, o client disponibiliza interfaces nas propriedades `Nfse` (métodos para emissão de Nfse e outras operações relacionadas), `Nfe` (operações relacionados a NFe), `Cep` (operações para consulta de CEP), e assim por diante.

O exemplo a seguir faz uma consulta de dados de um CNPJ:

```delphi
var
  Empresa: TCnpjEmpresa;
  Endereco: TCnpjEndereco;
begin
  Empresa := Client.Cnpj.ConsultarCnpj('08421842000190');
  try
    // Dados do CNPJ estão disponíveis na variável Empresa, por exemplo:
    // Empresa.RazaoSocial
    // Empresa.Endereco.Logradouro
    // Empresa.Endereco.Municipio
    // Empresa.Endereco.Uf
  finally
    Empresa.Free;
  end;
end;
```

Todos os objetos criados e passados como parâmetros, bem como os objetos recebidos como retorno de função, precisam ser destruídos pelo usuário, caso contrário isso gerará um vazamento de memória.

Você pode usar o *code completion* do Delphi para verificar os serviços, métodos, propriedades e classes disponíveis.

Visite os links da Nuvem Fiscal para saber mais:

* [Site da Nuvem Fiscal](https://www.nuvemfiscal.com.br/)
* [Documentação completa](https://dev.nuvemfiscal.com.br/docs/)
* [Referência da API](https://dev.nuvemfiscal.com.br/docs/api)
