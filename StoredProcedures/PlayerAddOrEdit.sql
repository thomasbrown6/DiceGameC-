USE [craps_game_db]
GO
/****** Object:  StoredProcedure [dbo].[PlayerAddOrEdit]    Script Date: 10/2/2018 8:23:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[PlayerAddOrEdit]
	@mode nvarchar(10),
	@player_id int,
	@name nvarchar(50)
AS
	If @mode='Add'
	BEGIN

	INSERT INTO Player
	([name]) VALUES (@name)

	END
	ELSE IF @mode='Edit'
	BEGIN
	UPDATE Player
	SET 
	[name]=@name
	WHERE
	[player_id]=@player_id
	END