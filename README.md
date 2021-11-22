# Cadastro de Pontos Turísticos

## Projeto criado para cadastrar pontos turísticos em linguagem *C#*

Para executar o projeto, será necessário ter os seguintes programas e recursos:

- [Visual Studio Community](https://visualstudio.microsoft.com/pt-br/vs/community/)
- [SQL Server](https://www.microsoft.com/pt-br/sql-server/sql-server-downloads)

### Configuração

Para configurar o projeto será necessário um banco de dados e é possível criar o mesmo com o seguinte comando no SQL Server:

```

Create Database Turismo2;

```

Em seguida criar a tabela necessária para inclusão e consulta com o seguinte comando:

```

CREATE TABLE [dbo].[Cadastro](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[uf] [varchar](50) NOT NULL,
	[cidade] [varchar](50) NOT NULL,
	[referencia] [varchar](150) NULL,
	[descr] [varchar](200) NULL,
	)

```

Com o banco configurado, vá na pasta raiz do Projeto e execute o arquivo **Pontos Turisticos.sln** com o Visual Studio Community.

Dentro do Projeto siga o caminho **Solução 'Pontos Turísticos'/Repository/LocalRepository.cs** e altere a **linha 11** onde está a String de conexão com o Banco/Tabela como mostra na imagem:

![String conexão](https://i.ibb.co/60kGT8j/Repository-String-Conex-o.png)
Altere o comando para onde se encontra configurado o SQl Server:

```
String conexao = "Server=NOME DO SERVIDOR ; Database=NOME DO BANCO ; integrated security = true";

```

*OBS 1: Caso tenha usado os códigos de criação do banco como consta no arquivo não é necessário alterar o comando 'Database'.*
*OBS 2: Lembrando que no nome do servidor existem duas barras invertidas, enquanto no SQL Server só tem uma.*     
*OBS 2: O banco foi criado com Autenticação do Windows, por isso não é necessário ID e Senha.*
