USE [craps_game_db]
GO
/****** Object:  StoredProcedure [dbo].[DeleteGameData]    Script Date: 10/2/2018 8:20:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[DeleteGameData]
@player_id int
AS
	DELETE Game
	WHERE [player_id]=@player_id