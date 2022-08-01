# nuvemfiscal-sdk-delphi
Biblioteca Delphi para uso da API da Nuvem Fiscal

## Instalação

Para utilizar a biblioteca, basta adicionar o caminho completo da pasta [Source](/Source) ao `Library Path` da IDE do Delphi (ou ao `Search Path` do seu projeto).

## Utilização

Para uso do client, você precisa adicionar as units `NuvemFiscalClient` e `NuvemFiscalDTOs` à clausula `uses` da sua unit.

### Criando o client

Você pode então instanciar e configurar o client:

```delphi
var
  Client: INuvemFiscalClient;
{...}
  Client := TNuvemFiscalClient.Create;
  Client.Config.AccessToken := '<meu access token>';
```

### Executando os métodos

Todos os endpoints da API da Nuvem Fiscal estão disponíveis no client, agrupadas por interfaces de acordo com o serviço. Por exemplo, o client disponibiliza interfaces nas propriedades `Nfse` (métodos para emissão de Nfse e outras operações relacionadas), `Nfe` (operações relacionados a NFe), `Cep` (operações para consulta de CEP), e assim por diante.

O exemplo a seguir faz uma consulta de dados de um CNPJ:

```delphi
var
  Empresa: TCnpjEmpresa;
  Endereco: TCnpjEndereco;
  Socio: TCnpjSocio;
begin
  Empresa := Client.Cnpj.ConsultarCnpj('08421842000190');
  try
    // Dados do CNPJ estão disponíveis na variável Empresa, por exemplo:
    // Empresa.RazaoSocial
    // Empresa.Endereco.Logradouro
    // Empresa.Endereco.Municipio
    // Empresa.Endereco.Uf
    // Empresa.Socios
    // Empresa.Socios[Index].Nome
  finally
    Empresa.Free;
  end;
end;
```

Todos os objetos criados e passados como parâmetro, bem como os objetos recebidos como retorno de função, precisamo ser destruídos pelo usuário, caso contrário isso gerará um vazamento de memória.

Você pode usar o *code completion* do Delphi para verificar os serviços, métodos e objetos disponíveis.