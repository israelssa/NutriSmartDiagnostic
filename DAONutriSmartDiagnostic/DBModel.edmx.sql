
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 10/14/2013 12:53:21
-- Generated from EDMX file: C:\Users\israel.queiroz\Documents\Visual Studio 2010\Projects\NutriSmartDiagnostic\DAONutriSmartDiagnostic\DBModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DBNutriSmartDiagnostics];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AparelhoGastroIntestinal_Paciente]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AparelhoGastroIntestinal] DROP CONSTRAINT [FK_AparelhoGastroIntestinal_Paciente];
GO
IF OBJECT_ID(N'[dbo].[FK_AparelhoGastroIntestinal_Paciente1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AparelhoGastroIntestinal] DROP CONSTRAINT [FK_AparelhoGastroIntestinal_Paciente1];
GO
IF OBJECT_ID(N'[dbo].[FK_Consulta_Nutricionista]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consulta] DROP CONSTRAINT [FK_Consulta_Nutricionista];
GO
IF OBJECT_ID(N'[dbo].[FK_Consulta_Paciente]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Consulta] DROP CONSTRAINT [FK_Consulta_Paciente];
GO
IF OBJECT_ID(N'[dbo].[FK_EntrevistaPaciente_Nutricionista]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EntrevistaPaciente] DROP CONSTRAINT [FK_EntrevistaPaciente_Nutricionista];
GO
IF OBJECT_ID(N'[dbo].[FK_EntrevistaPaciente_Paciente]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EntrevistaPaciente] DROP CONSTRAINT [FK_EntrevistaPaciente_Paciente];
GO
IF OBJECT_ID(N'[dbo].[FK_HistoricoClinico_Nutricionista]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HistoricoClinico] DROP CONSTRAINT [FK_HistoricoClinico_Nutricionista];
GO
IF OBJECT_ID(N'[dbo].[FK_HistoricoClinico_Paciente]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HistoricoClinico] DROP CONSTRAINT [FK_HistoricoClinico_Paciente];
GO
IF OBJECT_ID(N'[dbo].[FK_MedidasAntropometricas_Consulta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MedidasAntropometricas] DROP CONSTRAINT [FK_MedidasAntropometricas_Consulta];
GO
IF OBJECT_ID(N'[dbo].[FK_Nutricionista_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Nutricionista] DROP CONSTRAINT [FK_Nutricionista_Usuario];
GO
IF OBJECT_ID(N'[dbo].[FK_Paciente_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Paciente] DROP CONSTRAINT [FK_Paciente_Usuario];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AparelhoGastroIntestinal]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AparelhoGastroIntestinal];
GO
IF OBJECT_ID(N'[dbo].[Consulta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Consulta];
GO
IF OBJECT_ID(N'[dbo].[EntrevistaPaciente]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EntrevistaPaciente];
GO
IF OBJECT_ID(N'[dbo].[HistoricoClinico]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HistoricoClinico];
GO
IF OBJECT_ID(N'[dbo].[MedidasAntropometricas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MedidasAntropometricas];
GO
IF OBJECT_ID(N'[dbo].[Nutricionista]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Nutricionista];
GO
IF OBJECT_ID(N'[dbo].[Paciente]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Paciente];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Usuario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuario];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AparelhoGastroIntestinal'
CREATE TABLE [dbo].[AparelhoGastroIntestinal] (
    [idGastroIntestinal] int IDENTITY(1,1) NOT NULL,
    [idPaciente] int  NULL,
    [idNutricionista] int  NULL,
    [Disfagia] bit  NULL,
    [DisfagiaAlimento] varchar(100)  NULL,
    [DisfagiaTipo] varchar(50)  NULL,
    [Odinofagia] bit  NULL,
    [Dispepsia] bit  NULL,
    [Epigastragia] bit  NULL,
    [Regurgitacao] bit  NULL,
    [Pirose] bit  NULL,
    [Náuseas] bit  NULL,
    [Vomitos] bit  NULL,
    [Vomitos_Horario] varchar(10)  NULL,
    [Caracteristicas_Vomitos] varchar(10)  NULL,
    [DorAbdominal] bit  NULL,
    [LocalDorAbdominal] varchar(70)  NULL,
    [CaracteristicasDorAbdominal] varchar(80)  NULL,
    [RitmoIntestinal] varchar(50)  NULL,
    [AspectoFeses] varchar(50)  NULL,
    [CorFeses] varchar(20)  NULL,
    [DensidadeFeses] varchar(30)  NULL,
    [DorFeses] bit  NULL,
    [SangueFeses] bit  NULL,
    [UsoDeMedicamentos] varchar(100)  NULL
);
GO

-- Creating table 'Consulta'
CREATE TABLE [dbo].[Consulta] (
    [idConsulta] int IDENTITY(1,1) NOT NULL,
    [idPaciente] int  NOT NULL,
    [idNutricionista] int  NOT NULL,
    [Data] datetime  NULL,
    [Observacao] varchar(max)  NULL
);
GO

-- Creating table 'EntrevistaPaciente'
CREATE TABLE [dbo].[EntrevistaPaciente] (
    [idEntrevistaPaciente] int IDENTITY(1,1) NOT NULL,
    [idPaciente] int  NOT NULL,
    [idNutricionista] int  NOT NULL,
    [AlimentosNaoGosta] varchar(200)  NULL,
    [AlimentosGosta] varchar(200)  NULL,
    [SonoHoras] varchar(10)  NULL,
    [Etilismo] varchar(20)  NULL,
    [Tabagistmo] varchar(20)  NULL
);
GO

-- Creating table 'HistoricoClinico'
CREATE TABLE [dbo].[HistoricoClinico] (
    [idHistoricoClinico] int IDENTITY(1,1) NOT NULL,
    [idPaciente] int  NOT NULL,
    [idNutricionista] int  NOT NULL,
    [Historico] varchar(max)  NULL,
    [Patologias] varchar(300)  NULL,
    [Cirurgias] varchar(200)  NULL,
    [Observacoes] varchar(max)  NULL
);
GO

-- Creating table 'MedidasAntropometricas'
CREATE TABLE [dbo].[MedidasAntropometricas] (
    [idMedidasAntropometricas] int IDENTITY(1,1) NOT NULL,
    [idConsulta] int  NULL,
    [PesoAtual] decimal(3,0)  NULL,
    [PesoDesejado] decimal(3,0)  NULL,
    [PesoHabitual] decimal(3,0)  NULL,
    [Altura] decimal(3,0)  NULL,
    [PressaoArterial] varchar(8)  NULL,
    [Triceps] decimal(3,0)  NULL,
    [Subescapular] decimal(3,0)  NULL,
    [Biceps] decimal(3,0)  NULL,
    [Coxa] decimal(3,0)  NULL,
    [SupraIliaca] decimal(3,0)  NULL,
    [Abdomen] decimal(3,0)  NULL,
    [Punho] decimal(3,0)  NULL,
    [Braco] decimal(3,0)  NULL,
    [Abdominal] decimal(3,0)  NULL,
    [Cintura] decimal(3,0)  NULL,
    [Quadril] decimal(3,0)  NULL,
    [PercentualGordura] decimal(3,0)  NULL,
    [PesoMagro] decimal(3,0)  NULL,
    [PesoGordo] decimal(3,0)  NULL,
    [PesoMuscular] decimal(3,0)  NULL,
    [TotalAgua] decimal(3,0)  NULL
);
GO

-- Creating table 'Nutricionista'
CREATE TABLE [dbo].[Nutricionista] (
    [idNutricionista] int IDENTITY(1,1) NOT NULL,
    [Nome] varchar(150)  NULL,
    [CRN] varchar(15)  NULL,
    [idUsuario] int  NULL
);
GO

-- Creating table 'Paciente'
CREATE TABLE [dbo].[Paciente] (
    [idPaciente] int IDENTITY(1,1) NOT NULL,
    [Nome] varchar(80)  NOT NULL,
    [Email] varchar(60)  NULL,
    [Tel1] varchar(20)  NULL,
    [Tel2] varchar(20)  NULL,
    [Tel3] varchar(20)  NULL,
    [Sexo] char(2)  NULL,
    [DataNasc] datetime  NULL,
    [Profissao] varchar(50)  NULL,
    [Jornada] varchar(10)  NULL,
    [CondicaoTrabalho] varchar(10)  NULL,
    [idUsuario] int  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Usuario'
CREATE TABLE [dbo].[Usuario] (
    [idUsuario] int IDENTITY(1,1) NOT NULL,
    [Login] varchar(50)  NULL,
    [Senha] varchar(20)  NULL,
    [Ativo] bit  NULL,
    [Tipo] bit  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [idGastroIntestinal] in table 'AparelhoGastroIntestinal'
ALTER TABLE [dbo].[AparelhoGastroIntestinal]
ADD CONSTRAINT [PK_AparelhoGastroIntestinal]
    PRIMARY KEY CLUSTERED ([idGastroIntestinal] ASC);
GO

-- Creating primary key on [idConsulta] in table 'Consulta'
ALTER TABLE [dbo].[Consulta]
ADD CONSTRAINT [PK_Consulta]
    PRIMARY KEY CLUSTERED ([idConsulta] ASC);
GO

-- Creating primary key on [idEntrevistaPaciente] in table 'EntrevistaPaciente'
ALTER TABLE [dbo].[EntrevistaPaciente]
ADD CONSTRAINT [PK_EntrevistaPaciente]
    PRIMARY KEY CLUSTERED ([idEntrevistaPaciente] ASC);
GO

-- Creating primary key on [idHistoricoClinico] in table 'HistoricoClinico'
ALTER TABLE [dbo].[HistoricoClinico]
ADD CONSTRAINT [PK_HistoricoClinico]
    PRIMARY KEY CLUSTERED ([idHistoricoClinico] ASC);
GO

-- Creating primary key on [idMedidasAntropometricas] in table 'MedidasAntropometricas'
ALTER TABLE [dbo].[MedidasAntropometricas]
ADD CONSTRAINT [PK_MedidasAntropometricas]
    PRIMARY KEY CLUSTERED ([idMedidasAntropometricas] ASC);
GO

-- Creating primary key on [idNutricionista] in table 'Nutricionista'
ALTER TABLE [dbo].[Nutricionista]
ADD CONSTRAINT [PK_Nutricionista]
    PRIMARY KEY CLUSTERED ([idNutricionista] ASC);
GO

-- Creating primary key on [idPaciente] in table 'Paciente'
ALTER TABLE [dbo].[Paciente]
ADD CONSTRAINT [PK_Paciente]
    PRIMARY KEY CLUSTERED ([idPaciente] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [idUsuario] in table 'Usuario'
ALTER TABLE [dbo].[Usuario]
ADD CONSTRAINT [PK_Usuario]
    PRIMARY KEY CLUSTERED ([idUsuario] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [idNutricionista] in table 'AparelhoGastroIntestinal'
ALTER TABLE [dbo].[AparelhoGastroIntestinal]
ADD CONSTRAINT [FK_AparelhoGastroIntestinal_Paciente]
    FOREIGN KEY ([idNutricionista])
    REFERENCES [dbo].[Nutricionista]
        ([idNutricionista])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AparelhoGastroIntestinal_Paciente'
CREATE INDEX [IX_FK_AparelhoGastroIntestinal_Paciente]
ON [dbo].[AparelhoGastroIntestinal]
    ([idNutricionista]);
GO

-- Creating foreign key on [idPaciente] in table 'AparelhoGastroIntestinal'
ALTER TABLE [dbo].[AparelhoGastroIntestinal]
ADD CONSTRAINT [FK_AparelhoGastroIntestinal_Paciente1]
    FOREIGN KEY ([idPaciente])
    REFERENCES [dbo].[Paciente]
        ([idPaciente])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AparelhoGastroIntestinal_Paciente1'
CREATE INDEX [IX_FK_AparelhoGastroIntestinal_Paciente1]
ON [dbo].[AparelhoGastroIntestinal]
    ([idPaciente]);
GO

-- Creating foreign key on [idNutricionista] in table 'Consulta'
ALTER TABLE [dbo].[Consulta]
ADD CONSTRAINT [FK_Consulta_Nutricionista]
    FOREIGN KEY ([idNutricionista])
    REFERENCES [dbo].[Nutricionista]
        ([idNutricionista])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consulta_Nutricionista'
CREATE INDEX [IX_FK_Consulta_Nutricionista]
ON [dbo].[Consulta]
    ([idNutricionista]);
GO

-- Creating foreign key on [idPaciente] in table 'Consulta'
ALTER TABLE [dbo].[Consulta]
ADD CONSTRAINT [FK_Consulta_Paciente]
    FOREIGN KEY ([idPaciente])
    REFERENCES [dbo].[Paciente]
        ([idPaciente])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Consulta_Paciente'
CREATE INDEX [IX_FK_Consulta_Paciente]
ON [dbo].[Consulta]
    ([idPaciente]);
GO

-- Creating foreign key on [idConsulta] in table 'MedidasAntropometricas'
ALTER TABLE [dbo].[MedidasAntropometricas]
ADD CONSTRAINT [FK_MedidasAntropometricas_Consulta]
    FOREIGN KEY ([idConsulta])
    REFERENCES [dbo].[Consulta]
        ([idConsulta])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MedidasAntropometricas_Consulta'
CREATE INDEX [IX_FK_MedidasAntropometricas_Consulta]
ON [dbo].[MedidasAntropometricas]
    ([idConsulta]);
GO

-- Creating foreign key on [idNutricionista] in table 'EntrevistaPaciente'
ALTER TABLE [dbo].[EntrevistaPaciente]
ADD CONSTRAINT [FK_EntrevistaPaciente_Nutricionista]
    FOREIGN KEY ([idNutricionista])
    REFERENCES [dbo].[Nutricionista]
        ([idNutricionista])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EntrevistaPaciente_Nutricionista'
CREATE INDEX [IX_FK_EntrevistaPaciente_Nutricionista]
ON [dbo].[EntrevistaPaciente]
    ([idNutricionista]);
GO

-- Creating foreign key on [idPaciente] in table 'EntrevistaPaciente'
ALTER TABLE [dbo].[EntrevistaPaciente]
ADD CONSTRAINT [FK_EntrevistaPaciente_Paciente]
    FOREIGN KEY ([idPaciente])
    REFERENCES [dbo].[Paciente]
        ([idPaciente])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EntrevistaPaciente_Paciente'
CREATE INDEX [IX_FK_EntrevistaPaciente_Paciente]
ON [dbo].[EntrevistaPaciente]
    ([idPaciente]);
GO

-- Creating foreign key on [idNutricionista] in table 'HistoricoClinico'
ALTER TABLE [dbo].[HistoricoClinico]
ADD CONSTRAINT [FK_HistoricoClinico_Nutricionista]
    FOREIGN KEY ([idNutricionista])
    REFERENCES [dbo].[Nutricionista]
        ([idNutricionista])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_HistoricoClinico_Nutricionista'
CREATE INDEX [IX_FK_HistoricoClinico_Nutricionista]
ON [dbo].[HistoricoClinico]
    ([idNutricionista]);
GO

-- Creating foreign key on [idPaciente] in table 'HistoricoClinico'
ALTER TABLE [dbo].[HistoricoClinico]
ADD CONSTRAINT [FK_HistoricoClinico_Paciente]
    FOREIGN KEY ([idPaciente])
    REFERENCES [dbo].[Paciente]
        ([idPaciente])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_HistoricoClinico_Paciente'
CREATE INDEX [IX_FK_HistoricoClinico_Paciente]
ON [dbo].[HistoricoClinico]
    ([idPaciente]);
GO

-- Creating foreign key on [idUsuario] in table 'Nutricionista'
ALTER TABLE [dbo].[Nutricionista]
ADD CONSTRAINT [FK_Nutricionista_Usuario]
    FOREIGN KEY ([idUsuario])
    REFERENCES [dbo].[Usuario]
        ([idUsuario])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Nutricionista_Usuario'
CREATE INDEX [IX_FK_Nutricionista_Usuario]
ON [dbo].[Nutricionista]
    ([idUsuario]);
GO

-- Creating foreign key on [idUsuario] in table 'Paciente'
ALTER TABLE [dbo].[Paciente]
ADD CONSTRAINT [FK_Paciente_Usuario]
    FOREIGN KEY ([idUsuario])
    REFERENCES [dbo].[Usuario]
        ([idUsuario])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Paciente_Usuario'
CREATE INDEX [IX_FK_Paciente_Usuario]
ON [dbo].[Paciente]
    ([idUsuario]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------