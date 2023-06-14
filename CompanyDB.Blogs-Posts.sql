CREATE TABLE [Blogs] (
    [ID] int NOT NULL IDENTITY,
    [Blog_Name] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Blogs] PRIMARY KEY ([ID]));

--https://learn.microsoft.com/en-in/ef/core/managing-schemas/scaffolding/?tabs=vs#:~:text=PRIMARY%20KEY%20(%5BID%5D))%3B%0A%0ACREATE%20TABLE%20%5B-,posts,-%5D%20(%0A%20%20%20%20%5Bid%5D%20int%20NOT%20NULL%20IDENTITY%2C%0A%20%20%20%20%5BpostTitle
CREATE TABLE [Posts] (
    [id] int NOT NULL IDENTITY,
    [postTitle] nvarchar(max) NOT NULL,
    [post content] nvarchar(max) NOT NULL,
    [1 PublishedON] datetime2 NOT NULL,
    [2 DeletedON] datetime2 NULL,
    [BlogID] int NOT NULL,
    CONSTRAINT [PK_Posts] PRIMARY KEY ([id]),
    CONSTRAINT [FK_Posts_Blogs_BlogId] FOREIGN KEY ([BlogID]) REFERENCES [Blogs] ([ID]) ON DELETE CASCADE);
