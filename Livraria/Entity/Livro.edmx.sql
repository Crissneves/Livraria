
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/28/2019 21:08:54
-- Generated from EDMX file: C:\Users\ntr9\Documents\Visual Studio 2013\Projects\Livraria\Livraria\Entity\Livro.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Livraria];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AutorLivro]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LivroSet] DROP CONSTRAINT [FK_AutorLivro];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[LivroSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LivroSet];
GO
IF OBJECT_ID(N'[dbo].[AutorSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AutorSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Livro'
CREATE TABLE [dbo].[Livro] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ISBN] int  NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Preco] decimal(18,0)  NOT NULL,
    [DataPublicacao] datetime  NOT NULL,
    [ImagemCapa] varbinary(max)  NOT NULL,
    [IdAutor] int  NOT NULL,
    [Autor_Id] int  NOT NULL
);
GO

-- Creating table 'AutorSet'
CREATE TABLE [dbo].[AutorSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Livro'
ALTER TABLE [dbo].[Livro]
ADD CONSTRAINT [PK_Livro]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AutorSet'
ALTER TABLE [dbo].[AutorSet]
ADD CONSTRAINT [PK_AutorSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Autor_Id] in table 'Livro'
ALTER TABLE [dbo].[Livro]
ADD CONSTRAINT [FK_AutorLivro]
    FOREIGN KEY ([Autor_Id])
    REFERENCES [dbo].[AutorSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AutorLivro'
CREATE INDEX [IX_FK_AutorLivro]
ON [dbo].[Livro]
    ([Autor_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------