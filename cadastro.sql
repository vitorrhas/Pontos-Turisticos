USE [turismo]
GO

/****** Object:  Table [dbo].[Cadastro]    Script Date: 21/11/2021 22:33:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cadastro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[uf] [varchar](50) NOT NULL,
	[cidade] [varchar](50) NOT NULL,
	[referencia] [varchar](200) NULL,
	[descr] [varchar](250) NULL,
 CONSTRAINT [PK_Cadastro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

